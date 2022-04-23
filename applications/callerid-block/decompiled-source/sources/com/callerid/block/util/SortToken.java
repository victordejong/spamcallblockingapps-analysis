package com.callerid.block.util;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/SortToken.class */
public class SortToken implements Parcelable {
    public static final Parcelable.Creator<SortToken> CREATOR = new C1162a();

    /* renamed from: b */
    public String f4971b;

    /* renamed from: c */
    public String f4972c;

    /* renamed from: d */
    public String f4973d;

    /* renamed from: com.callerid.block.util.SortToken$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/SortToken$a.class */
    static final class C1162a implements Parcelable.Creator<SortToken> {
        C1162a() {
        }

        /* renamed from: a */
        public SortToken createFromParcel(Parcel parcel) {
            return new SortToken(parcel);
        }

        /* renamed from: b */
        public SortToken[] newArray(int i) {
            return new SortToken[i];
        }
    }

    public SortToken() {
        this.f4971b = "";
        this.f4972c = "";
        this.f4973d = "";
    }

    protected SortToken(Parcel parcel) {
        this.f4971b = "";
        this.f4972c = "";
        this.f4973d = "";
        this.f4971b = parcel.readString();
        this.f4972c = parcel.readString();
        this.f4973d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4971b);
        parcel.writeString(this.f4972c);
        parcel.writeString(this.f4973d);
    }
}
