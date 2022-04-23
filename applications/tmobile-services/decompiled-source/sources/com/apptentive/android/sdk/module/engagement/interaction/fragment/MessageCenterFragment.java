package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.ApptentiveViewActivity;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener;
import com.apptentive.android.sdk.module.messagecenter.model.ContextMessage;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterStatus;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil;
import com.apptentive.android.sdk.module.messagecenter.model.WhoCard;
import com.apptentive.android.sdk.module.messagecenter.view.AttachmentPreviewDialog;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerView;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder;
import com.apptentive.android.sdk.util.AnimationUtil;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageGridViewAdapter;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment.class */
public class MessageCenterFragment extends ApptentiveBaseFragment<MessageCenterInteraction> implements OnListviewItemActionListener, MessageManager.AfterSendMessageListener, MessageManager.OnNewIncomingMessagesListener, MenuItem.OnMenuItemClickListener, AbsListView.OnScrollListener, ImageGridViewAdapter.Callback {
    private MessageComposerHolder composer;
    @Nullable
    private EditText composerEditText;
    private Parcelable composingViewSavedState;
    private View fab;
    private int fabPaddingPixels;
    private boolean forceShowKeyboard;
    private WeakReference<Activity> hostingActivityRef;
    private int listViewSavedTopOffset;
    private MessageCenterRecyclerView messageCenterRecyclerView;
    @Nullable
    private MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter;
    private MessagingActionHandler messagingActionHandler;
    private String pendingWhoCardAvatarFile;
    @Nullable
    private Parcelable pendingWhoCardEmail;
    private boolean pendingWhoCardMode;
    @Nullable
    private Parcelable pendingWhoCardName;
    private MenuItem profileMenuItem;
    @Nullable
    private EditText whoCardEmailEditText;
    @Nullable
    private EditText whoCardNameEditText;
    private boolean bShowProfileMenuItem = true;
    private ArrayList<MessageCenterListItem> listItems = new ArrayList<>();
    private boolean imagePickerStillOpen = false;
    private ArrayList<ImageItem> pendingAttachments = new ArrayList<>();
    private boolean isPaused = false;
    private int unsentMessagesCount = 0;
    private int listViewSavedTopIndex = -1;
    Set<String> dateStampsSeen = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$FetchCallback.class */
    public interface FetchCallback {
        void onFetchFinish(@Nullable List<MessageCenterListItem> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterFragment$MessagingActionHandler.class */
    public static class MessagingActionHandler extends Handler {
        private final WeakReference messageCenterFragmentWeakReference;

        public MessagingActionHandler(MessageCenterFragment messageCenterFragment) {
            this.messageCenterFragmentWeakReference = new WeakReference(messageCenterFragment);
        }

        private void sendMessage(final ApptentiveMessage apptentiveMessage) {
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.MessagingActionHandler.1
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    conversation.getMessageManager().sendMessage(apptentiveMessage);
                    return true;
                }
            }, "send message");
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ApptentiveMessage apptentiveMessage;
            String nonce;
            String nonce2;
            MessageCenterListItem messageCenterListItem;
            Double createdAt;
            MessageCenterStatus regularStatus;
            MessageCenterFragment messageCenterFragment = (MessageCenterFragment) this.messageCenterFragmentWeakReference.get();
            if (!(messageCenterFragment == null || messageCenterFragment.messageCenterRecyclerViewAdapter == null)) {
                int i = message.what;
                ContextMessage contextMessage = null;
                MessageCenterStatus messageCenterStatus = null;
                boolean z = false;
                int i2 = 0;
                switch (i) {
                    case 1:
                        messageCenterFragment.messageCenterRecyclerView.setSelection(messageCenterFragment.listItems.size() - 1);
                        messageCenterFragment.messageCenterRecyclerView.scrollToPosition(messageCenterFragment.listItems.size() - 1);
                        return;
                    case 2:
                        messageCenterFragment.messageCenterRecyclerView.setSelectionFromTop(message.arg1, message.arg2);
                        return;
                    case 3:
                        MessageCenterFragment.access$910(messageCenterFragment);
                        ApptentiveMessage apptentiveMessage2 = (ApptentiveMessage) message.obj;
                        int i3 = 0;
                        while (true) {
                            if (i3 < messageCenterFragment.listItems.size()) {
                                MessageCenterListItem messageCenterListItem2 = (MessageCenterListItem) messageCenterFragment.listItems.get(i3);
                                if (!(messageCenterListItem2 instanceof ApptentiveMessage) || (nonce = (apptentiveMessage = (ApptentiveMessage) messageCenterListItem2).getNonce()) == null || (nonce2 = apptentiveMessage2.getNonce()) == null || !nonce.equals(nonce2)) {
                                    i3++;
                                } else {
                                    apptentiveMessage.setCreatedAt(apptentiveMessage2.getCreatedAt());
                                    messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemChanged(i3);
                                }
                            }
                        }
                        messageCenterFragment.updateMessageSentStates();
                        messageCenterFragment.addExpectationStatusIfNeeded();
                        int firstVisiblePosition = messageCenterFragment.messageCenterRecyclerView.getFirstVisiblePosition();
                        View childAt = messageCenterFragment.messageCenterRecyclerView.getChildAt(0);
                        if (childAt != null) {
                            i2 = childAt.getTop();
                        }
                        if (messageCenterFragment.recyclerViewContainsItemOfType(8)) {
                            sendEmptyMessageDelayed(1, 200L);
                            return;
                        } else {
                            sendMessageDelayed(obtainMessage(2, firstVisiblePosition, i2), 200L);
                            return;
                        }
                    case 4:
                        CompoundMessage compoundMessage = (CompoundMessage) message.obj;
                        messageCenterFragment.listItems.add(compoundMessage);
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                        MessageCenterFragment.access$908(messageCenterFragment);
                        messageCenterFragment.setPaused(false);
                        sendMessage(compoundMessage);
                        if (!messageCenterFragment.wasWhoCardAsPreviouslyDisplayed() && ((MessageCenterInteraction) messageCenterFragment.interaction).getWhoCardRequestEnabled()) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("required", ((MessageCenterInteraction) messageCenterFragment.interaction).getWhoCardRequired());
                                jSONObject.put("trigger", "automatic");
                            } catch (JSONException e) {
                                ApptentiveBaseFragment.logException(e);
                            }
                            messageCenterFragment.engageInternal("profile_open", jSONObject.toString());
                            messageCenterFragment.forceShowKeyboard = true;
                            messageCenterFragment.addWhoCard(true);
                            return;
                        }
                        return;
                    case 5:
                        if (!messageCenterFragment.isPaused()) {
                            messageCenterFragment.setPaused(true);
                            if (messageCenterFragment.unsentMessagesCount > 0) {
                                messageCenterFragment.messagingActionHandler.sendMessage(messageCenterFragment.messagingActionHandler.obtainMessage(17, message.arg1, 0));
                                return;
                            }
                            return;
                        }
                        return;
                    case 6:
                        if (messageCenterFragment.isPaused()) {
                            messageCenterFragment.setPaused(false);
                            if (messageCenterFragment.unsentMessagesCount > 0) {
                                messageCenterFragment.messagingActionHandler.sendEmptyMessage(12);
                                return;
                            }
                            return;
                        }
                        return;
                    case 7:
                        messageCenterFragment.displayNewIncomingMessageItem((ApptentiveMessage) message.obj);
                        return;
                    case 8:
                        if (message.arg1 == 0) {
                            z = true;
                        }
                        WhoCard whoCard = ((MessageCenterInteraction) messageCenterFragment.interaction).getWhoCard();
                        whoCard.setInitial(z);
                        messageCenterFragment.listItems.add(whoCard);
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                        messageCenterFragment.messageCenterRecyclerView.setSelection(messageCenterFragment.listItems.size() - 1);
                        return;
                    case 9:
                        messageCenterFragment.engageInternal("compose_open");
                        messageCenterFragment.listItems.add(((MessageCenterInteraction) messageCenterFragment.interaction).getComposer());
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                        messageCenterFragment.messageCenterRecyclerView.setSelection(messageCenterFragment.listItems.size() - 1);
                        return;
                    case 10:
                        ListIterator listIterator = messageCenterFragment.listItems.listIterator();
                        while (true) {
                            if (listIterator.hasNext()) {
                                int nextIndex = listIterator.nextIndex();
                                MessageCenterListItem messageCenterListItem3 = (MessageCenterListItem) listIterator.next();
                                if (messageCenterListItem3.getListItemType() == 3) {
                                    contextMessage = (ContextMessage) messageCenterListItem3;
                                    listIterator.remove();
                                    messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemRemoved(nextIndex);
                                }
                            }
                        }
                        if (contextMessage != null) {
                            CompoundMessage compoundMessage2 = new CompoundMessage();
                            compoundMessage2.setBody(contextMessage.getBody());
                            compoundMessage2.setAutomated(true);
                            compoundMessage2.setRead(true);
                            MessageCenterFragment.access$908(messageCenterFragment);
                            messageCenterFragment.listItems.add(compoundMessage2);
                            messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                            sendMessage(compoundMessage2);
                            return;
                        }
                        return;
                    case 11:
                        break;
                    case 12:
                        ArrayList arrayList = messageCenterFragment.listItems;
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            if (((MessageCenterListItem) arrayList.get(i4)).getListItemType() == 2) {
                                arrayList.remove(i4);
                                messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemRemoved(i4);
                            }
                        }
                        return;
                    case 13:
                        ArrayList arrayList2 = messageCenterFragment.listItems;
                        if (arrayList2.size() > 0 && (messageCenterListItem = (MessageCenterListItem) arrayList2.get(arrayList2.size() - 1)) != null && messageCenterListItem.getListItemType() == 5) {
                            ApptentiveMessage apptentiveMessage3 = (ApptentiveMessage) messageCenterListItem;
                            if (apptentiveMessage3.isOutgoingMessage() && (createdAt = apptentiveMessage3.getCreatedAt()) != null && createdAt.doubleValue() > Double.MIN_VALUE && (regularStatus = ((MessageCenterInteraction) messageCenterFragment.interaction).getRegularStatus()) != null) {
                                messageCenterFragment.engageInternal("status");
                                arrayList2.add(regularStatus);
                                messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(arrayList2.size() - 1);
                                return;
                            }
                            return;
                        }
                        return;
                    case 14:
                        ListIterator listIterator2 = messageCenterFragment.listItems.listIterator();
                        while (listIterator2.hasNext()) {
                            int nextIndex2 = listIterator2.nextIndex();
                            if (((MessageCenterListItem) listIterator2.next()).getListItemType() == 8) {
                                listIterator2.remove();
                                messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemRemoved(nextIndex2);
                            }
                        }
                        return;
                    case 15:
                        messageCenterFragment.listItems.add((ContextMessage) message.obj);
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                        return;
                    case 16:
                        messageCenterFragment.listItems.add(0, ((MessageCenterInteraction) messageCenterFragment.interaction).getGreeting());
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(0);
                        return;
                    case 17:
                        int i5 = message.arg1;
                        if (i5 == MessageManager.SEND_PAUSE_REASON_NETWORK) {
                            messageCenterStatus = ((MessageCenterInteraction) messageCenterFragment.interaction).getErrorStatusNetwork();
                            messageCenterFragment.engageInternal("message_network_error");
                        } else if (i5 == MessageManager.SEND_PAUSE_REASON_SERVER) {
                            messageCenterStatus = ((MessageCenterInteraction) messageCenterFragment.interaction).getErrorStatusServer();
                            messageCenterFragment.engageInternal("message_http_error");
                        }
                        if (messageCenterStatus != null) {
                            messageCenterFragment.engageInternal("status");
                            messageCenterFragment.listItems.add(messageCenterStatus);
                            messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemInserted(messageCenterFragment.listItems.size() - 1);
                            return;
                        }
                        return;
                    case 18:
                        int i6 = message.arg1;
                        messageCenterFragment.pendingAttachments.remove(i6);
                        messageCenterFragment.messageCenterRecyclerViewAdapter.removeImageFromComposer(messageCenterFragment.composer, i6);
                        return;
                    default:
                        return;
                }
                for (int i7 = 0; i7 < messageCenterFragment.listItems.size(); i7++) {
                    if (((MessageCenterListItem) messageCenterFragment.listItems.get(i7)).getListItemType() == 7) {
                        messageCenterFragment.listItems.remove(i7);
                        messageCenterFragment.messageCenterRecyclerViewAdapter.notifyItemRemoved(i7);
                    }
                }
            }
        }
    }

    static /* synthetic */ int access$908(MessageCenterFragment messageCenterFragment) {
        int i = messageCenterFragment.unsentMessagesCount;
        messageCenterFragment.unsentMessagesCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$910(MessageCenterFragment messageCenterFragment) {
        int i = messageCenterFragment.unsentMessagesCount;
        messageCenterFragment.unsentMessagesCount = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExpectationStatusIfNeeded() {
        this.messagingActionHandler.sendEmptyMessage(12);
        this.messagingActionHandler.sendEmptyMessage(13);
    }

    private int calculateFabPadding(Context context) {
        Resources resources = context.getResources();
        return (int) ((resources.getDimension(C0726R.dimen.apptentive_message_center_bottom_padding) * resources.getDisplayMetrics().density) + 0.5f);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkAddWhoCardIfRequired() {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.wasWhoCardAsPreviouslyDisplayed()
            r5 = r0
            r0 = r4
            T extends com.apptentive.android.sdk.module.engagement.interaction.model.Interaction r0 = r0.interaction
            com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction r0 = (com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction) r0
            boolean r0 = r0.getWhoCardRequestEnabled()
            if (r0 == 0) goto L_0x0048
            r0 = r4
            T extends com.apptentive.android.sdk.module.engagement.interaction.model.Interaction r0 = r0.interaction
            com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction r0 = (com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction) r0
            boolean r0 = r0.getWhoCardRequired()
            if (r0 == 0) goto L_0x0048
            r0 = r5
            if (r0 != 0) goto L_0x0032
            r0 = r4
            r1 = 1
            r0.forceShowKeyboard = r1
            r0 = r4
            r1 = 1
            r0.addWhoCard(r1)
        L_0x002d:
            r0 = 1
            r6 = r0
            goto L_0x004a
        L_0x0032:
            java.lang.String r0 = com.apptentive.android.sdk.Apptentive.getPersonEmail()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0048
            r0 = r4
            r1 = 1
            r0.forceShowKeyboard = r1
            r0 = r4
            r1 = 0
            r0.addWhoCard(r1)
            goto L_0x002d
        L_0x0048:
            r0 = 0
            r6 = r0
        L_0x004a:
            r0 = r6
            if (r0 == 0) goto L_0x0087
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "required"
            r2 = r4
            T extends com.apptentive.android.sdk.module.engagement.interaction.model.Interaction r2 = r2.interaction     // Catch: JSONException -> 0x0073
            com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction r2 = (com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction) r2     // Catch: JSONException -> 0x0073
            boolean r2 = r2.getWhoCardRequired()     // Catch: JSONException -> 0x0073
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: JSONException -> 0x0073
            r0 = r7
            java.lang.String r1 = "trigger"
            java.lang.String r2 = "automatic"
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: JSONException -> 0x0073
            goto L_0x007a
        L_0x0073:
            r8 = move-exception
            r0 = r8
            com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment.logException(r0)
        L_0x007a:
            r0 = r4
            java.lang.String r1 = "profile_open"
            r2 = r7
            java.lang.String r2 = r2.toString()
            r0.engageInternal(r1, r2)
            r0 = 1
            return r0
        L_0x0087:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.checkAddWhoCardIfRequired():boolean");
    }

    private void fetchMessages(final FetchCallback fetchCallback) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.2
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                final List<MessageCenterListItem> messageCenterListItems = conversation.getMessageManager().getMessageCenterListItems();
                MessageCenterFragment.this.dispatchOnMainQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.2.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        fetchCallback.onFetchFinish(messageCenterListItems);
                    }
                });
                return true;
            }
        }, "prepare messages");
    }

    private void hideFab() {
        if (this.fab.getVisibility() != 8) {
            this.fab.setEnabled(false);
            AnimationUtil.scaleFadeOutGone(this.fab);
        }
    }

    private void hideProfileButton() {
        this.bShowProfileMenuItem = false;
        updateMenuVisibility();
    }

    public static MessageCenterFragment newInstance(Bundle bundle) {
        MessageCenterFragment messageCenterFragment = new MessageCenterFragment();
        messageCenterFragment.setArguments(bundle);
        return messageCenterFragment;
    }

    private void prepareMessages(List<MessageCenterListItem> list) {
        Assert.assertMainThread();
        this.listItems.clear();
        this.unsentMessagesCount = 0;
        for (MessageCenterListItem messageCenterListItem : list) {
            if (messageCenterListItem instanceof ApptentiveMessage) {
                ApptentiveMessage apptentiveMessage = (ApptentiveMessage) messageCenterListItem;
                Double createdAt = apptentiveMessage.getCreatedAt();
                if (apptentiveMessage.isOutgoingMessage() && createdAt == null) {
                    this.unsentMessagesCount++;
                }
                ListIterator<MessageCenterListItem> listIterator = this.listItems.listIterator();
                ApptentiveMessage apptentiveMessage2 = null;
                while (true) {
                    if (!listIterator.hasNext()) {
                        break;
                    }
                    ApptentiveMessage apptentiveMessage3 = (ApptentiveMessage) listIterator.next();
                    Double createdAt2 = apptentiveMessage3.getCreatedAt();
                    apptentiveMessage2 = apptentiveMessage3;
                    if (createdAt != null) {
                        if (createdAt.doubleValue() > Double.MIN_VALUE) {
                            apptentiveMessage2 = apptentiveMessage3;
                            if (createdAt2 == null) {
                                break;
                            }
                            apptentiveMessage2 = apptentiveMessage3;
                            if (createdAt2.doubleValue() > createdAt.doubleValue()) {
                                apptentiveMessage2 = apptentiveMessage3;
                                break;
                            }
                        } else {
                            apptentiveMessage2 = apptentiveMessage3;
                        }
                    }
                }
                if (apptentiveMessage2 == null || apptentiveMessage2.getCreatedAt() == null || createdAt == null || apptentiveMessage2.getCreatedAt().doubleValue() <= createdAt.doubleValue() || createdAt.doubleValue() <= Double.MIN_VALUE) {
                    listIterator.add(messageCenterListItem);
                } else {
                    listIterator.set(messageCenterListItem);
                    listIterator.add(apptentiveMessage2);
                }
            }
        }
        this.messagingActionHandler.sendEmptyMessage(16);
    }

    private Parcelable saveEditTextInstanceState() {
        if (this.composerEditText == null) {
            return null;
        }
        Util.hideSoftKeyboard(this.hostingActivityRef.get(), getView());
        return this.composerEditText.onSaveInstanceState();
    }

    private void setWhoCardAsPreviouslyDisplayed() {
        ConversationProxy conversation = getConversation();
        if (conversation != null) {
            conversation.setMessageCenterWhoCardPreviouslyDisplayed(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setup(View view, boolean z, List<MessageCenterListItem> list) {
        JSONArray jSONArray;
        int i;
        this.fab.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MessageCenterFragment.this.forceShowKeyboard = true;
                MessageCenterFragment.this.addComposingCard();
            }
        }));
        this.messageCenterRecyclerViewAdapter = new MessageCenterRecyclerViewAdapter(this, this, this.interaction, this.listItems);
        boolean z2 = true;
        if (z) {
            prepareMessages(list);
            String contextualMessageBody = ((MessageCenterInteraction) this.interaction).getContextualMessageBody();
            if (contextualMessageBody != null) {
                clearPendingComposingMessage();
                this.messagingActionHandler.sendEmptyMessage(12);
                MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
                messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(15, new ContextMessage(contextualMessageBody)));
                if (!checkAddWhoCardIfRequired()) {
                    this.forceShowKeyboard = false;
                    addComposingCard();
                }
                z2 = false;
            } else if (this.pendingWhoCardName == null && this.pendingWhoCardEmail == null && this.pendingWhoCardAvatarFile == null) {
                if (!checkAddWhoCardIfRequired()) {
                    if (this.listItems.size() == 0) {
                        addComposingCard();
                    } else {
                        addExpectationStatusIfNeeded();
                    }
                }
                z2 = false;
            } else {
                addWhoCard(this.pendingWhoCardMode);
            }
        } else {
            ArrayList<MessageCenterListItem> arrayList = this.listItems;
            if (arrayList != null) {
                Iterator<MessageCenterListItem> it = arrayList.iterator();
                z2 = false;
                while (it.hasNext()) {
                    MessageCenterListItem next = it.next();
                    if (next.getListItemType() == 7 || next.getListItemType() == 8) {
                        z2 = true;
                    }
                }
            }
            z2 = false;
        }
        this.messageCenterRecyclerView.setAdapter(this.messageCenterRecyclerViewAdapter);
        this.fabPaddingPixels = calculateFabPadding(view.getContext());
        if (!z2) {
            showFab();
        }
        ConversationProxy conversation = getConversation();
        if (!(conversation == null || conversation.getMessageCenterPendingAttachments() == null)) {
            try {
                jSONArray = new JSONArray(conversation.getMessageCenterPendingAttachments());
            } catch (JSONException e) {
                e.printStackTrace();
                ApptentiveBaseFragment.logException(e);
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                ArrayList<ImageItem> arrayList2 = this.pendingAttachments;
                if (arrayList2 == null) {
                    this.pendingAttachments = new ArrayList<>();
                    i = 0;
                } else {
                    arrayList2.clear();
                    i = 0;
                }
                while (i < jSONArray.length()) {
                    try {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null) {
                            this.pendingAttachments.add(new ImageItem(jSONObject));
                        }
                    } catch (JSONException e2) {
                        ApptentiveBaseFragment.logException(e2);
                    }
                    i++;
                }
            }
            conversation.setMessageCenterPendingAttachments(null);
        }
        updateMessageSentStates();
    }

    private boolean shouldOpenComposerAfterClosingWhoCard() {
        return ((MessageCenterInteraction) this.interaction).getWhoCard().isRequire() && !recyclerViewContainsItemOfType(5);
    }

    private void showFab() {
        this.messageCenterRecyclerView.setPadding(0, 0, 0, this.fabPaddingPixels);
        if (this.fab.getVisibility() != 0) {
            this.fab.setEnabled(true);
            AnimationUtil.scaleFadeIn(this.fab);
        }
    }

    private void showProfileButton() {
        this.bShowProfileMenuItem = true;
        updateMenuVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wasWhoCardAsPreviouslyDisplayed() {
        ConversationProxy conversation = getConversation();
        if (conversation == null) {
            return false;
        }
        return conversation.isMessageCenterWhoCardPreviouslyDisplayed();
    }

    public void addAttachmentsToComposer(ImageItem... imageItemArr) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (imageItemArr != null && imageItemArr.length > 0) {
            for (ImageItem imageItem : imageItemArr) {
                Iterator<ImageItem> it = this.pendingAttachments.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (imageItem.originalPath.equals(it.next().originalPath)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    this.pendingAttachments.add(imageItem);
                    arrayList.add(imageItem);
                }
            }
        }
        View childAt = this.messageCenterRecyclerView.getChildAt(0);
        if (childAt != null) {
            i = childAt.getTop();
        }
        if (!arrayList.isEmpty()) {
            this.messageCenterRecyclerViewAdapter.addImagestoComposer(this.composer, arrayList);
            this.messageCenterRecyclerViewAdapter.notifyItemChanged(this.listItems.size() - 1);
            int firstVisiblePosition = this.messageCenterRecyclerView.getFirstVisiblePosition();
            MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
            messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(2, firstVisiblePosition, i));
        }
    }

    public void addComposingCard() {
        hideFab();
        hideProfileButton();
        this.messagingActionHandler.removeMessages(8);
        this.messagingActionHandler.removeMessages(9);
        this.messagingActionHandler.sendEmptyMessage(12);
        this.messagingActionHandler.sendEmptyMessage(9);
        this.messagingActionHandler.sendEmptyMessage(1);
    }

    public void addWhoCard(boolean z) {
        hideFab();
        hideProfileButton();
        JSONObject profile = ((MessageCenterInteraction) this.interaction).getProfile();
        if (profile != null) {
            this.pendingWhoCardMode = z;
            this.messagingActionHandler.removeMessages(8);
            this.messagingActionHandler.removeMessages(9);
            this.messagingActionHandler.sendEmptyMessage(12);
            MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
            messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(8, !z ? 1 : 0, 0, profile));
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void afterComposingTextChanged(String str) {
        this.composer.setSendButtonState();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void attachFragmentMenuListeners(Menu menu) {
        MenuItem findItem = menu.findItem(C0726R.C0729id.profile);
        this.profileMenuItem = findItem;
        findItem.setOnMenuItemClickListener(this);
        updateMenuVisibility();
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void beforeComposingTextChanged(CharSequence charSequence) {
    }

    public boolean cleanup() {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.6
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                MessageManager messageManager = conversation.getMessageManager();
                messageManager.clearInternalOnMessagesUpdatedListeners();
                messageManager.setAfterSendMessageListener(null);
                ApptentiveInternal.getInstance().getAndClearCustomData();
                ApptentiveAttachmentLoader.getInstance().clearMemoryCache();
                return true;
            }
        }, "clean up message center fragment");
        return true;
    }

    public void cleanupWhoCard() {
        this.messagingActionHandler.sendEmptyMessage(14);
        Util.hideSoftKeyboard(this.hostingActivityRef.get(), getView());
        this.pendingWhoCardName = null;
        this.pendingWhoCardEmail = null;
        this.pendingWhoCardAvatarFile = null;
        this.pendingWhoCardMode = false;
        this.whoCardNameEditText = null;
        this.whoCardEmailEditText = null;
        addExpectationStatusIfNeeded();
    }

    public void clearPendingComposingMessage() {
        ConversationProxy conversation = getConversation();
        if (conversation != null) {
            conversation.setMessageCenterPendingMessage(null);
            conversation.setMessageCenterPendingAttachments(null);
        }
    }

    protected String createDatestamp(Double d) {
        if (d == null || d.doubleValue() <= Double.MIN_VALUE) {
            return null;
        }
        return DateFormat.getDateInstance(2).format(new Date(Math.round(d.doubleValue() * 1000.0d)));
    }

    public void displayNewIncomingMessageItem(ApptentiveMessage apptentiveMessage) {
        int listItemType;
        this.messagingActionHandler.sendEmptyMessage(12);
        int size = this.listItems.size();
        int size2 = this.listItems.size();
        boolean z = true;
        while (true) {
            size2--;
            if (size2 <= 0 || !((listItemType = this.listItems.get(size2).getListItemType()) == 2 || listItemType == 3 || listItemType == 7 || listItemType == 8)) {
                break;
            }
            size--;
        }
        this.listItems.add(size, apptentiveMessage);
        this.messageCenterRecyclerViewAdapter.notifyItemInserted(size);
        int firstVisiblePosition = this.messageCenterRecyclerView.getFirstVisiblePosition();
        int lastVisiblePosition = this.messageCenterRecyclerView.getLastVisiblePosition();
        int i = 0;
        if (firstVisiblePosition > size || size >= lastVisiblePosition) {
            z = false;
        }
        if (z) {
            View childAt = this.messageCenterRecyclerView.getChildAt(0);
            if (childAt != null) {
                i = childAt.getTop();
            }
            updateMessageSentStates();
            MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
            messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(2, size, i));
            return;
        }
        updateMessageSentStates();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected int getMenuResourceId() {
        return C0726R.C0731menu.apptentive_message_center;
    }

    public Editable getPendingComposingContent() {
        EditText editText = this.composerEditText;
        return editText == null ? null : editText.getText();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public String getToolbarNavigationContentDescription() {
        return getContext().getString(C0726R.string.apptentive_message_center_content_description_back_button);
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri uri;
        if (i2 != -1) {
            return;
        }
        if (i != 10) {
            if (i == 20) {
                onCancelComposing();
            }
        } else if (intent == null) {
            ApptentiveLog.m15646d(ApptentiveLogTag.MESSAGES, "no image is picked", new Object[0]);
        } else {
            this.imagePickerStillOpen = false;
            Activity activity = this.hostingActivityRef.get();
            if (Build.VERSION.SDK_INT < 19) {
                uri = intent.getData();
            } else {
                Uri data = intent.getData();
                uri = data;
                if (activity != null) {
                    activity.getContentResolver().takePersistableUriPermission(data, 3);
                    uri = data;
                }
            }
            engageInternal("attach");
            String realFilePathFromUri = Util.getRealFilePathFromUri(activity, uri);
            if (realFilePathFromUri != null) {
                long contentCreationTime = Util.getContentCreationTime(activity, uri);
                addAttachmentsToComposer(new ImageItem(realFilePathFromUri, Util.generateCacheFileFullPath(Uri.fromFile(new File(realFilePathFromUri)), Util.getDiskCacheDir(activity), contentCreationTime), Util.getMimeTypeFromUri(activity, uri), contentCreationTime));
                return;
            }
            addAttachmentsToComposer(new ImageItem(uri.toString(), Util.generateCacheFileFullPath(uri, Util.getDiskCacheDir(activity), 0L), Util.getMimeTypeFromUri(activity, uri), 0L));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.hostingActivityRef = new WeakReference<>((Activity) context);
            this.messagingActionHandler = new MessagingActionHandler(this);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while attaching", new Object[0]);
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onAttachImage() {
        try {
            if (Build.VERSION.SDK_INT < 19) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction("android.intent.action.GET_CONTENT");
                startActivityForResult(Intent.createChooser(intent, null), 10);
            } else {
                Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent2.addCategory("android.intent.category.OPENABLE");
                intent2.setType("image/*");
                startActivityForResult(Intent.createChooser(intent2, null), 10);
            }
            this.imagePickerStillOpen = true;
        } catch (Exception e) {
            this.imagePickerStillOpen = false;
            ApptentiveLog.m15635w(ApptentiveLogTag.MESSAGES, "can't launch image picker", new Object[0]);
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onCancelComposing() {
        Util.hideSoftKeyboard(this.hostingActivityRef.get(), getView());
        JSONObject jSONObject = new JSONObject();
        try {
            Editable pendingComposingContent = getPendingComposingContent();
            jSONObject.put("body_length", pendingComposingContent != null ? pendingComposingContent.toString().trim().length() : 0);
        } catch (JSONException e) {
            ApptentiveBaseFragment.logException(e);
        }
        engageInternal("compose_close", jSONObject.toString());
        MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
        messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(11));
        if (this.messageCenterRecyclerViewAdapter != null) {
            addExpectationStatusIfNeeded();
        }
        this.pendingAttachments.clear();
        this.composerEditText.getText().clear();
        this.composingViewSavedState = null;
        clearPendingComposingMessage();
        showFab();
        showProfileButton();
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onClickAttachment(int i, ImageItem imageItem) {
        if (!Util.isMimeTypeImage(imageItem.mimeType)) {
            openNonImageAttachment(imageItem);
        } else if (TextUtils.isEmpty(imageItem.originalPath)) {
            onAttachImage();
        } else {
            showAttachmentDialog(imageItem);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onCloseWhoCard(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("required", ((MessageCenterInteraction) this.interaction).getWhoCardRequired());
            jSONObject.put("button_label", str);
        } catch (JSONException e) {
            ApptentiveBaseFragment.logException(e);
        }
        engageInternal("profile_close", jSONObject.toString());
        setWhoCardAsPreviouslyDisplayed();
        cleanupWhoCard();
        if (shouldOpenComposerAfterClosingWhoCard()) {
            addComposingCard();
            return;
        }
        showFab();
        showProfileButton();
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onComposingTextChanged(CharSequence charSequence) {
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onComposingViewCreated(MessageComposerHolder messageComposerHolder, final EditText editText, ApptentiveImageGridView apptentiveImageGridView) {
        EditText editText2;
        this.composer = messageComposerHolder;
        this.composerEditText = editText;
        ConversationProxy conversation = getConversation();
        Assert.assertNotNull(conversation);
        if (conversation != null) {
            Parcelable parcelable = this.composingViewSavedState;
            if (parcelable != null) {
                EditText editText3 = this.composerEditText;
                if (editText3 != null) {
                    editText3.onRestoreInstanceState(parcelable);
                }
                this.composingViewSavedState = null;
                conversation.setMessageCenterPendingMessage(null);
            } else if (!StringUtils.isNullOrEmpty(conversation.getMessageCenterPendingMessage())) {
                String messageCenterPendingMessage = conversation.getMessageCenterPendingMessage();
                if (!(messageCenterPendingMessage == null || (editText2 = this.composerEditText) == null)) {
                    editText2.setText(messageCenterPendingMessage);
                }
                conversation.setMessageCenterPendingMessage(null);
            }
            setAttachmentsInComposer(this.pendingAttachments);
            this.messageCenterRecyclerView.setPadding(0, 0, 0, 0);
            if (editText != null) {
                editText.requestFocus();
                if (this.forceShowKeyboard) {
                    editText.post(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.7
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MessageCenterFragment.this.forceShowKeyboard) {
                                MessageCenterFragment.this.forceShowKeyboard = false;
                                Util.showSoftKeyboard((Activity) MessageCenterFragment.this.hostingActivityRef.get(), editText);
                            }
                        }
                    });
                }
            }
            hideFab();
            messageComposerHolder.setSendButtonState();
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.listViewSavedTopIndex = bundle == null ? -1 : bundle.getInt("key_list_top_index_state");
        this.listViewSavedTopOffset = bundle == null ? 0 : bundle.getInt("key_list_top_offset_state");
        String str = null;
        this.composingViewSavedState = bundle == null ? null : bundle.getParcelable("key_edit_text_state");
        this.pendingWhoCardName = bundle == null ? null : bundle.getParcelable("key_who_card_name_state");
        this.pendingWhoCardEmail = bundle == null ? null : bundle.getParcelable("key_who_card_email_state");
        if (bundle != null) {
            str = bundle.getString("key_who_card_avatar_state");
        }
        this.pendingWhoCardAvatarFile = str;
        this.pendingWhoCardMode = bundle != null && bundle.getBoolean("key_who_card_mode_state");
        return layoutInflater.inflate(C0726R.layout.apptentive_message_center, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        try {
            super.onDetach();
            this.messageCenterRecyclerViewAdapter = null;
            if (this.messageCenterRecyclerView != null) {
                this.messageCenterRecyclerView.setAdapter(null);
            }
            this.composer = null;
            this.composerEditText = null;
            this.whoCardNameEditText = null;
            this.whoCardEmailEditText = null;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onDetach()", MessageCenterFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onFinishComposing() {
        this.messagingActionHandler.sendEmptyMessage(11);
        Util.hideSoftKeyboard(this.hostingActivityRef.get(), getView());
        this.messagingActionHandler.sendEmptyMessage(10);
        if (!TextUtils.isEmpty(this.composerEditText.getText().toString().trim()) || this.pendingAttachments.size() > 0) {
            CompoundMessage compoundMessage = new CompoundMessage();
            compoundMessage.setBody(this.composerEditText.getText().toString().trim());
            compoundMessage.setRead(true);
            compoundMessage.setCustomData(ApptentiveInternal.getInstance().getAndClearCustomData());
            compoundMessage.setAssociatedImages(new ArrayList(this.pendingAttachments));
            ConversationProxy conversation = getConversation();
            if (conversation != null && conversation.hasActiveState()) {
                compoundMessage.setSenderId(conversation.getPerson().getId());
            }
            MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
            messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(4, compoundMessage));
            this.composingViewSavedState = null;
            this.composerEditText.getText().clear();
            this.pendingAttachments.clear();
            clearPendingComposingMessage();
        }
        showFab();
        showProfileButton();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        savePendingComposingMessage();
        ApptentiveViewActivity apptentiveViewActivity = (ApptentiveViewActivity) this.hostingActivityRef.get();
        if (apptentiveViewActivity == null) {
            return false;
        }
        DialogFragment dialogFragment = (DialogFragment) apptentiveViewActivity.getSupportFragmentManager().findFragmentByTag("imagePreviewDialog");
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
        cleanup();
        if (apptentiveViewExitType.equals(ApptentiveViewExitType.BACK_BUTTON)) {
            engageInternal("cancel");
            return false;
        } else if (apptentiveViewExitType.equals(ApptentiveViewExitType.NOTIFICATION)) {
            engageInternal("cancel", exitTypeToDataJson(apptentiveViewExitType));
            return false;
        } else {
            engageInternal("close", exitTypeToDataJson(apptentiveViewExitType));
            return false;
        }
    }

    @Override // com.apptentive.android.sdk.util.image.ImageGridViewAdapter.Callback
    public void onImageSelected(int i) {
        removeImageFromComposer(i);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem.getItemId() != C0726R.C0729id.profile) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("required", ((MessageCenterInteraction) this.interaction).getWhoCardRequired());
            jSONObject.put("trigger", "button");
        } catch (JSONException e) {
            ApptentiveBaseFragment.logException(e);
        }
        engageInternal("profile_open", jSONObject.toString());
        boolean wasWhoCardAsPreviouslyDisplayed = wasWhoCardAsPreviouslyDisplayed();
        this.forceShowKeyboard = true;
        addWhoCard(!wasWhoCardAsPreviouslyDisplayed);
        return true;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.AfterSendMessageListener
    public void onMessageSent(int i, ApptentiveMessage apptentiveMessage) {
        synchronized (this) {
            boolean z = true;
            boolean z2 = i >= 400 && i < 500;
            if (i < 200 || i >= 300) {
                z = false;
            }
            if (z || z2 || i == -1) {
                this.messagingActionHandler.sendMessage(this.messagingActionHandler.obtainMessage(3, apptentiveMessage));
            }
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.OnNewIncomingMessagesListener
    public void onNewMessageReceived(CompoundMessage compoundMessage) {
        MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
        messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(7, compoundMessage));
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.3
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getMessageManager().pauseSending(MessageManager.SEND_PAUSE_REASON_ACTIVITY_PAUSE);
                return true;
            }
        }, "pause message center fragment");
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.AfterSendMessageListener
    public void onPauseSending(int i) {
        synchronized (this) {
            this.messagingActionHandler.sendMessage(this.messagingActionHandler.obtainMessage(5, i, 0));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1 && iArr[0] == 0) {
            onAttachImage();
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        try {
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.4
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    conversation.getMessageManager().resumeSending();
                    return true;
                }
            }, "resume message center fragment");
            if (this.imagePickerStillOpen) {
                engageInternal("attachment_cancel");
                this.imagePickerStillOpen = false;
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onResume()", MessageCenterFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.AfterSendMessageListener
    public void onResumeSending() {
        synchronized (this) {
            this.messagingActionHandler.sendEmptyMessage(6);
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        try {
            savePendingComposingMessage();
            View childAt = this.messageCenterRecyclerView.getChildAt(0);
            bundle.putInt("key_list_top_offset_state", childAt == null ? 0 : childAt.getTop() - this.messageCenterRecyclerView.getPaddingTop());
            bundle.putParcelable("key_edit_text_state", saveEditTextInstanceState());
            if (this.messageCenterRecyclerViewAdapter != null) {
                Parcelable parcelable = null;
                bundle.putParcelable("key_who_card_name_state", this.whoCardNameEditText != null ? this.whoCardNameEditText.onSaveInstanceState() : null);
                if (this.whoCardEmailEditText != null) {
                    parcelable = this.whoCardEmailEditText.onSaveInstanceState();
                }
                bundle.putParcelable("key_who_card_email_state", parcelable);
                bundle.putString("key_who_card_avatar_state", this.messageCenterRecyclerViewAdapter.getWhoCardAvatarFileName());
            }
            bundle.putBoolean("key_who_card_mode_state", this.pendingWhoCardMode);
            super.onSaveInstanceState(bundle);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onSaveInstanceState()", MessageCenterFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r4.getChildAt(0).getTop() < r4.getPaddingTop()) goto L_0x0032;
     */
    @Override // android.widget.AbsListView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScroll(android.widget.AbsListView r4, int r5, int r6, int r7) {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 14
            if (r0 >= r1) goto L_0x0038
            r0 = r4
            int r0 = r0.getChildCount()
            r5 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            if (r0 <= 0) goto L_0x003f
            r0 = r4
            int r0 = r0.getFirstVisiblePosition()
            if (r0 > 0) goto L_0x0032
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getTop()
            r1 = r4
            int r1 = r1.getPaddingTop()
            if (r0 >= r1) goto L_0x003f
        L_0x0032:
            r0 = 1
            r9 = r0
            goto L_0x003f
        L_0x0038:
            r0 = r4
            r1 = -1
            boolean r0 = androidx.core.view.ViewCompat.m19204d(r0, r1)
            r9 = r0
        L_0x003f:
            r0 = r3
            r1 = r9
            r0.showToolbarElevation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.onScroll(android.widget.AbsListView, int, int, int):void");
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        try {
            ConversationProxy conversation = getConversation();
            if (conversation != null) {
                conversation.setMessageCenterInForeground(true);
            }
        } catch (Exception e) {
            ApptentiveLog.m15642e("Exception in %s.onStart()", MessageCenterFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        try {
            ConversationProxy conversation = getConversation();
            if (conversation != null) {
                conversation.setMessageCenterInForeground(false);
            }
        } catch (Exception e) {
            ApptentiveLog.m15642e("Exception in %s.onStop()", MessageCenterFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onSubmitWhoCard(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("required", ((MessageCenterInteraction) this.interaction).getWhoCardRequired());
            jSONObject.put("button_label", str);
        } catch (JSONException e) {
            ApptentiveBaseFragment.logException(e);
        }
        engageInternal("profile_submit", jSONObject.toString());
        setWhoCardAsPreviouslyDisplayed();
        cleanupWhoCard();
        if (shouldOpenComposerAfterClosingWhoCard()) {
            addComposingCard();
            return;
        }
        showFab();
        showProfileButton();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(final View view, final Bundle bundle) {
        super.onViewCreated(view, bundle);
        MessageCenterRecyclerView messageCenterRecyclerView = (MessageCenterRecyclerView) view.findViewById(C0726R.C0729id.message_center_recycler_view);
        this.messageCenterRecyclerView = messageCenterRecyclerView;
        if (Build.VERSION.SDK_INT >= 21) {
            messageCenterRecyclerView.setNestedScrollingEnabled(true);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.m17649F2(1);
        this.messageCenterRecyclerView.setLayoutManager(linearLayoutManager);
        this.fab = view.findViewById(C0726R.C0729id.composing_fab);
        fetchMessages(new FetchCallback() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.1
            @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.FetchCallback
            public void onFetchFinish(@Nullable List<MessageCenterListItem> list) {
                MessageCenterFragment.this.setup(view, bundle == null, list);
                ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.1.1
                    @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                    protected boolean execute(Conversation conversation) {
                        MessageManager messageManager = conversation.getMessageManager();
                        messageManager.addInternalOnMessagesUpdatedListener(MessageCenterFragment.this);
                        messageManager.setAfterSendMessageListener(MessageCenterFragment.this);
                        return true;
                    }
                }, "set message listeners");
                if (MessageCenterFragment.this.listViewSavedTopIndex != -1) {
                    MessageCenterFragment.this.messagingActionHandler.sendMessageDelayed(MessageCenterFragment.this.messagingActionHandler.obtainMessage(2, MessageCenterFragment.this.listViewSavedTopIndex, MessageCenterFragment.this.listViewSavedTopOffset), 200L);
                } else {
                    MessageCenterFragment.this.messagingActionHandler.sendEmptyMessageDelayed(1, 200L);
                }
            }
        });
        getActivity().getWindow().setSoftInputMode(17);
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener
    public void onWhoCardViewCreated(EditText editText, EditText editText2, final View view) {
        this.whoCardNameEditText = editText;
        this.whoCardEmailEditText = editText2;
        Parcelable parcelable = this.pendingWhoCardName;
        if (parcelable != null) {
            editText.onRestoreInstanceState(parcelable);
            this.pendingWhoCardName = null;
        }
        Parcelable parcelable2 = this.pendingWhoCardEmail;
        if (parcelable2 != null) {
            editText2.onRestoreInstanceState(parcelable2);
            this.pendingWhoCardEmail = null;
        }
        this.messageCenterRecyclerView.setPadding(0, 0, 0, 0);
        if (view != null) {
            view.requestFocus();
            if (this.forceShowKeyboard) {
                view.post(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MessageCenterFragment.this.forceShowKeyboard) {
                            MessageCenterFragment.this.forceShowKeyboard = false;
                            Util.showSoftKeyboard((Activity) MessageCenterFragment.this.hostingActivityRef.get(), view);
                        }
                    }
                });
            }
        }
        hideFab();
    }

    public void openNonImageAttachment(ImageItem imageItem) {
        if (imageItem == null) {
            ApptentiveLog.m15646d(ApptentiveLogTag.MESSAGES, "No attachment argument.", new Object[0]);
            return;
        }
        try {
            if (!Util.openFileAttachment(this.hostingActivityRef.get(), imageItem.originalPath, imageItem.localCachePath, imageItem.mimeType)) {
                ApptentiveLog.m15646d(ApptentiveLogTag.MESSAGES, "Cannot open file attachment", new Object[0]);
            }
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.MESSAGES, e, "Error loading attachment", new Object[0]);
            ApptentiveBaseFragment.logException(e);
        }
    }

    public boolean recyclerViewContainsItemOfType(int i) {
        Iterator<MessageCenterListItem> it = this.listItems.iterator();
        while (it.hasNext()) {
            if (it.next().getListItemType() == i) {
                return true;
            }
        }
        return false;
    }

    public void removeImageFromComposer(int i) {
        engageInternal("attachment_delete");
        MessagingActionHandler messagingActionHandler = this.messagingActionHandler;
        messagingActionHandler.sendMessage(messagingActionHandler.obtainMessage(18, i, 0));
        this.messagingActionHandler.sendEmptyMessageDelayed(1, 200L);
    }

    public void savePendingComposingMessage() {
        Editable pendingComposingContent = getPendingComposingContent();
        SharedPreferences.Editor edit = ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit();
        ConversationProxy conversation = getConversation();
        Assert.assertNotNull(conversation);
        if (conversation != null) {
            if (pendingComposingContent != null) {
                conversation.setMessageCenterPendingMessage(pendingComposingContent.toString().trim());
            } else {
                conversation.setMessageCenterPendingMessage(null);
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<ImageItem> it = this.pendingAttachments.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().toJSON());
            }
            if (jSONArray.length() > 0) {
                conversation.setMessageCenterPendingAttachments(jSONArray.toString());
            } else {
                conversation.setMessageCenterPendingAttachments(null);
            }
            edit.apply();
        }
    }

    public void setAttachmentsInComposer(List<ImageItem> list) {
        this.messageCenterRecyclerViewAdapter.addImagestoComposer(this.composer, list);
        this.messagingActionHandler.sendEmptyMessageDelayed(1, 50L);
    }

    public void setPaused(boolean z) {
        if (this.isPaused ^ z) {
            for (int i = 0; i < this.listItems.size(); i++) {
                MessageCenterListItem messageCenterListItem = this.listItems.get(i);
                if (messageCenterListItem instanceof ApptentiveMessage) {
                    ApptentiveMessage apptentiveMessage = (ApptentiveMessage) messageCenterListItem;
                    if (apptentiveMessage.isOutgoingMessage() && apptentiveMessage.getCreatedAt() == null) {
                        this.messageCenterRecyclerViewAdapter.notifyItemChanged(i);
                    }
                }
            }
        }
        this.isPaused = z;
    }

    public void showAttachmentDialog(ImageItem imageItem) {
        if (imageItem == null) {
            ApptentiveLog.m15646d(ApptentiveLogTag.MESSAGES, "No attachment argument.", new Object[0]);
            return;
        }
        try {
            FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
            Fragment findFragmentByTag = getFragmentManager().findFragmentByTag("imagePreviewDialog");
            if (findFragmentByTag != null) {
                beginTransaction.mo18331q(findFragmentByTag);
            }
            beginTransaction.m18341g(null);
            AttachmentPreviewDialog.newInstance(imageItem, getConversation().getConversationToken()).show(beginTransaction, "imagePreviewDialog");
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.MESSAGES, e, "Error loading attachment preview.", new Object[0]);
            ApptentiveBaseFragment.logException(e);
        }
    }

    protected void updateMenuVisibility() {
        this.profileMenuItem.setVisible(this.bShowProfileMenuItem);
        this.profileMenuItem.setEnabled(this.bShowProfileMenuItem);
    }

    public void updateMessageSentStates() {
        this.dateStampsSeen.clear();
        HashSet hashSet = new HashSet();
        ListIterator<MessageCenterListItem> listIterator = this.listItems.listIterator();
        MessageCenterUtil.CompoundMessageCommonInterface compoundMessageCommonInterface = null;
        int i = 0;
        while (listIterator.hasNext()) {
            int nextIndex = listIterator.nextIndex() - i;
            MessageCenterListItem next = listIterator.next();
            if (next instanceof ApptentiveMessage) {
                ApptentiveMessage apptentiveMessage = (ApptentiveMessage) next;
                if (!hashSet.add(apptentiveMessage.getNonce())) {
                    listIterator.remove();
                    this.messageCenterRecyclerViewAdapter.notifyItemRemoved(nextIndex);
                    i++;
                } else {
                    Double createdAt = apptentiveMessage.getCreatedAt();
                    String createDatestamp = createDatestamp(createdAt);
                    if (createDatestamp != null) {
                        if (this.dateStampsSeen.add(createDatestamp)) {
                            if (apptentiveMessage.setDatestamp(createDatestamp)) {
                                this.messageCenterRecyclerViewAdapter.notifyItemChanged(nextIndex);
                            }
                        } else if (apptentiveMessage.clearDatestamp()) {
                            this.messageCenterRecyclerViewAdapter.notifyItemChanged(nextIndex);
                        }
                    }
                    if (apptentiveMessage.isOutgoingMessage() && createdAt != null && createdAt.doubleValue() > Double.MIN_VALUE) {
                        compoundMessageCommonInterface = (MessageCenterUtil.CompoundMessageCommonInterface) apptentiveMessage;
                        compoundMessageCommonInterface.setLastSent(false);
                    }
                }
            }
        }
        if (compoundMessageCommonInterface != null) {
            compoundMessageCommonInterface.setLastSent(true);
        }
    }
}
