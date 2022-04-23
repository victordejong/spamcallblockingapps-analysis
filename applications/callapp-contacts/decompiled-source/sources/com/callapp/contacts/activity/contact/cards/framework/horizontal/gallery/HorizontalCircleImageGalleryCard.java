package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.widget.AdapterView;
import android.widget.ImageView;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard.class */
public abstract class HorizontalCircleImageGalleryCard<Data extends PhotoPresentableData> extends HorizontalGalleryCard<Data> {

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData.class */
    public interface PhotoPresentableData {
        boolean dontTransform();

        Integer getBackgroundColor();

        int getBadgeBackgroundColor();

        int getBadgeResourceId();

        int getBadgeTintColor();

        int getBorderColor();

        int getBorderWidth();

        int getIconColorFilter();

        float getIconPadding();

        String getImageUrl();

        String getName();

        int getResourcePhoto();

        boolean isDefaultProfileImageUrl();
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl.class */
    public static class PhotoPresentableDataImpl implements PhotoPresentableData {
        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public boolean dontTransform() {
            return false;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public Integer getBackgroundColor() {
            return null;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getBadgeBackgroundColor() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getBadgeResourceId() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getBadgeTintColor() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getBorderColor() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getBorderWidth() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getIconColorFilter() {
            return 0;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public float getIconPadding() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public String getImageUrl() {
            return null;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public String getName() {
            return null;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public int getResourcePhoto() {
            return 0;
        }

        public ImageView.ScaleType getScaleType() {
            return ImageView.ScaleType.CENTER;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
        public boolean isDefaultProfileImageUrl() {
            return false;
        }

        public boolean isForce() {
            return false;
        }

        public boolean isMarked() {
            return false;
        }
    }

    public HorizontalCircleImageGalleryCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
    }

    public HorizontalCircleImageGalleryCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public HorizontalGalleryAdapter<Data, HorizontalRecyclerViewHolder> getGalleryAdapter() {
        return new PhotoGalleryAdapter(getDataList(), getOnItemClickedListener(), getOnItemLongClickedListener(), getItemLayoutResourceId());
    }

    protected int getItemLayoutResourceId() {
        return 2131558543;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    protected AdapterView.OnItemLongClickListener getOnItemLongClickedListener() {
        return null;
    }
}
