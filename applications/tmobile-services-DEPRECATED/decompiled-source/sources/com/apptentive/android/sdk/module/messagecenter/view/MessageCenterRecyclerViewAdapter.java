package com.apptentive.android.sdk.module.messagecenter.view;

import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.module.messagecenter.OnListviewItemActionListener;
import com.apptentive.android.sdk.module.messagecenter.model.Composer;
import com.apptentive.android.sdk.module.messagecenter.model.ContextMessage;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterGreeting;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterStatus;
import com.apptentive.android.sdk.module.messagecenter.model.WhoCard;
import com.apptentive.android.sdk.module.messagecenter.view.holder.AutomatedMessageHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.ContextMessageHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.GreetingHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.IncomingCompoundMessageHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.OutgoingCompoundMessageHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.StatusHolder;
import com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter.class */
public class MessageCenterRecyclerViewAdapter extends RecyclerView.Adapter {
    MessageCenterFragment fragment;
    List<MessageCenterListItem> listItems;
    OnListviewItemActionListener listener;
    private ArrayList<ApptentiveMessage> messagesWithPendingReadStatusUpdate = new ArrayList<>();
    RecyclerView recyclerView;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerViewAdapter$UpdateUnreadMessageTask.class */
    public class UpdateUnreadMessageTask extends AsyncTask<ApptentiveMessage, Void, Void> {
        private ApptentiveMessage message;

        public UpdateUnreadMessageTask(ApptentiveMessage apptentiveMessage) {
            this.message = apptentiveMessage;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(ApptentiveMessage... apptentiveMessageArr) {
            final ApptentiveMessage apptentiveMessage = apptentiveMessageArr[0];
            apptentiveMessage.setRead(true);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(Constants.MessagePayloadKeys.MSGID_SERVER, apptentiveMessage.getId());
                jSONObject.put(Constants.MessagePayloadKeys.MESSAGE_TYPE, apptentiveMessage.getMessageType().name());
            } catch (JSONException e) {
                MessageCenterRecyclerViewAdapter.this.logException(e);
            }
            MessageCenterRecyclerViewAdapter.this.fragment.engageInternal("read", jSONObject.toString());
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter.UpdateUnreadMessageTask.1
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    MessageManager messageManager = conversation.getMessageManager();
                    if (messageManager == null) {
                        return false;
                    }
                    messageManager.updateMessage(apptentiveMessage);
                    messageManager.notifyHostUnreadMessagesListeners(messageManager.getUnreadMessageCount());
                    return false;
                }
            }, "update message");
            return null;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            MessageCenterRecyclerViewAdapter.this.messagesWithPendingReadStatusUpdate.remove(this.message);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            MessageCenterRecyclerViewAdapter.this.messagesWithPendingReadStatusUpdate.remove(this.message);
        }
    }

    public MessageCenterRecyclerViewAdapter(MessageCenterFragment messageCenterFragment, OnListviewItemActionListener onListviewItemActionListener, Interaction interaction, List<MessageCenterListItem> list) {
        this.fragment = messageCenterFragment;
        this.listener = onListviewItemActionListener;
        this.listItems = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private void startUpdateUnreadMessageTask(CompoundMessage compoundMessage) {
        new UpdateUnreadMessageTask(compoundMessage).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, compoundMessage);
    }

    public void addImagestoComposer(MessageComposerHolder messageComposerHolder, List<ImageItem> list) {
        messageComposerHolder.addImagesToImageAttachmentBand(list);
        messageComposerHolder.setSendButtonState();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.listItems.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.listItems.get(i).getListItemType();
    }

    public OnListviewItemActionListener getListener() {
        return this.listener;
    }

    public String getWhoCardAvatarFileName() {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        try {
            switch (getItemViewType(i)) {
                case 1:
                    ((GreetingHolder) viewHolder).bindView((MessageCenterGreeting) this.listItems.get(i));
                    break;
                case 2:
                    MessageCenterStatus messageCenterStatus = (MessageCenterStatus) this.listItems.get(i);
                    StatusHolder statusHolder = (StatusHolder) viewHolder;
                    statusHolder.body.setText(messageCenterStatus.body);
                    if (messageCenterStatus.icon == null) {
                        statusHolder.icon.setVisibility(8);
                        break;
                    } else {
                        statusHolder.icon.setImageResource(messageCenterStatus.icon.intValue());
                        statusHolder.icon.setVisibility(0);
                        break;
                    }
                case 3:
                    ((ContextMessageHolder) viewHolder).bindView((ContextMessage) this.listItems.get(i));
                    break;
                case 4:
                    ((AutomatedMessageHolder) viewHolder).bindView(this.recyclerView, (CompoundMessage) this.listItems.get(i));
                    break;
                case 5:
                    ((OutgoingCompoundMessageHolder) viewHolder).bindView(this.fragment, this.recyclerView, this, (CompoundMessage) this.listItems.get(i));
                    break;
                case 6:
                    CompoundMessage compoundMessage = (CompoundMessage) this.listItems.get(i);
                    ((IncomingCompoundMessageHolder) viewHolder).bindView(this.fragment, this.recyclerView, this, compoundMessage);
                    if (!compoundMessage.isRead() && !this.messagesWithPendingReadStatusUpdate.contains(compoundMessage)) {
                        this.messagesWithPendingReadStatusUpdate.add(compoundMessage);
                        startUpdateUnreadMessageTask(compoundMessage);
                        break;
                    }
                    break;
                case 7:
                    ((MessageComposerHolder) viewHolder).bindView(this.fragment, this, (Composer) this.listItems.get(i));
                    break;
                case 8:
                    ((WhoCardHolder) viewHolder).bindView(this.recyclerView, (WhoCard) this.listItems.get(i));
                    break;
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while binding view holder", new Object[0]);
            logException(e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new GreetingHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_center_greeting, viewGroup, false));
            case 2:
                return new StatusHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_center_status, viewGroup, false));
            case 3:
                return new ContextMessageHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_center_context_message, viewGroup, false));
            case 4:
                return new AutomatedMessageHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_auto, viewGroup, false));
            case 5:
                return new OutgoingCompoundMessageHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_outgoing, viewGroup, false));
            case 6:
                return new IncomingCompoundMessageHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_incoming, viewGroup, false));
            case 7:
                return new MessageComposerHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_center_composer, viewGroup, false));
            case 8:
                return new WhoCardHolder(this, LayoutInflater.from(viewGroup.getContext()).inflate(C0726R.layout.apptentive_message_center_who_card, viewGroup, false));
            default:
                ApptentiveLog.m15635w(ApptentiveLogTag.MESSAGES, "onCreateViewHolder(%d) returning null.", Integer.valueOf(i));
                return null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        super.onViewAttachedToWindow(viewHolder);
        if (viewHolder instanceof MessageComposerHolder) {
            ((MessageComposerHolder) viewHolder).onViewAttachedToWindow();
        }
    }

    public void removeImageFromComposer(MessageComposerHolder messageComposerHolder, int i) {
        if (messageComposerHolder != null) {
            messageComposerHolder.removeImageFromImageAttachmentBand(i);
            messageComposerHolder.setSendButtonState();
        }
    }
}
