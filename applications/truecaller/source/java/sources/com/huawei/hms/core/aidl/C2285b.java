package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.huawei.hms.core.aidl.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/core/aidl/b.class */
public class C2285b implements Parcelable {
    public static final Parcelable.Creator<C2285b> CREATOR = new C2286a();

    /* renamed from: a */
    public String f7362a;

    /* renamed from: b */
    public Bundle f7363b;

    /* renamed from: c */
    private int f7364c;

    /* renamed from: d */
    private Bundle f7365d;

    /* renamed from: com.huawei.hms.core.aidl.b$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/core/aidl/b$a.class */
    public static final class C2286a implements Parcelable.Creator<C2285b> {
        @Override // android.os.Parcelable.Creator
        public C2285b createFromParcel(Parcel parcel) {
            return new C2285b(parcel, (C2286a) null);
        }

        @Override // android.os.Parcelable.Creator
        public C2285b[] newArray(int i) {
            return new C2285b[i];
        }
    }

    public C2285b() {
        this.f7363b = null;
        this.f7364c = 1;
        this.f7365d = null;
    }

    private C2285b(Parcel parcel) {
        this.f7363b = null;
        this.f7364c = 1;
        this.f7365d = null;
        m38087a(parcel);
    }

    public /* synthetic */ C2285b(Parcel parcel, C2286a c2286a) {
        this(parcel);
    }

    public C2285b(String str, int i) {
        this.f7363b = null;
        this.f7364c = 1;
        this.f7365d = null;
        this.f7362a = str;
        this.f7364c = i;
    }

    /* renamed from: a */
    private static ClassLoader m38086a(Class cls) {
        return cls.getClassLoader();
    }

    /* renamed from: a */
    private void m38087a(Parcel parcel) {
        this.f7364c = parcel.readInt();
        this.f7362a = parcel.readString();
        this.f7363b = parcel.readBundle(m38086a(Bundle.class));
        this.f7365d = parcel.readBundle(m38086a(Bundle.class));
    }

    /* renamed from: a */
    public Bundle m38089a() {
        return this.f7365d;
    }

    /* renamed from: a */
    public C2285b m38088a(Bundle bundle) {
        this.f7365d = bundle;
        return this;
    }

    /* renamed from: b */
    public int m38085b() {
        return this.f7365d == null ? 0 : 1;
    }

    /* renamed from: c */
    public int m38084c() {
        return this.f7364c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f7364c);
        parcel.writeString(this.f7362a);
        parcel.writeBundle(this.f7363b);
        parcel.writeBundle(this.f7365d);
    }
}
