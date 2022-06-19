package com.callapp.contacts.activity.contact.cards.framework.simple;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.widget.ProfilePictureView;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject.class */
public class SimpleCardListObject extends DefaultListObject {

    /* renamed from: A */
    private final int f21464A;

    /* renamed from: B */
    private final View.OnClickListener f21465B;

    /* renamed from: C */
    private final int f21466C;

    /* renamed from: D */
    private final int f21467D;

    /* renamed from: E */
    private final int f21468E;

    /* renamed from: F */
    private final boolean f21469F;

    /* renamed from: G */
    private final View.OnClickListener f21470G;

    /* renamed from: H */
    private final Drawable f21471H;

    /* renamed from: I */
    private final View.OnClickListener f21472I;

    /* renamed from: J */
    private final int f21473J;

    /* renamed from: K */
    private final String f21474K;

    /* renamed from: L */
    private final String f21475L;

    /* renamed from: M */
    private final int f21476M;

    /* renamed from: N */
    private final View.OnClickListener f21477N;

    /* renamed from: O */
    private final int f21478O;

    /* renamed from: P */
    private final int f21479P;

    /* renamed from: Q */
    private final boolean f21480Q;

    /* renamed from: R */
    private final int f21481R;

    /* renamed from: S */
    private Drawable f21482S;

    /* renamed from: a */
    private final Drawable f21483a;

    /* renamed from: g */
    private final int f21484g;

    /* renamed from: h */
    private final Drawable f21485h;

    /* renamed from: i */
    private final View.OnClickListener f21486i;

    /* renamed from: j */
    private final View.OnLongClickListener f21487j;

    /* renamed from: k */
    private final String f21488k;

    /* renamed from: l */
    private final ProfilePictureView f21489l;

    /* renamed from: m */
    private final int f21490m;

    /* renamed from: n */
    private final int f21491n;

    /* renamed from: o */
    private final int f21492o;

    /* renamed from: p */
    private final String f21493p;

    /* renamed from: q */
    private final int f21494q;

    /* renamed from: r */
    private final int f21495r;

    /* renamed from: s */
    private int f21496s;

    /* renamed from: t */
    private final int f21497t;

    /* renamed from: u */
    private final Integer f21498u;

    /* renamed from: v */
    private final int f21499v;

    /* renamed from: w */
    private final PorterDuff.Mode f21500w;

    /* renamed from: x */
    private final int f21501x;

    /* renamed from: y */
    private final int f21502y;

    /* renamed from: z */
    private final boolean f21503z;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder.class */
    public static class Builder {

        /* renamed from: G */
        public int f21510G;

        /* renamed from: H */
        public boolean f21511H;

        /* renamed from: K */
        private Drawable f21514K;

        /* renamed from: M */
        private Drawable f21516M;

        /* renamed from: N */
        private Drawable f21517N;

        /* renamed from: a */
        public Drawable f21518a;

        /* renamed from: b */
        public View.OnClickListener f21519b;

        /* renamed from: c */
        public View.OnLongClickListener f21520c;

        /* renamed from: d */
        public String f21521d;

        /* renamed from: g */
        public String f21524g;

        /* renamed from: j */
        public int f21527j;

        /* renamed from: k */
        public View.OnClickListener f21528k;

        /* renamed from: l */
        public int f21529l;

        /* renamed from: m */
        public int f21530m;

        /* renamed from: n */
        public int f21531n;

        /* renamed from: o */
        public int f21532o;

        /* renamed from: p */
        public int f21533p;

        /* renamed from: q */
        public int f21534q;

        /* renamed from: r */
        public String f21535r;

        /* renamed from: s */
        public String f21536s;

        /* renamed from: t */
        public View.OnClickListener f21537t;

        /* renamed from: u */
        public View.OnClickListener f21538u;

        /* renamed from: v */
        public View.OnClickListener f21539v;

        /* renamed from: x */
        public Integer f21541x;

        /* renamed from: y */
        public int f21542y;

        /* renamed from: z */
        public PorterDuff.Mode f21543z;

        /* renamed from: J */
        private int f21513J = 16;

        /* renamed from: e */
        public int f21522e = 2131951863;

        /* renamed from: f */
        public int f21523f = 2131100140;

        /* renamed from: L */
        private ProfilePictureView f21515L = new ProfilePictureView(CallAppApplication.get());

        /* renamed from: h */
        public int f21525h = 2131951897;

        /* renamed from: i */
        public int f21526i = 2131100108;

        /* renamed from: w */
        public int f21540w = 0;

        /* renamed from: A */
        public int f21504A = 0;

        /* renamed from: B */
        public int f21505B = 8;

        /* renamed from: C */
        public boolean f21506C = false;

        /* renamed from: D */
        public boolean f21507D = false;

        /* renamed from: E */
        public int f21508E = 8;

        /* renamed from: F */
        public int f21509F = 8;

        /* renamed from: I */
        public int f21512I = 0;

        /* renamed from: a */
        public final Builder m31089a(int i) {
            this.f21516M = C0790b.m44502a(CallAppApplication.get(), i);
            return this;
        }

        /* renamed from: a */
        public final SimpleCardListObject m31087a(C18073b c18073b) {
            return new SimpleCardListObject(c18073b, this);
        }
    }

    protected SimpleCardListObject(C18073b c18073b, Builder builder) {
        super(c18073b);
        this.f21486i = builder.f21519b;
        this.f21487j = builder.f21520c;
        this.f21488k = builder.f21521d;
        this.f21493p = builder.f21524g;
        this.f21482S = builder.f21516M;
        this.f21496s = builder.f21527j;
        this.f21472I = builder.f21528k;
        this.f21473J = builder.f21529l;
        this.f21501x = builder.f21530m;
        this.f21466C = builder.f21531n;
        this.f21476M = builder.f21532o;
        this.f21464A = builder.f21533p;
        this.f21468E = builder.f21534q;
        this.f21469F = builder.f21507D;
        this.f21474K = builder.f21535r;
        this.f21475L = builder.f21536s;
        this.f21477N = builder.f21537t;
        this.f21465B = builder.f21538u;
        this.f21470G = builder.f21539v;
        this.f21483a = builder.f21518a;
        this.f21491n = builder.f21522e;
        this.f21489l = builder.f21515L;
        this.f21492o = builder.f21523f;
        this.f21494q = builder.f21525h;
        this.f21495r = builder.f21526i;
        this.f21485h = builder.f21514K;
        this.f21497t = builder.f21540w;
        this.f21498u = builder.f21541x;
        this.f21499v = builder.f21542y;
        this.f21500w = builder.f21543z;
        this.f21490m = builder.f21509F;
        this.f21478O = builder.f21504A;
        this.f21502y = builder.f21505B;
        this.f21503z = builder.f21506C;
        this.f21467D = builder.f21508E;
        this.f21484g = builder.f21513J;
        this.f21479P = builder.f21510G;
        this.f21471H = builder.f21517N;
        this.f21480Q = builder.f21511H;
        this.f21481R = builder.f21512I;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SimpleCardListObject simpleCardListObject = (SimpleCardListObject) obj;
        return this.f21484g == simpleCardListObject.f21484g && this.f21491n == simpleCardListObject.f21491n && this.f21494q == simpleCardListObject.f21494q && this.f21496s == simpleCardListObject.f21496s && this.f21473J == simpleCardListObject.f21473J && this.f21476M == simpleCardListObject.f21476M && this.f21497t == simpleCardListObject.f21497t && this.f21498u == simpleCardListObject.f21498u && this.f21499v == simpleCardListObject.f21499v && this.f21478O == simpleCardListObject.f21478O && this.f21479P == simpleCardListObject.f21479P && Objects.equals(this.f21488k, simpleCardListObject.f21488k) && Objects.equals(this.f21493p, simpleCardListObject.f21493p);
    }

    public Integer getBackgroundColor() {
        return this.f21498u;
    }

    public Drawable getBackgroundDrawable() {
        return this.f21483a;
    }

    public int getCardContentGravity() {
        return this.f21484g;
    }

    public int getColorFilter() {
        return this.f21499v;
    }

    public PorterDuff.Mode getColorFilterMode() {
        return this.f21500w;
    }

    public View.OnClickListener getEndIconClickListener() {
        return this.f21470G;
    }

    public boolean getEndIconIsEnable() {
        return this.f21469F;
    }

    public int getEndIconResId() {
        return this.f21466C;
    }

    public int getEndIconTintColor() {
        return this.f21468E;
    }

    public int getEndIconVisibility() {
        return this.f21467D;
    }

    public int getFirstItemSubTitleColor() {
        return this.f21495r;
    }

    public int getFirstItemSubTitleStyle() {
        return this.f21494q;
    }

    public int getFirstItemTitleColor() {
        return this.f21492o;
    }

    public int getFirstItemTitleStyle() {
        return this.f21491n;
    }

    public String getImageUrl() {
        return null;
    }

    public View.OnClickListener getLeftIconClickListener() {
        return this.f21472I;
    }

    public Drawable getLeftIconDefaultDrawable() {
        return this.f21471H;
    }

    public Drawable getLeftIconDrawable() {
        return this.f21482S;
    }

    public int getLeftIconTintColor() {
        return this.f21496s;
    }

    public int getLeftIconVisibility() {
        return this.f21497t;
    }

    public String getLoadedImageUrl() {
        return null;
    }

    public View.OnClickListener getMiddleIconClickListener() {
        return this.f21465B;
    }

    public boolean getMiddleIconEnabled() {
        return this.f21503z;
    }

    public int getMiddleIconResId() {
        return this.f21501x;
    }

    public int getMiddleIconTintColor() {
        return this.f21464A;
    }

    public int getMiddleIconVisibility() {
        return this.f21502y;
    }

    public Pair<String, String> getProfilePicturePhotoAndName() {
        return Pair.create(this.f21474K, this.f21475L);
    }

    public int getProfilePictureViewVisibility() {
        return this.f21490m;
    }

    public View.OnClickListener getRightIconClickListener() {
        return this.f21477N;
    }

    public int getRightIconResId() {
        return this.f21473J;
    }

    public int getRightIconTintColor() {
        return this.f21476M;
    }

    public int getRightIconVisibility() {
        return this.f21478O;
    }

    public View.OnClickListener getRowClickListener() {
        return this.f21486i;
    }

    public View.OnLongClickListener getRowLongClickListener() {
        return this.f21487j;
    }

    public int getSubTextIconResId() {
        return this.f21479P;
    }

    public String getSubtitle() {
        return this.f21493p;
    }

    public Drawable getTextBackgroundDrawable() {
        return this.f21485h;
    }

    public String getTitle() {
        return this.f21488k;
    }

    public int getViewHeight() {
        return this.f21481R;
    }

    public int hashCode() {
        int i = this.f21484g;
        String str = this.f21488k;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i3 = this.f21491n;
        String str2 = this.f21493p;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((((((((((((((((((i * 31) + hashCode) * 31) + i3) * 31) + i2) * 31) + this.f21494q) * 31) + this.f21496s) * 31) + this.f21473J) * 31) + this.f21476M) * 31) + this.f21497t) * 31) + this.f21498u.intValue()) * 31) + this.f21478O) * 31) + this.f21479P;
    }

    public boolean isTitleAllCaps() {
        return this.f21480Q;
    }

    public void setLeftIconDrawable(Drawable drawable) {
        this.f21482S = drawable;
    }

    public void setLeftImage(Drawable drawable) {
        setLeftIconDrawable(drawable);
    }

    public void setLoadedImageUrl(String str) {
    }
}
