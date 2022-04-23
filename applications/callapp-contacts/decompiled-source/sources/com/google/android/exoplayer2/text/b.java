package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f21733a;

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f21734b;

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f21735c;

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f21736d;
    public final float e;
    public final int f;
    public final int g;
    public final float h;
    public final int i;
    public final float j;
    public final float k;
    public final boolean l;
    public final int m;
    public final int n;
    public final float o;
    public final int p;
    public final float q;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public CharSequence f21738a;

        /* renamed from: b  reason: collision with root package name */
        public Bitmap f21739b;

        /* renamed from: c  reason: collision with root package name */
        public Layout.Alignment f21740c;

        /* renamed from: d  reason: collision with root package name */
        public int f21741d;
        public float e;
        public int f;
        public float g;
        public float h;
        public boolean i;
        public int j;
        public int k;
        public float l;
        private float m;
        private int n;
        private int o;
        private float p;

        public a() {
            this.f21738a = null;
            this.f21739b = null;
            this.f21740c = null;
            this.m = -3.4028235E38f;
            this.n = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f21741d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.e = -3.4028235E38f;
            this.f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.o = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.p = -3.4028235E38f;
            this.g = -3.4028235E38f;
            this.h = -3.4028235E38f;
            this.i = false;
            this.j = -16777216;
            this.k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        private a(b bVar) {
            this.f21738a = bVar.f21734b;
            this.f21739b = bVar.f21736d;
            this.f21740c = bVar.f21735c;
            this.m = bVar.e;
            this.n = bVar.f;
            this.f21741d = bVar.g;
            this.e = bVar.h;
            this.f = bVar.i;
            this.o = bVar.n;
            this.p = bVar.o;
            this.g = bVar.j;
            this.h = bVar.k;
            this.i = bVar.l;
            this.j = bVar.m;
            this.k = bVar.p;
            this.l = bVar.q;
        }

        public final a a(float f, int i) {
            this.m = f;
            this.n = i;
            return this;
        }

        public final b a() {
            return new b(this.f21738a, this.f21740c, this.f21739b, this.m, this.n, this.f21741d, this.e, this.f, this.o, this.p, this.g, this.h, this.i, this.j, this.k, this.l);
        }

        public final a b(float f, int i) {
            this.p = f;
            this.o = i;
            return this;
        }
    }

    static {
        a aVar = new a();
        aVar.f21738a = "";
        f21733a = aVar.a();
    }

    @Deprecated
    public b(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f);
    }

    @Deprecated
    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    @Deprecated
    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, i4, f4, f3, -3.4028235E38f, false, -16777216, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BitmapDescriptorFactory.HUE_RED);
    }

    @Deprecated
    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, -3.4028235E38f, f3, -3.4028235E38f, z, i4, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BitmapDescriptorFactory.HUE_RED);
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.b(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        this.f21734b = charSequence;
        this.f21735c = alignment;
        this.f21736d = bitmap;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = f2;
        this.i = i3;
        this.j = f4;
        this.k = f5;
        this.l = z;
        this.m = i5;
        this.n = i4;
        this.o = f3;
        this.p = i6;
        this.q = f6;
    }

    public final a a() {
        return new a();
    }
}
