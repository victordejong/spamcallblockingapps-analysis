package com.p064b.p065a.p066a.p067a;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
/* renamed from: com.b.a.a.a.d */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/d.class */
public class C1336d implements Parcelable {
    public static final Parcelable.Creator<C1336d> CREATOR = new Parcelable.Creator<C1336d>() { // from class: com.b.a.a.a.d.1
        /* renamed from: a */
        public C1336d createFromParcel(Parcel parcel) {
            return new C1336d(parcel);
        }

        /* renamed from: a */
        public C1336d[] newArray(int i) {
            return new C1336d[i];
        }
    };

    /* renamed from: a */
    public String f4412a;

    /* renamed from: b */
    public String f4413b;

    /* renamed from: c */
    public String f4414c;

    /* renamed from: d */
    public Date f4415d;

    /* renamed from: e */
    public EnumC1340f f4416e;

    /* renamed from: f */
    public String f4417f;

    /* renamed from: g */
    public String f4418g;

    /* renamed from: h */
    public boolean f4419h;

    public C1336d() {
    }

    protected C1336d(Parcel parcel) {
        this.f4412a = parcel.readString();
        this.f4413b = parcel.readString();
        this.f4414c = parcel.readString();
        long readLong = parcel.readLong();
        this.f4415d = readLong == -1 ? null : new Date(readLong);
        int readInt = parcel.readInt();
        this.f4416e = readInt == -1 ? null : EnumC1340f.values()[readInt];
        this.f4417f = parcel.readString();
        this.f4418g = parcel.readString();
        this.f4419h = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4412a);
        parcel.writeString(this.f4413b);
        parcel.writeString(this.f4414c);
        parcel.writeLong((this.f4415d != null ? this.f4415d.getTime() : true) == true ? 1L : 0L);
        parcel.writeInt(this.f4416e == null ? -1 : this.f4416e.ordinal());
        parcel.writeString(this.f4417f);
        parcel.writeString(this.f4418g);
        parcel.writeByte(this.f4419h ? (byte) 1 : (byte) 0);
    }
}
