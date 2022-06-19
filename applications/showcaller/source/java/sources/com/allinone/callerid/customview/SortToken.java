package com.allinone.callerid.customview;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/SortToken.class */
public class SortToken implements Parcelable {
    public static final Parcelable.Creator<SortToken> CREATOR = new C2442a();

    /* renamed from: d */
    public String f8654d;

    /* renamed from: e */
    public String f8655e;

    /* renamed from: f */
    public String f8656f;

    /* renamed from: com.allinone.callerid.customview.SortToken$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/SortToken$a.class */
    class C2442a implements Parcelable.Creator<SortToken> {
        C2442a() {
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
        this.f8654d = "";
        this.f8655e = "";
        this.f8656f = "";
    }

    protected SortToken(Parcel parcel) {
        this.f8654d = "";
        this.f8655e = "";
        this.f8656f = "";
        this.f8654d = parcel.readString();
        this.f8655e = parcel.readString();
        this.f8656f = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f8654d);
        parcel.writeString(this.f8655e);
        parcel.writeString(this.f8656f);
    }
}
