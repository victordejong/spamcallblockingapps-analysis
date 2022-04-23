package com.callapp.contacts.activity.contact.cards;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard.class */
public abstract class ImageDuoCard extends ContactCard<ImageDuoViewHolder, Object> {
    private final ImageDuoObject.Builder duoItemBuilder = new ImageDuoObject.Builder();
    private ImageDuoObject itemData;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject.class */
    public static class ImageDuoObject extends DefaultListObject {

        /* renamed from: a  reason: collision with root package name */
        private final SingleImageObject f11631a;
        private final SingleImageObject g;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder.class */
        static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private SingleImageObject.Builder f11632a = new SingleImageObject.Builder();

            /* renamed from: b  reason: collision with root package name */
            private SingleImageObject.Builder f11633b = new SingleImageObject.Builder();

            Builder() {
            }

            public SingleImageObject.Builder getLeftItemBuilder() {
                return this.f11632a;
            }

            public SingleImageObject.Builder getRightItemBuilder() {
                return this.f11633b;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc.class */
        public static class DualImageSrc {

            /* renamed from: a  reason: collision with root package name */
            private final Bitmap f11634a;

            /* renamed from: b  reason: collision with root package name */
            private final Bitmap f11635b;

            /* renamed from: c  reason: collision with root package name */
            private final int f11636c;

            /* renamed from: d  reason: collision with root package name */
            private final int f11637d;
            private final ImageView.ScaleType e;
            private final ImageView.ScaleType f;

            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder.class */
            static class Builder {

                /* renamed from: a  reason: collision with root package name */
                private Bitmap f11638a;

                /* renamed from: b  reason: collision with root package name */
                private Bitmap f11639b;

                /* renamed from: c  reason: collision with root package name */
                private int f11640c;

                /* renamed from: d  reason: collision with root package name */
                private int f11641d;
                private ImageView.ScaleType e = ImageView.ScaleType.CENTER_CROP;
                private ImageView.ScaleType f = ImageView.ScaleType.FIT_XY;

                Builder() {
                }
            }

            DualImageSrc(Builder builder) {
                this.f11634a = builder.f11638a;
                this.f11635b = builder.f11639b;
                this.f11636c = builder.f11640c;
                this.f11637d = builder.f11641d;
                this.e = builder.e;
                this.f = builder.f;
            }

            public final boolean a() {
                return (this.f11634a == null && this.f11635b == null && this.f11636c == 0 && this.f11637d == 0) ? false : true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject.class */
        public static class SingleImageObject {

            /* renamed from: a  reason: collision with root package name */
            private final DualImageSrc f11642a;

            /* renamed from: b  reason: collision with root package name */
            private final int f11643b;

            /* renamed from: c  reason: collision with root package name */
            private final int f11644c;

            /* renamed from: d  reason: collision with root package name */
            private final String f11645d;
            private final View.OnClickListener e;
            private final boolean f;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder.class */
            public static class Builder {

                /* renamed from: a  reason: collision with root package name */
                String f11646a;

                /* renamed from: b  reason: collision with root package name */
                View.OnClickListener f11647b;

                /* renamed from: c  reason: collision with root package name */
                private final DualImageSrc.Builder f11648c = new DualImageSrc.Builder();

                /* renamed from: d  reason: collision with root package name */
                private int f11649d;
                private int e;
                private boolean f;

                Builder() {
                }

                public final Builder a() {
                    DualImageSrc.Builder builder = this.f11648c;
                    builder.f11638a = builder.f11639b = null;
                    DualImageSrc.Builder builder2 = this.f11648c;
                    builder2.f11640c = builder2.f11641d = 0;
                    return this;
                }

                public final Builder a(int i) {
                    this.f11649d = i;
                    this.e = -1;
                    return this;
                }

                public final Builder a(int i, int i2) {
                    DualImageSrc.Builder builder = this.f11648c;
                    builder.f11638a = builder.f11639b = null;
                    this.f11648c.f11640c = i;
                    this.f11648c.f11641d = i2;
                    return this;
                }

                public final Builder a(ImageView.ScaleType scaleType) {
                    this.f11648c.e = scaleType;
                    return this;
                }

                public final Builder b(ImageView.ScaleType scaleType) {
                    this.f11648c.f = scaleType;
                    return this;
                }

                public final boolean b() {
                    return (this.f11648c.f11640c == 0 && this.f11648c.f11641d == 0 && this.f11648c.f11638a == null && this.f11648c.f11639b == null) ? false : true;
                }

                public void setShouldShowItem(boolean z) {
                    this.f = z;
                }
            }

            private SingleImageObject(Builder builder) {
                this.f11642a = new DualImageSrc(builder.f11648c);
                this.f11643b = builder.f11649d;
                this.f11644c = builder.e;
                this.f11645d = builder.f11646a;
                this.e = builder.f11647b;
                this.f = builder.f;
            }
        }

        private ImageDuoObject(b bVar, Builder builder) {
            super(bVar);
            this.f11631a = new SingleImageObject(builder.f11632a);
            this.g = new SingleImageObject(builder.f11633b);
        }

        static /* synthetic */ boolean a(ImageDuoObject imageDuoObject) {
            SingleImageObject singleImageObject = imageDuoObject.f11631a;
            return singleImageObject != null && singleImageObject.f;
        }

        static /* synthetic */ boolean b(ImageDuoObject imageDuoObject) {
            SingleImageObject singleImageObject = imageDuoObject.g;
            return singleImageObject != null && singleImageObject.f;
        }

        static /* synthetic */ boolean e(ImageDuoObject imageDuoObject) {
            if (Activities.isOrientationLandscape()) {
                return true;
            }
            SingleImageObject singleImageObject = imageDuoObject.g;
            return !(singleImageObject != null && singleImageObject.f11642a != null && imageDuoObject.g.f11642a.a());
        }

        static /* synthetic */ boolean f(ImageDuoObject imageDuoObject) {
            if (Activities.isOrientationLandscape()) {
                return true;
            }
            SingleImageObject singleImageObject = imageDuoObject.f11631a;
            return !(singleImageObject != null && singleImageObject.f11642a != null && imageDuoObject.f11631a.f11642a.a());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder.class */
    public class ImageDuoViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private final View f11651b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f11652c;

        /* renamed from: d  reason: collision with root package name */
        private final ImageView f11653d;
        private final TextView e;
        private final View f;
        private final ImageView g;
        private final ImageView h;
        private final TextView i;

        private ImageDuoViewHolder(View view) {
            View findViewById = view.findViewById(2131363191);
            this.f11651b = findViewById;
            this.f11652c = (ImageView) findViewById.findViewById(2131363127);
            this.f11653d = (ImageView) findViewById.findViewById(2131363126);
            this.e = (TextView) findViewById.findViewById(2131363130);
            View findViewById2 = view.findViewById(2131363692);
            this.f = findViewById2;
            this.g = (ImageView) findViewById2.findViewById(2131363127);
            this.h = (ImageView) findViewById2.findViewById(2131363126);
            this.i = (TextView) findViewById2.findViewById(2131363130);
        }

        private static void a(ImageView imageView, int i, Integer num) {
            imageView.setVisibility(i == 0 ? 8 : 0);
            imageView.setImageResource(i);
            if (num == null) {
                return;
            }
            if (num.intValue() == 0) {
                imageView.clearColorFilter();
            } else {
                imageView.setColorFilter(new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN));
            }
        }

        private static void a(ImageView imageView, ImageDuoObject.DualImageSrc dualImageSrc, boolean z) {
            int i;
            Bitmap bitmap;
            if (!dualImageSrc.a()) {
                ImageUtils.a(imageView, 0, (ColorFilter) null);
                return;
            }
            if (z) {
                bitmap = dualImageSrc.f11635b;
                i = dualImageSrc.f11637d;
            } else {
                bitmap = dualImageSrc.f11634a;
                i = dualImageSrc.f11636c;
            }
            imageView.setScaleType(dualImageSrc.e);
            imageView.setScaleType(dualImageSrc.f);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            } else {
                imageView.setImageResource(i);
            }
        }

        private static void a(TextView textView, String str) {
            if (textView != null) {
                textView.setText(str);
            }
        }

        static /* synthetic */ void a(ImageDuoViewHolder imageDuoViewHolder, ImageDuoObject imageDuoObject) {
            a(imageDuoViewHolder.f11652c, imageDuoObject.f11631a.f11642a, ImageDuoObject.e(imageDuoObject));
            int i = 0;
            imageDuoViewHolder.f11651b.setVisibility(ImageDuoObject.a(imageDuoObject) ? 0 : 8);
            a(imageDuoViewHolder.f11653d, imageDuoObject.f11631a.f11643b, Integer.valueOf(imageDuoObject.f11631a.f11644c));
            a(imageDuoViewHolder.e, imageDuoObject.f11631a.f11645d);
            imageDuoViewHolder.f11652c.setOnClickListener(imageDuoObject.f11631a.e);
            a(imageDuoViewHolder.g, imageDuoObject.g.f11642a, ImageDuoObject.f(imageDuoObject));
            View view = imageDuoViewHolder.f;
            if (!ImageDuoObject.b(imageDuoObject)) {
                i = 8;
            }
            view.setVisibility(i);
            a(imageDuoViewHolder.h, imageDuoObject.g.f11643b, Integer.valueOf(imageDuoObject.g.f11644c));
            a(imageDuoViewHolder.i, imageDuoObject.g.f11645d);
            imageDuoViewHolder.g.setOnClickListener(imageDuoObject.g.e);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper.class */
    protected abstract class ItemHelper implements ContactDataChangeListener {
        private final View.OnClickListener itemClickedListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                ItemHelper.this.onItemClicked();
            }
        };

        /* JADX INFO: Access modifiers changed from: protected */
        public ItemHelper() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public View.OnClickListener getItemClickListener() {
            return this.itemClickedListener;
        }

        abstract void onItemClicked();

        abstract boolean shouldLoadItem(ContactData contactData);
    }

    public ImageDuoCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558680);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowCard(ImageDuoObject imageDuoObject) {
        if (imageDuoObject != null) {
            return ImageDuoObject.a(imageDuoObject) || ImageDuoObject.b(imageDuoObject);
        }
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return CallAppApplication.get().getResources().getDimensionPixelSize(2131165587);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageDuoObject.SingleImageObject.Builder getLeftItemBuilder() {
        return this.duoItemBuilder.getLeftItemBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageDuoObject.SingleImageObject.Builder getRightItemBuilder() {
        return this.duoItemBuilder.getRightItemBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(ImageDuoViewHolder imageDuoViewHolder) {
        ImageDuoViewHolder.a(imageDuoViewHolder, this.itemData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public ImageDuoViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new ImageDuoViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void updateCardData(Object obj, boolean z) {
        final ImageDuoObject imageDuoObject = new ImageDuoObject(this, this.duoItemBuilder);
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.ImageDuoCard.1
            @Override // java.lang.Runnable
            public void run() {
                ImageDuoCard.this.itemData = imageDuoObject;
                if (ImageDuoCard.this.shouldShowCard(imageDuoObject)) {
                    ImageDuoCard.this.showCard(true);
                } else {
                    ImageDuoCard.this.hideCard();
                }
            }
        });
    }
}
