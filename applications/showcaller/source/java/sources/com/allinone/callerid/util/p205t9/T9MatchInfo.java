package com.allinone.callerid.util.p205t9;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.allinone.callerid.util.t9.T9MatchInfo */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/T9MatchInfo.class */
public final class T9MatchInfo implements Parcelable {
    public static final Parcelable.Creator<T9MatchInfo> CREATOR = new C3855a();

    /* renamed from: d */
    private boolean f12169d;

    /* renamed from: e */
    private int f12170e;

    /* renamed from: f */
    private int f12171f;

    /* renamed from: g */
    private T9MatchInfo f12172g;

    /* renamed from: com.allinone.callerid.util.t9.T9MatchInfo$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/T9MatchInfo$a.class */
    class C3855a implements Parcelable.Creator<T9MatchInfo> {
        C3855a() {
        }

        /* renamed from: a */
        public T9MatchInfo createFromParcel(Parcel parcel) {
            return new T9MatchInfo(parcel);
        }

        /* renamed from: b */
        public T9MatchInfo[] newArray(int i) {
            return new T9MatchInfo[i];
        }
    }

    public T9MatchInfo() {
        this.f12169d = false;
        this.f12170e = -1;
        this.f12171f = 0;
    }

    T9MatchInfo(Parcel parcel) {
        this.f12169d = parcel.readByte() != 0;
        this.f12170e = parcel.readInt();
        this.f12171f = parcel.readInt();
        this.f12172g = (T9MatchInfo) parcel.readParcelable(T9MatchInfo.class.getClassLoader());
    }

    /* renamed from: a */
    public boolean m23956a() {
        return this.f12169d;
    }

    /* renamed from: b */
    public int m23955b() {
        return this.f12171f;
    }

    /* renamed from: c */
    public T9MatchInfo m23954c() {
        return this.f12172g;
    }

    /* renamed from: d */
    public void m23953d(int i, int i2) {
        if ((i >= 0 || i2 <= 0) && (i < 0 || i2 > 0)) {
            this.f12169d = i >= 0;
            this.f12170e = i;
            this.f12171f = i2;
            return;
        }
        throw new IndexOutOfBoundsException("INVALID MATCH OFFSETS: matchStart=" + i + ", matchLength=" + i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m23952e(T9MatchInfo t9MatchInfo) {
        if (this != t9MatchInfo) {
            this.f12172g = t9MatchInfo;
        }
    }

    /* renamed from: f */
    public int m23951f() {
        return this.f12170e;
    }

    public String toString() {
        return "T9MatchInfo{mMatchFound=" + this.f12169d + ", mMatchStart=" + this.f12170e + ", mMatchLength=" + this.f12171f + ", mNext=" + this.f12172g + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f12169d ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f12170e);
        parcel.writeInt(this.f12171f);
        parcel.writeParcelable(this.f12172g, i);
    }
}
