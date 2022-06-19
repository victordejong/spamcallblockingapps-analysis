package com.facebook.p105c.p107b;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.p105c.p107b.AbstractC1970i;
/* renamed from: com.facebook.c.b.f */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/f.class */
public final class C1963f extends AbstractC1970i<C1963f, C1965a> {
    public static final Parcelable.Creator<C1963f> CREATOR = new Parcelable.Creator<C1963f>() { // from class: com.facebook.c.b.f.1
        /* renamed from: a */
        public C1963f createFromParcel(Parcel parcel) {
            return new C1963f(parcel);
        }

        /* renamed from: a */
        public C1963f[] newArray(int i) {
            return new C1963f[i];
        }
    };

    /* renamed from: com.facebook.c.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c/b/f$a.class */
    public static final class C1965a extends AbstractC1970i.AbstractC1971a<C1963f, C1965a> {
        /* renamed from: a */
        public C1965a m15746a(Parcel parcel) {
            return mo15733a((C1963f) parcel.readParcelable(C1963f.class.getClassLoader()));
        }

        /* renamed from: a */
        public C1965a mo15733a(C1963f c1963f) {
            return c1963f == null ? this : ((C1965a) super.mo15733a((C1965a) c1963f)).m15744a(c1963f.m15750a());
        }

        /* renamed from: a */
        public C1965a m15744a(String str) {
            m15732a("og:type", str);
            return this;
        }

        /* renamed from: a */
        public C1963f m15747a() {
            return new C1963f(this);
        }
    }

    C1963f(Parcel parcel) {
        super(parcel);
    }

    private C1963f(C1965a c1965a) {
        super(c1965a);
    }

    /* renamed from: a */
    public String m15750a() {
        return m15736b("og:type");
    }
}
