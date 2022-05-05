package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.RecyclerView;
import android.view.MenuItem;
import android.view.View;
import android.widget.ScrollView;
import com.zendesk.sdk.C1790R;
import java.util.Collection;
import java.util.List;
import zendesk.belvedere.ImageStream;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.request.RequestViewConversationsDisabled;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentAttachmentCarousel.class */
class ComponentAttachmentCarousel implements ImageStream.Listener, Listener<AttachmentCarouselModel>, RequestViewConversationsDisabled.MenuItemsDelegate {
    private final ActionFactory actionFactory;
    private final AppCompatActivity activity;
    private MenuItem attachmentButton;
    private final AttachmentHelper attachmentHelper;
    private final Dispatcher dispatcher;
    private final ImageStream imageStream;
    private final RecyclerView recyclerView;
    private final ScrollView scrollView;
    private boolean attachmentSupportEnabled = false;
    private final StateSelector<AttachmentCarouselModel> selector = new AttachmentCarouselSelector();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel.class */
    public static class AttachmentCarouselModel {
        private final Collection<StateRequestAttachment> additionalAttachments;
        private final boolean isAttachmentSupportEnabled;
        private final boolean isLoading;
        private final long maxAttachmentSize;
        private final Collection<StateRequestAttachment> selectedAttachments;

        AttachmentCarouselModel(Collection<StateRequestAttachment> collection, Collection<StateRequestAttachment> collection2, boolean z, boolean z2, long j) {
            this.selectedAttachments = collection;
            this.additionalAttachments = collection2;
            this.isLoading = z;
            this.isAttachmentSupportEnabled = z2;
            this.maxAttachmentSize = j;
        }

        Collection<StateRequestAttachment> getAdditionalAttachments() {
            return this.additionalAttachments;
        }

        long getMaxAttachmentSize() {
            return this.maxAttachmentSize;
        }

        Collection<StateRequestAttachment> getSelectedAttachments() {
            return this.selectedAttachments;
        }

        boolean isAttachmentSupportEnabled() {
            return this.isAttachmentSupportEnabled;
        }

        boolean isLoading() {
            return this.isLoading;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselSelector.class */
    static class AttachmentCarouselSelector implements StateSelector<AttachmentCarouselModel> {
        AttachmentCarouselSelector() {
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public AttachmentCarouselModel selectData(@NonNull State state) {
            StateAttachments fromState = StateAttachments.fromState(state);
            StateConfig fromState2 = StateConfig.fromState(state);
            return new AttachmentCarouselModel(fromState.getSelectedAttachments(), fromState.getAllSelectedAttachments(), StateProgress.fomState(state).getRunningRequests() > 0, fromState2.getSettings().isAttachmentsEnabled(), fromState2.getSettings().getMaxAttachmentSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentAttachmentCarousel(Dispatcher dispatcher, ActionFactory actionFactory, ImageStream imageStream, AppCompatActivity appCompatActivity, AttachmentHelper attachmentHelper, RecyclerView recyclerView) {
        this.dispatcher = dispatcher;
        this.actionFactory = actionFactory;
        this.imageStream = imageStream;
        this.activity = appCompatActivity;
        this.attachmentHelper = attachmentHelper;
        this.recyclerView = recyclerView;
        this.scrollView = (ScrollView) appCompatActivity.findViewById(C1790R.C1793id.request_conversations_disabled_scrollview);
        initImagePicker();
    }

    private void attachmentButtonVisibility(boolean z, boolean z2) {
        if (this.attachmentButton != null) {
            this.attachmentButton.setVisible(z);
            this.attachmentButton.getActionView().setEnabled(z2);
        }
    }

    private void attachmentCount(int i) {
        if (this.attachmentButton != null) {
            ((ViewCellAttachmentMenuItem) this.attachmentButton.getActionView()).setBadgeCount(i);
        }
    }

    private void initImagePicker() {
        this.imageStream.addListener(this);
        if (this.imageStream.getKeyboardHelper().getInputTrap().hasFocus()) {
            this.scrollView.requestFocus();
        }
        if (this.imageStream.wasOpen()) {
            this.scrollView.post(new Runnable() { // from class: zendesk.support.request.ComponentAttachmentCarousel.1
                @Override // java.lang.Runnable
                public void run() {
                    ComponentAttachmentCarousel.this.onAddAttachmentsRequested(true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddAttachmentsRequested(boolean z) {
        if (!this.imageStream.isAttachmentsPopupVisible()) {
            this.attachmentHelper.showImagePicker(this.activity);
        } else if (z) {
            this.imageStream.dismiss();
        }
    }

    private void scroll(final int i) {
        this.scrollView.post(new Runnable() { // from class: zendesk.support.request.ComponentAttachmentCarousel.2
            @Override // java.lang.Runnable
            public void run() {
                ComponentAttachmentCarousel.this.scrollView.fullScroll(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSelector<AttachmentCarouselModel> getSelector() {
        return this.selector;
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onDismissed() {
        this.scrollView.requestFocus();
        scroll(33);
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onMediaDeselected(List<MediaResult> list) {
        this.dispatcher.dispatch(this.actionFactory.deselectAttachment(list));
        onAddAttachmentsRequested(false);
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onMediaSelected(List<MediaResult> list) {
        this.dispatcher.dispatch(this.actionFactory.selectAttachment(list));
        onAddAttachmentsRequested(false);
    }

    @Override // zendesk.support.request.RequestViewConversationsDisabled.MenuItemsDelegate
    public void onMenuItemsClicked(MenuItem menuItem) {
    }

    @Override // zendesk.support.request.RequestViewConversationsDisabled.MenuItemsDelegate
    public void onMenuItemsInflated(MenuItem menuItem, MenuItem menuItem2) {
        this.attachmentButton = menuItem2;
        menuItem2.getActionView().setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.ComponentAttachmentCarousel.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComponentAttachmentCarousel.this.onAddAttachmentsRequested(true);
            }
        });
        attachmentButtonVisibility(this.attachmentSupportEnabled, true);
    }

    @Override // zendesk.belvedere.ImageStream.Listener
    public void onVisible() {
        scroll(130);
    }

    public void update(@NonNull AttachmentCarouselModel attachmentCarouselModel) {
        this.attachmentSupportEnabled = attachmentCarouselModel.isAttachmentSupportEnabled();
        attachmentButtonVisibility(this.attachmentSupportEnabled, !attachmentCarouselModel.isLoading());
        if (!attachmentCarouselModel.isLoading()) {
            this.attachmentHelper.updateAttachments(attachmentCarouselModel.getSelectedAttachments(), attachmentCarouselModel.getAdditionalAttachments());
            this.attachmentHelper.updateMaxFileSize(attachmentCarouselModel.getMaxAttachmentSize());
            attachmentCount(this.attachmentHelper.getSelectedAttachments().size());
            if (this.attachmentHelper.getSelectedAttachments().size() > 0) {
                scroll(130);
            } else {
                scroll(33);
            }
            this.recyclerView.getAdapter().notifyDataSetChanged();
        }
    }
}
