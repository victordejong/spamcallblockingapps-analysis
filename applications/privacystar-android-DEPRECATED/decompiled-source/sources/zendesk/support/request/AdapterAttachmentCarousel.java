package zendesk.support.request;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import java.util.Collections;
import zendesk.suas.Dispatcher;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AdapterAttachmentCarousel.class */
class AdapterAttachmentCarousel extends RecyclerView.Adapter<CarouselViewHolder> {
    private static final int FILE_ATTACHMENT = 1;
    private static final int IMAGE_ATTACHMENT = 2;

    /* renamed from: af */
    private final ActionFactory f1867af;
    private final AttachmentHelper attachmentHelper;
    private final Dispatcher dispatcher;
    private final Picasso picasso;
    private final CarouselViewHolder.OnRemoveListener removeListener = new CarouselViewHolder.OnRemoveListener() { // from class: zendesk.support.request.AdapterAttachmentCarousel.1
        @Override // zendesk.support.request.AdapterAttachmentCarousel.CarouselViewHolder.OnRemoveListener
        public void onRemove(StateRequestAttachment stateRequestAttachment) {
            AdapterAttachmentCarousel.this.dispatcher.dispatch(AdapterAttachmentCarousel.this.f1867af.deselectAttachment(Collections.singletonList(StateRequestAttachment.convert(stateRequestAttachment))));
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder.class */
    public static abstract class CarouselViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener.class */
        public interface OnRemoveListener {
            void onRemove(StateRequestAttachment stateRequestAttachment);
        }

        CarouselViewHolder(View view) {
            super(view);
        }

        abstract void bind(StateRequestAttachment stateRequestAttachment, OnRemoveListener onRemoveListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder.class */
    public static class FileAttachmentViewHolder extends CarouselViewHolder {
        private final TextView name = (TextView) this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_file_title);
        private final ImageView appIcon = (ImageView) this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_file_icon);
        private final TextView appName = (TextView) this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_file_app_name);
        private final View remove = this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_remove);
        private final View container = this.itemView.findViewById(C1790R.C1793id.request_attachment_file_carousel_container);

        FileAttachmentViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1790R.C1794layout.zs_request_carousel_file, viewGroup, false));
        }

        @Override // zendesk.support.request.AdapterAttachmentCarousel.CarouselViewHolder
        void bind(final StateRequestAttachment stateRequestAttachment, final CarouselViewHolder.OnRemoveListener onRemoveListener) {
            Context context = this.itemView.getContext();
            ResolveInfo appInfoForFile = UtilsAttachment.getAppInfoForFile(context, stateRequestAttachment.getName());
            this.appIcon.setImageDrawable(UtilsAttachment.getAppIcon(context, appInfoForFile));
            this.appName.setText(UtilsAttachment.getAppName(context, appInfoForFile));
            this.name.setText(stateRequestAttachment.getName());
            this.remove.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.AdapterAttachmentCarousel.FileAttachmentViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onRemoveListener.onRemove(stateRequestAttachment);
                }
            });
            this.remove.setContentDescription(context.getString(C1790R.string.zs_request_attachment_carousel_remove_attachment_accessibility, stateRequestAttachment.getName()));
            this.container.setContentDescription(context.getString(C1790R.string.zs_request_attachment_carousel_attachment_accessibility, stateRequestAttachment.getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder.class */
    public static class ImageAttachmentViewHolder extends CarouselViewHolder {
        private final Picasso picasso;
        private final ImageView imageView = (ImageView) this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_image);
        private final View remove = this.itemView.findViewById(C1790R.C1793id.request_attachment_carousel_remove);
        private final View container = this.itemView.findViewById(C1790R.C1793id.request_attachment_image_carousel_container);

        ImageAttachmentViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup, Picasso picasso) {
            super(layoutInflater.inflate(C1790R.C1794layout.zs_request_carousel_image, viewGroup, false));
            this.picasso = picasso;
        }

        @Override // zendesk.support.request.AdapterAttachmentCarousel.CarouselViewHolder
        void bind(final StateRequestAttachment stateRequestAttachment, final CarouselViewHolder.OnRemoveListener onRemoveListener) {
            this.picasso.load(stateRequestAttachment.getParsedLocalUri()).fit().centerCrop().into(this.imageView);
            this.remove.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.AdapterAttachmentCarousel.ImageAttachmentViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onRemoveListener.onRemove(stateRequestAttachment);
                }
            });
            Context context = this.itemView.getContext();
            this.remove.setContentDescription(context.getString(C1790R.string.zs_request_attachment_carousel_remove_attachment_accessibility, stateRequestAttachment.getName()));
            this.container.setContentDescription(context.getString(C1790R.string.zs_request_attachment_carousel_attachment_accessibility, stateRequestAttachment.getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterAttachmentCarousel(AttachmentHelper attachmentHelper, Picasso picasso, ActionFactory actionFactory, Dispatcher dispatcher) {
        this.attachmentHelper = attachmentHelper;
        this.picasso = picasso;
        this.f1867af = actionFactory;
        this.dispatcher = dispatcher;
        setHasStableIds(true);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.attachmentHelper.getSelectedAttachments().size();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.attachmentHelper.getSelectedAttachments().get(i).getLocalUri().hashCode();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return UtilsAttachment.isImageAttachment(this.attachmentHelper.getSelectedAttachments().get(i)) ? 2 : 1;
    }

    public void onBindViewHolder(CarouselViewHolder carouselViewHolder, int i) {
        carouselViewHolder.bind(this.attachmentHelper.getSelectedAttachments().get(i), this.removeListener);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public CarouselViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 1:
                return new FileAttachmentViewHolder(from, viewGroup);
            case 2:
                return new ImageAttachmentViewHolder(from, viewGroup, this.picasso);
            default:
                return null;
        }
    }
}
