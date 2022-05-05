package com.hiya.stingray.util.p004h0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.h0.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a.class */
public class C0104a implements Parcelable {
    public static final Parcelable.Creator<C0104a> CREATOR = new C0105a();

    /* renamed from: f */
    private String f201f;

    /* renamed from: g */
    private long f202g;

    /* renamed from: com.hiya.stingray.util.h0.a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a$a.class */
    static final class C0105a implements Parcelable.Creator<C0104a> {
        C0105a() {
        }

        /* renamed from: a */
        public C0104a createFromParcel(Parcel parcel) {
            return new C0104a(parcel);
        }

        /* renamed from: b */
        public C0104a[] newArray(int i) {
            return new C0104a[i];
        }
    }

    protected C0104a(Parcel parcel) {
        this.f201f = parcel.readString();
        this.f202g = parcel.readLong();
    }

    /* renamed from: a */
    public String m969a() {
        return this.f201f;
    }

    /* renamed from: b */
    public long m968b() {
        return this.f202g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f201f);
        parcel.writeLong(this.f202g);
    }
}
