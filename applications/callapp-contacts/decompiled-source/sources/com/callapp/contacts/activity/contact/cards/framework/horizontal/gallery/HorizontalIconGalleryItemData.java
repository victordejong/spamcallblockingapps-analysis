package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.widget.ImageView;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData.class */
public class HorizontalIconGalleryItemData extends HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl {

    /* renamed from: a  reason: collision with root package name */
    private final int f11870a;

    /* renamed from: b  reason: collision with root package name */
    private final float f11871b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11872c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11873d;
    private final Integer e;
    private final int f;
    private final boolean g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final ImageView.ScaleType l;
    private final boolean m;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public int f11874a;

        /* renamed from: b  reason: collision with root package name */
        public float f11875b;

        /* renamed from: c  reason: collision with root package name */
        public int f11876c;

        /* renamed from: d  reason: collision with root package name */
        public String f11877d;
        public Integer e;
        public boolean f;
        private int l = 0;
        private int m = 0;
        public int g = 0;
        public int h = 0;
        public int i = 0;
        public ImageView.ScaleType j = ImageView.ScaleType.CENTER;
        public boolean k = false;

        public final HorizontalIconGalleryItemData a() {
            return new HorizontalIconGalleryItemData(this);
        }
    }

    public HorizontalIconGalleryItemData(Builder builder) {
        this.f11870a = builder.f11874a;
        this.f11872c = builder.f11876c;
        this.f11873d = builder.f11877d;
        this.f11871b = builder.f11875b;
        this.e = builder.e;
        this.f = builder.l;
        this.g = builder.f;
        this.h = builder.m;
        this.i = builder.g;
        this.j = builder.h;
        this.k = builder.i;
        this.l = builder.j;
        this.m = builder.k;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public boolean dontTransform() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HorizontalIconGalleryItemData horizontalIconGalleryItemData = (HorizontalIconGalleryItemData) obj;
        if (this.e != horizontalIconGalleryItemData.e || this.f11872c != horizontalIconGalleryItemData.f11872c || this.f != horizontalIconGalleryItemData.f || this.h != horizontalIconGalleryItemData.h || !StringUtils.b(this.f11873d, horizontalIconGalleryItemData.f11873d) || this.i != horizontalIconGalleryItemData.i || this.j != horizontalIconGalleryItemData.j || this.k != horizontalIconGalleryItemData.k || this.l != horizontalIconGalleryItemData.l || this.m != horizontalIconGalleryItemData.m || this.f11871b != horizontalIconGalleryItemData.f11871b) {
            return false;
        }
        int i = this.f11870a;
        int i2 = horizontalIconGalleryItemData.f11870a;
        return i != 0 ? i == i2 : i2 == 0;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public Integer getBackgroundColor() {
        return this.e;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeBackgroundColor() {
        return this.k;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeResourceId() {
        return this.i;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeTintColor() {
        return this.j;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBorderColor() {
        return this.f;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBorderWidth() {
        return this.h;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getIconColorFilter() {
        return this.f11872c;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public float getIconPadding() {
        return this.f11871b;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public String getImageUrl() {
        return this.f11873d;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getResourcePhoto() {
        return this.f11870a;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl
    public ImageView.ScaleType getScaleType() {
        return this.l;
    }

    public int hashCode() {
        return ((((((((((((((this.e.intValue() + 0) * 31) + this.f) * 31) + this.f11872c) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31) + this.k) * 31) + (this.m ? 1 : 0);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl
    public boolean isMarked() {
        return this.m;
    }
}
