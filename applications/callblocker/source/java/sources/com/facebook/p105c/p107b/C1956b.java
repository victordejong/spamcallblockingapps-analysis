package com.facebook.p105c.p107b;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.facebook.c.b.b */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/b.class */
public class C1956b implements AbstractC1962e {
    public static final Parcelable.Creator<C1956b> CREATOR = new Parcelable.Creator<C1956b>() { // from class: com.facebook.c.b.b.1
        /* renamed from: a */
        public C1956b createFromParcel(Parcel parcel) {
            return new C1956b(parcel);
        }

        /* renamed from: a */
        public C1956b[] newArray(int i) {
            return new C1956b[i];
        }
    };

    /* renamed from: a */
    private final String f5878a;

    /* renamed from: com.facebook.c.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c/b/b$a.class */
    public static class C1958a {

        /* renamed from: a */
        private String f5879a;

        /* renamed from: a */
        public C1958a m15757a(Parcel parcel) {
            return m15755a((C1956b) parcel.readParcelable(C1956b.class.getClassLoader()));
        }

        /* renamed from: a */
        public C1958a m15755a(C1956b c1956b) {
            return c1956b == null ? this : m15754a(c1956b.m15761a());
        }

        /* renamed from: a */
        public C1958a m15754a(String str) {
            this.f5879a = str;
            return this;
        }

        /* renamed from: a */
        public C1956b m15758a() {
            return new C1956b(this);
        }
    }

    C1956b(Parcel parcel) {
        this.f5878a = parcel.readString();
    }

    private C1956b(C1958a c1958a) {
        this.f5878a = c1958a.f5879a;
    }

    /* renamed from: a */
    public String m15761a() {
        return this.f5878a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5878a);
    }
}
