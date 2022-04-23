package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.p004v7.app.AppCompatActivity;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import zendesk.belvedere.ImageStream;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.RequestStatus;
import zendesk.support.UiUtils;
import zendesk.support.request.ViewMessageComposer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentMessageComposer.class */
class ComponentMessageComposer implements Listener<MessageComposerModel>, ViewMessageComposer.InputListener, ImageStream.Listener {
    private final ActionFactory actionFactory;
    private final AppCompatActivity activity;
    private final Dispatcher dispatcher;
    private final ImageStream imageStream;
    private final ViewMessageComposer messageComposerView;
    private final MessageComposerSelector messageFieldSelector = new MessageComposerSelector();
    private final AttachmentHelper attachmentHelper = new AttachmentHelper(C1790R.C1793id.attachments_indicator_icon, C1790R.C1793id.message_composer_send_btn);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentMessageComposer$MessageComposerModel.class */
    public static class MessageComposerModel {
        private final boolean attachmentsButtonEnabled;
        private final List<StateRequestAttachment> extraAttachments;
        private final long maxFileSize;
        private final boolean messageComposerVisible;
        private final List<StateRequestAttachment> requestAttachments;
        private final boolean sendButtonEnabled;

        MessageComposerModel(List<StateRequestAttachment> list, List<StateRequestAttachment> list2, long j, boolean z, boolean z2, boolean z3) {
            this.requestAttachments = list;
            this.extraAttachments = list2;
            this.maxFileSize = j;
            this.sendButtonEnabled = z;
            this.attachmentsButtonEnabled = z2;
            this.messageComposerVisible = z3;
        }

        List<StateRequestAttachment> getExtraAttachments() {
            return this.extraAttachments;
        }

        long getMaxFileSize() {
            return this.maxFileSize;
        }

        List<StateRequestAttachment> getRequestAttachments() {
            return this.requestAttachments;
        }

        boolean isAttachmentsButtonEnabled() {
            return this.attachmentsButtonEnabled;
        }

        boolean isMessageComposerVisible() {
            return this.messageComposerVisible;
        }

        boolean isSendButtonEnabled() {
            return this.sendButtonEnabled;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentMessageComposer$MessageComposerSelector.class */
    static class MessageComposerSelector implements StateSelector<MessageComposerModel> {
        MessageComposerSelector() {
        }

        @Override // zendesk.suas.StateSelector
        public MessageComposerModel selectData(@NonNull State state) {
            StateAttachments fromState = StateAttachments.fromState(state);
            StateConfig fromState2 = StateConfig.fromState(state);
            StateConversation fromState3 = StateConversation.fromState(state);
            return new MessageComposerModel(CollectionUtils.copyOf(fromState.getSelectedAttachments()), new ArrayList(fromState.getAllSelectedAttachments()), fromState2.getSettings().getMaxAttachmentSize(), StringUtils.hasLength(fromState3.getRemoteId()), fromState2.getSettings().isAttachmentsEnabled(), fromState3.getStatus() != RequestStatus.Closed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentMessageComposer(AppCompatActivity appCompatActivity, ImageStream imageStream, ViewMessageComposer viewMessageComposer, Dispatcher dispatcher, ActionFactory actionFactory) {
        this.activity = appCompatActivity;
        this.messageComposerView = viewMessageComposer;
        this.dispatcher = dispatcher;
        this.actionFactory = actionFactory;
        this.imageStream = imageStream;
        viewMessageComposer.addListener(this);
        initImagePicker();
    }

    private void initImagePicker() {
        this.imageStream.addListener(this);
        if (this.imageStream.getKeyboardHelper().getInputTrap().hasFocus()) {
            this.messageComposerView.requestFocusForInput();
        }
        if (this.imageStream.wasOpen()) {
            this.messageComposerView.post(new Runnable() { // from class: zendesk.support.request.ComponentMessageComposer.1
                @Override // java.lang.Runnable
                public void run() {
                    ComponentMessageComposer.this.onAddAttachmentsRequested();
                }
            });
        }
    }

    public StateSelector<MessageComposerModel> getSelector() {
        return this.messageFieldSelector;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasUnsavedInput() {
        return StringUtils.hasLength(this.messageComposerView.getMessage()) || CollectionUtils.isNotEmpty(this.attachmentHelper.getSelectedAttachments());
    }

    @Override // zendesk.support.request.ViewMessageComposer.InputListener
    public void onAddAttachmentsRequested() {
        if (!this.imageStream.isAttachmentsPopupVisible()) {
            this.attachmentHelper.showImagePicker(this.activity);
        } else {
            this.imageStream.dismiss();
        }
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onDismissed() {
        this.messageComposerView.requestFocusForInput();
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onMediaDeselected(List<MediaResult> list) {
        this.dispatcher.dispatch(this.actionFactory.deselectAttachment(list));
        if (!this.imageStream.isAttachmentsPopupVisible()) {
            onAddAttachmentsRequested();
        }
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onMediaSelected(List<MediaResult> list) {
        this.dispatcher.dispatch(this.actionFactory.selectAttachment(list));
        if (!this.imageStream.isAttachmentsPopupVisible()) {
            onAddAttachmentsRequested();
        }
    }

    @Override // zendesk.support.request.ViewMessageComposer.InputListener
    public void onSendMessageRequested(@NonNull String str) {
        if (this.imageStream.isAttachmentsPopupVisible()) {
            this.imageStream.dismiss();
        }
        this.dispatcher.dispatch(this.actionFactory.createCommentAsync(str, this.attachmentHelper.getSelectedAttachments()));
        this.dispatcher.dispatch(this.actionFactory.clearAttachments());
        this.dispatcher.dispatch(this.actionFactory.updateCommentsAsync());
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onVisible() {
        this.messageComposerView.post(new Runnable() { // from class: zendesk.support.request.ComponentMessageComposer.2
            @Override // java.lang.Runnable
            public void run() {
                ComponentMessageComposer.this.messageComposerView.triggerStateUpdate();
            }
        });
    }

    public void update(@NonNull MessageComposerModel messageComposerModel) {
        this.attachmentHelper.updateMaxFileSize(messageComposerModel.getMaxFileSize());
        this.attachmentHelper.updateAttachments(messageComposerModel.getRequestAttachments(), messageComposerModel.getExtraAttachments());
        this.messageComposerView.setAttachmentsCount(messageComposerModel.getRequestAttachments().size());
        this.messageComposerView.enableSendButton(messageComposerModel.isSendButtonEnabled());
        this.messageComposerView.enableAttachmentsButton(messageComposerModel.isAttachmentsButtonEnabled());
        this.messageComposerView.hide(!messageComposerModel.isMessageComposerVisible());
        if (!messageComposerModel.isMessageComposerVisible()) {
            UiUtils.dismissKeyboard(this.messageComposerView);
        }
    }
}
