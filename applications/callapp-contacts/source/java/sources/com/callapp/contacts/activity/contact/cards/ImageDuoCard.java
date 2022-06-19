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
import it.gmariotti.cardslib.library.p510a.C18073b;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard.class */
public abstract class ImageDuoCard extends ContactCard<ImageDuoViewHolder, Object> {
    private final ImageDuoObject.Builder duoItemBuilder = new ImageDuoObject.Builder();
    private ImageDuoObject itemData;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject.class */
    public static class ImageDuoObject extends DefaultListObject {

        /* renamed from: a */
        private final SingleImageObject f21074a;

        /* renamed from: g */
        private final SingleImageObject f21075g;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder.class */
        public static class Builder {

            /* renamed from: a */
            private SingleImageObject.Builder f21076a = new SingleImageObject.Builder();

            /* renamed from: b */
            private SingleImageObject.Builder f21077b = new SingleImageObject.Builder();

            Builder() {
            }

            public SingleImageObject.Builder getLeftItemBuilder() {
                return this.f21076a;
            }

            public SingleImageObject.Builder getRightItemBuilder() {
                return this.f21077b;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc.class */
        public static class DualImageSrc {

            /* renamed from: a */
            private final Bitmap f21078a;

            /* renamed from: b */
            private final Bitmap f21079b;

            /* renamed from: c */
            private final int f21080c;

            /* renamed from: d */
            private final int f21081d;

            /* renamed from: e */
            private final ImageView.ScaleType f21082e;

            /* renamed from: f */
            private final ImageView.ScaleType f21083f;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$DualImageSrc$Builder.class */
            public static class Builder {

                /* renamed from: a */
                private Bitmap f21084a;

                /* renamed from: b */
                private Bitmap f21085b;

                /* renamed from: c */
                private int f21086c;

                /* renamed from: d */
                private int f21087d;

                /* renamed from: e */
                private ImageView.ScaleType f21088e = ImageView.ScaleType.CENTER_CROP;

                /* renamed from: f */
                private ImageView.ScaleType f21089f = ImageView.ScaleType.FIT_XY;

                Builder() {
                }
            }

            DualImageSrc(Builder builder) {
                this.f21078a = builder.f21084a;
                this.f21079b = builder.f21085b;
                this.f21080c = builder.f21086c;
                this.f21081d = builder.f21087d;
                this.f21082e = builder.f21088e;
                this.f21083f = builder.f21089f;
            }

            /* renamed from: a */
            public final boolean m31224a() {
                return (this.f21078a == null && this.f21079b == null && this.f21080c == 0 && this.f21081d == 0) ? false : true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject.class */
        public static class SingleImageObject {

            /* renamed from: a */
            private final DualImageSrc f21090a;

            /* renamed from: b */
            private final int f21091b;

            /* renamed from: c */
            private final int f21092c;

            /* renamed from: d */
            private final String f21093d;

            /* renamed from: e */
            private final View.OnClickListener f21094e;

            /* renamed from: f */
            private final boolean f21095f;

            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder.class */
            public static class Builder {

                /* renamed from: a */
                String f21096a;

                /* renamed from: b */
                View.OnClickListener f21097b;

                /* renamed from: c */
                private final DualImageSrc.Builder f21098c = new DualImageSrc.Builder();

                /* renamed from: d */
                private int f21099d;

                /* renamed from: e */
                private int f21100e;

                /* renamed from: f */
                private boolean f21101f;

                Builder() {
                }

                /* renamed from: a */
                public final Builder m31199a() {
                    DualImageSrc.Builder builder = this.f21098c;
                    builder.f21084a = builder.f21085b = null;
                    DualImageSrc.Builder builder2 = this.f21098c;
                    builder2.f21086c = builder2.f21087d = 0;
                    return this;
                }

                /* renamed from: a */
                public final Builder m31198a(int i) {
                    this.f21099d = i;
                    this.f21100e = -1;
                    return this;
                }

                /* renamed from: a */
                public final Builder m31197a(int i, int i2) {
                    DualImageSrc.Builder builder = this.f21098c;
                    builder.f21084a = builder.f21085b = null;
                    this.f21098c.f21086c = i;
                    this.f21098c.f21087d = i2;
                    return this;
                }

                /* renamed from: a */
                public final Builder m31196a(ImageView.ScaleType scaleType) {
                    this.f21098c.f21088e = scaleType;
                    return this;
                }

                /* renamed from: b */
                public final Builder m31193b(ImageView.ScaleType scaleType) {
                    this.f21098c.f21089f = scaleType;
                    return this;
                }

                /* renamed from: b */
                public final boolean m31194b() {
                    return (this.f21098c.f21086c == 0 && this.f21098c.f21087d == 0 && this.f21098c.f21084a == null && this.f21098c.f21085b == null) ? false : true;
                }

                public void setShouldShowItem(boolean z) {
                    this.f21101f = z;
                }
            }

            private SingleImageObject(Builder builder) {
                this.f21090a = new DualImageSrc(builder.f21098c);
                this.f21091b = builder.f21099d;
                this.f21092c = builder.f21100e;
                this.f21093d = builder.f21096a;
                this.f21094e = builder.f21097b;
                this.f21095f = builder.f21101f;
            }
        }

        private ImageDuoObject(C18073b c18073b, Builder builder) {
            super(c18073b);
            this.f21074a = new SingleImageObject(builder.f21076a);
            this.f21075g = new SingleImageObject(builder.f21077b);
        }

        /* renamed from: a */
        static /* synthetic */ boolean m31232a(ImageDuoObject imageDuoObject) {
            SingleImageObject singleImageObject = imageDuoObject.f21074a;
            return singleImageObject != null && singleImageObject.f21095f;
        }

        /* renamed from: b */
        static /* synthetic */ boolean m31231b(ImageDuoObject imageDuoObject) {
            SingleImageObject singleImageObject = imageDuoObject.f21075g;
            return singleImageObject != null && singleImageObject.f21095f;
        }

        /* renamed from: e */
        static /* synthetic */ boolean m31228e(ImageDuoObject imageDuoObject) {
            if (!Activities.isOrientationLandscape()) {
                SingleImageObject singleImageObject = imageDuoObject.f21075g;
                return !(singleImageObject != null && singleImageObject.f21090a != null && imageDuoObject.f21075g.f21090a.m31224a());
            }
            return true;
        }

        /* renamed from: f */
        static /* synthetic */ boolean m31227f(ImageDuoObject imageDuoObject) {
            if (!Activities.isOrientationLandscape()) {
                SingleImageObject singleImageObject = imageDuoObject.f21074a;
                return !(singleImageObject != null && singleImageObject.f21090a != null && imageDuoObject.f21074a.f21090a.m31224a());
            }
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder.class */
    public class ImageDuoViewHolder {

        /* renamed from: b */
        private final View f21103b;

        /* renamed from: c */
        private final ImageView f21104c;

        /* renamed from: d */
        private final ImageView f21105d;

        /* renamed from: e */
        private final TextView f21106e;

        /* renamed from: f */
        private final View f21107f;

        /* renamed from: g */
        private final ImageView f21108g;

        /* renamed from: h */
        private final ImageView f21109h;

        /* renamed from: i */
        private final TextView f21110i;

        private ImageDuoViewHolder(View view) {
            ImageDuoCard.this = r5;
            View findViewById = view.findViewById(2131363191);
            this.f21103b = findViewById;
            this.f21104c = (ImageView) findViewById.findViewById(2131363127);
            this.f21105d = (ImageView) findViewById.findViewById(2131363126);
            this.f21106e = (TextView) findViewById.findViewById(2131363130);
            View findViewById2 = view.findViewById(2131363692);
            this.f21107f = findViewById2;
            this.f21108g = (ImageView) findViewById2.findViewById(2131363127);
            this.f21109h = (ImageView) findViewById2.findViewById(2131363126);
            this.f21110i = (TextView) findViewById2.findViewById(2131363130);
        }

        /* renamed from: a */
        private static void m31187a(ImageView imageView, int i, Integer num) {
            imageView.setVisibility(i == 0 ? 8 : 0);
            imageView.setImageResource(i);
            if (num != null) {
                if (num.intValue() == 0) {
                    imageView.clearColorFilter();
                } else {
                    imageView.setColorFilter(new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN));
                }
            }
        }

        /* renamed from: a */
        private static void m31186a(ImageView imageView, ImageDuoObject.DualImageSrc dualImageSrc, boolean z) {
            int i;
            Bitmap bitmap;
            if (!dualImageSrc.m31224a()) {
                ImageUtils.m27529a(imageView, 0, (ColorFilter) null);
                return;
            }
            if (z) {
                bitmap = dualImageSrc.f21079b;
                i = dualImageSrc.f21081d;
            } else {
                bitmap = dualImageSrc.f21078a;
                i = dualImageSrc.f21080c;
            }
            imageView.setScaleType(dualImageSrc.f21082e);
            imageView.setScaleType(dualImageSrc.f21083f);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            } else {
                imageView.setImageResource(i);
            }
        }

        /* renamed from: a */
        private static void m31185a(TextView textView, String str) {
            if (textView != null) {
                textView.setText(str);
            }
        }

        /* renamed from: a */
        static /* synthetic */ void m31184a(ImageDuoViewHolder imageDuoViewHolder, ImageDuoObject imageDuoObject) {
            m31186a(imageDuoViewHolder.f21104c, imageDuoObject.f21074a.f21090a, ImageDuoObject.m31228e(imageDuoObject));
            imageDuoViewHolder.f21103b.setVisibility(ImageDuoObject.m31232a(imageDuoObject) ? 0 : 8);
            m31187a(imageDuoViewHolder.f21105d, imageDuoObject.f21074a.f21091b, Integer.valueOf(imageDuoObject.f21074a.f21092c));
            m31185a(imageDuoViewHolder.f21106e, imageDuoObject.f21074a.f21093d);
            imageDuoViewHolder.f21104c.setOnClickListener(imageDuoObject.f21074a.f21094e);
            m31186a(imageDuoViewHolder.f21108g, imageDuoObject.f21075g.f21090a, ImageDuoObject.m31227f(imageDuoObject));
            imageDuoViewHolder.f21107f.setVisibility(ImageDuoObject.m31231b(imageDuoObject) ? 0 : 8);
            m31187a(imageDuoViewHolder.f21109h, imageDuoObject.f21075g.f21091b, Integer.valueOf(imageDuoObject.f21075g.f21092c));
            m31185a(imageDuoViewHolder.f21110i, imageDuoObject.f21075g.f21093d);
            imageDuoViewHolder.f21108g.setOnClickListener(imageDuoObject.f21075g.f21094e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper.class */
    public abstract class ItemHelper implements ContactDataChangeListener {
        private final View.OnClickListener itemClickedListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ItemHelper.this.onItemClicked();
            }
        };

        public ItemHelper() {
            ImageDuoCard.this = r6;
        }

        public View.OnClickListener getItemClickListener() {
            return this.itemClickedListener;
        }

        abstract void onItemClicked();

        abstract boolean shouldLoadItem(ContactData contactData);
    }

    public ImageDuoCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558680);
    }

    public boolean shouldShowCard(ImageDuoObject imageDuoObject) {
        if (imageDuoObject != null) {
            return ImageDuoObject.m31232a(imageDuoObject) || ImageDuoObject.m31231b(imageDuoObject);
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

    public ImageDuoObject.SingleImageObject.Builder getLeftItemBuilder() {
        return this.duoItemBuilder.getLeftItemBuilder();
    }

    public ImageDuoObject.SingleImageObject.Builder getRightItemBuilder() {
        return this.duoItemBuilder.getRightItemBuilder();
    }

    public void onBindViewHolder(ImageDuoViewHolder imageDuoViewHolder) {
        ImageDuoViewHolder.m31184a(imageDuoViewHolder, this.itemData);
    }

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
