package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.exoplayer2.text.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b.class */
public final class C11356b {

    /* renamed from: a */
    public static final C11356b f37411a;

    /* renamed from: b */
    public final CharSequence f37412b;

    /* renamed from: c */
    public final Layout.Alignment f37413c;

    /* renamed from: d */
    public final Bitmap f37414d;

    /* renamed from: e */
    public final float f37415e;

    /* renamed from: f */
    public final int f37416f;

    /* renamed from: g */
    public final int f37417g;

    /* renamed from: h */
    public final float f37418h;

    /* renamed from: i */
    public final int f37419i;

    /* renamed from: j */
    public final float f37420j;

    /* renamed from: k */
    public final float f37421k;

    /* renamed from: l */
    public final boolean f37422l;

    /* renamed from: m */
    public final int f37423m;

    /* renamed from: n */
    public final int f37424n;

    /* renamed from: o */
    public final float f37425o;

    /* renamed from: p */
    public final int f37426p;

    /* renamed from: q */
    public final float f37427q;

    /* renamed from: com.google.android.exoplayer2.text.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b$a.class */
    public static final class C11358a {

        /* renamed from: a */
        public CharSequence f37428a;

        /* renamed from: b */
        public Bitmap f37429b;

        /* renamed from: c */
        public Layout.Alignment f37430c;

        /* renamed from: d */
        public int f37431d;

        /* renamed from: e */
        public float f37432e;

        /* renamed from: f */
        public int f37433f;

        /* renamed from: g */
        public float f37434g;

        /* renamed from: h */
        public float f37435h;

        /* renamed from: i */
        public boolean f37436i;

        /* renamed from: j */
        public int f37437j;

        /* renamed from: k */
        public int f37438k;

        /* renamed from: l */
        public float f37439l;

        /* renamed from: m */
        private float f37440m;

        /* renamed from: n */
        private int f37441n;

        /* renamed from: o */
        private int f37442o;

        /* renamed from: p */
        private float f37443p;

        public C11358a() {
            this.f37428a = null;
            this.f37429b = null;
            this.f37430c = null;
            this.f37440m = -3.4028235E38f;
            this.f37441n = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f37431d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f37432e = -3.4028235E38f;
            this.f37433f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f37442o = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f37443p = -3.4028235E38f;
            this.f37434g = -3.4028235E38f;
            this.f37435h = -3.4028235E38f;
            this.f37436i = false;
            this.f37437j = -16777216;
            this.f37438k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        private C11358a(C11356b c11356b) {
            this.f37428a = c11356b.f37412b;
            this.f37429b = c11356b.f37414d;
            this.f37430c = c11356b.f37413c;
            this.f37440m = c11356b.f37415e;
            this.f37441n = c11356b.f37416f;
            this.f37431d = c11356b.f37417g;
            this.f37432e = c11356b.f37418h;
            this.f37433f = c11356b.f37419i;
            this.f37442o = c11356b.f37424n;
            this.f37443p = c11356b.f37425o;
            this.f37434g = c11356b.f37420j;
            this.f37435h = c11356b.f37421k;
            this.f37436i = c11356b.f37422l;
            this.f37437j = c11356b.f37423m;
            this.f37438k = c11356b.f37426p;
            this.f37439l = c11356b.f37427q;
        }

        /* renamed from: a */
        public final C11358a m20743a(float f, int i) {
            this.f37440m = f;
            this.f37441n = i;
            return this;
        }

        /* renamed from: a */
        public final C11356b m20744a() {
            return new C11356b(this.f37428a, this.f37430c, this.f37429b, this.f37440m, this.f37441n, this.f37431d, this.f37432e, this.f37433f, this.f37442o, this.f37443p, this.f37434g, this.f37435h, this.f37436i, this.f37437j, this.f37438k, this.f37439l);
        }

        /* renamed from: b */
        public final C11358a m20742b(float f, int i) {
            this.f37443p = f;
            this.f37442o = i;
            return this;
        }
    }

    static {
        C11358a c11358a = new C11358a();
        c11358a.f37428a = "";
        f37411a = c11358a.m20744a();
    }

    @Deprecated
    public C11356b(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f);
    }

    @Deprecated
    public C11356b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    @Deprecated
    public C11356b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, i4, f4, f3, -3.4028235E38f, false, -16777216, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BitmapDescriptorFactory.HUE_RED);
    }

    @Deprecated
    public C11356b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f, f3, -3.4028235E38f, z, i4, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BitmapDescriptorFactory.HUE_RED);
    }

    private C11356b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            C11593a.m20020b(bitmap);
        } else {
            C11593a.m20022a(bitmap == null);
        }
        this.f37412b = charSequence;
        this.f37413c = alignment;
        this.f37414d = bitmap;
        this.f37415e = f;
        this.f37416f = i;
        this.f37417g = i2;
        this.f37418h = f2;
        this.f37419i = i3;
        this.f37420j = f4;
        this.f37421k = f5;
        this.f37422l = z;
        this.f37423m = i5;
        this.f37424n = i4;
        this.f37425o = f3;
        this.f37426p = i6;
        this.f37427q = f6;
    }

    /* renamed from: a */
    public final C11358a m20745a() {
        return new C11358a();
    }
}
