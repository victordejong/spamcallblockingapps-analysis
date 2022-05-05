package zendesk.support.request;

import zendesk.suas.Store;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/HeadlessComponentListener.class */
public class HeadlessComponentListener {
    private final AttachmentDownloaderComponent attachment;
    private final ComponentPersistence persistence;
    private boolean registered = false;
    private final ComponentUpdateActionHandlers updateActionHandlersComponent;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HeadlessComponentListener(ComponentPersistence componentPersistence, AttachmentDownloaderComponent attachmentDownloaderComponent, ComponentUpdateActionHandlers componentUpdateActionHandlers) {
        this.persistence = componentPersistence;
        this.attachment = attachmentDownloaderComponent;
        this.updateActionHandlersComponent = componentUpdateActionHandlers;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startListening(Store store) {
        if (!this.registered) {
            store.addListener(this.persistence.getSelector(), this.persistence);
            store.addListener(StateConversation.class, this.attachment);
            store.addListener(StateConversation.class, this.updateActionHandlersComponent);
            this.registered = true;
        }
    }
}
