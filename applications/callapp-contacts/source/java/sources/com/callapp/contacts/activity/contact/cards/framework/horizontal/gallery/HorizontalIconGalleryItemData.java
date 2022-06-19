package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.widget.ImageView;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData.class */
public class HorizontalIconGalleryItemData extends HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl {

    /* renamed from: a */
    private final int f21383a;

    /* renamed from: b */
    private final float f21384b;

    /* renamed from: c */
    private final int f21385c;

    /* renamed from: d */
    private final String f21386d;

    /* renamed from: e */
    private final Integer f21387e;

    /* renamed from: f */
    private final int f21388f;

    /* renamed from: g */
    private final boolean f21389g;

    /* renamed from: h */
    private final int f21390h;

    /* renamed from: i */
    private final int f21391i;

    /* renamed from: j */
    private final int f21392j;

    /* renamed from: k */
    private final int f21393k;

    /* renamed from: l */
    private final ImageView.ScaleType f21394l;

    /* renamed from: m */
    private final boolean f21395m;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public int f21396a;

        /* renamed from: b */
        public float f21397b;

        /* renamed from: c */
        public int f21398c;

        /* renamed from: d */
        public String f21399d;

        /* renamed from: e */
        public Integer f21400e;

        /* renamed from: f */
        public boolean f21401f;

        /* renamed from: l */
        private int f21407l = 0;

        /* renamed from: m */
        private int f21408m = 0;

        /* renamed from: g */
        public int f21402g = 0;

        /* renamed from: h */
        public int f21403h = 0;

        /* renamed from: i */
        public int f21404i = 0;

        /* renamed from: j */
        public ImageView.ScaleType f21405j = ImageView.ScaleType.CENTER;

        /* renamed from: k */
        public boolean f21406k = false;

        /* renamed from: a */
        public final HorizontalIconGalleryItemData m31134a() {
            return new HorizontalIconGalleryItemData(this);
        }
    }

    public HorizontalIconGalleryItemData(Builder builder) {
        this.f21383a = builder.f21396a;
        this.f21385c = builder.f21398c;
        this.f21386d = builder.f21399d;
        this.f21384b = builder.f21397b;
        this.f21387e = builder.f21400e;
        this.f21388f = builder.f21407l;
        this.f21389g = builder.f21401f;
        this.f21390h = builder.f21408m;
        this.f21391i = builder.f21402g;
        this.f21392j = builder.f21403h;
        this.f21393k = builder.f21404i;
        this.f21394l = builder.f21405j;
        this.f21395m = builder.f21406k;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public boolean dontTransform() {
        return this.f21389g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HorizontalIconGalleryItemData horizontalIconGalleryItemData = (HorizontalIconGalleryItemData) obj;
        if (this.f21387e != horizontalIconGalleryItemData.f21387e || this.f21385c != horizontalIconGalleryItemData.f21385c || this.f21388f != horizontalIconGalleryItemData.f21388f || this.f21390h != horizontalIconGalleryItemData.f21390h || !StringUtils.m26042b(this.f21386d, horizontalIconGalleryItemData.f21386d) || this.f21391i != horizontalIconGalleryItemData.f21391i || this.f21392j != horizontalIconGalleryItemData.f21392j || this.f21393k != horizontalIconGalleryItemData.f21393k || this.f21394l != horizontalIconGalleryItemData.f21394l || this.f21395m != horizontalIconGalleryItemData.f21395m || this.f21384b != horizontalIconGalleryItemData.f21384b) {
            return false;
        }
        int i = this.f21383a;
        int i2 = horizontalIconGalleryItemData.f21383a;
        return i != 0 ? i == i2 : i2 == 0;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public Integer getBackgroundColor() {
        return this.f21387e;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeBackgroundColor() {
        return this.f21393k;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeResourceId() {
        return this.f21391i;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeTintColor() {
        return this.f21392j;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBorderColor() {
        return this.f21388f;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBorderWidth() {
        return this.f21390h;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getIconColorFilter() {
        return this.f21385c;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public float getIconPadding() {
        return this.f21384b;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public String getImageUrl() {
        return this.f21386d;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getResourcePhoto() {
        return this.f21383a;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl
    public ImageView.ScaleType getScaleType() {
        return this.f21394l;
    }

    public int hashCode() {
        return ((((((((((((((this.f21387e.intValue() + 0) * 31) + this.f21388f) * 31) + this.f21385c) * 31) + this.f21390h) * 31) + this.f21391i) * 31) + this.f21392j) * 31) + this.f21393k) * 31) + (this.f21395m ? 1 : 0);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl
    public boolean isMarked() {
        return this.f21395m;
    }
}
