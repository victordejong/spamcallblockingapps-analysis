package com.truecaller.yearincalling.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/ShareImageDetails.class */
public final class ShareImageDetails implements Parcelable {
    public static final Parcelable.Creator<ShareImageDetails> CREATOR = new C4874a();

    /* renamed from: a */
    public final int f16564a;

    /* renamed from: b */
    public final CharSequence f16565b;

    /* renamed from: c */
    public final String f16566c;

    /* renamed from: com.truecaller.yearincalling.model.ShareImageDetails$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/ShareImageDetails$a.class */
    public static final class C4874a implements Parcelable.Creator<ShareImageDetails> {
        @Override // android.os.Parcelable.Creator
        public ShareImageDetails createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ShareImageDetails(parcel.readInt(), (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ShareImageDetails[] newArray(int i) {
            return new ShareImageDetails[i];
        }
    }

    public ShareImageDetails(int i, CharSequence charSequence, String str) {
        l.e(charSequence, "value");
        this.f16564a = i;
        this.f16565b = charSequence;
        this.f16566c = str;
    }

    public ShareImageDetails(int i, CharSequence charSequence, String str, int i2) {
        l.e(charSequence, "value");
        this.f16564a = i;
        this.f16565b = charSequence;
        this.f16566c = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ShareImageDetails)) {
                return false;
            }
            ShareImageDetails shareImageDetails = (ShareImageDetails) obj;
            return this.f16564a == shareImageDetails.f16564a && l.a(this.f16565b, shareImageDetails.f16565b) && l.a(this.f16566c, shareImageDetails.f16566c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f16564a;
        CharSequence charSequence = this.f16565b;
        int i2 = 0;
        int hashCode = charSequence != null ? charSequence.hashCode() : 0;
        String str = this.f16566c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ShareImageDetails(resId=");
        m8728C.append(this.f16564a);
        m8728C.append(", value=");
        m8728C.append(this.f16565b);
        m8728C.append(", auxValue=");
        return C22128a.m8618h(m8728C, this.f16566c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f16564a);
        TextUtils.writeToParcel(this.f16565b, parcel, 0);
        parcel.writeString(this.f16566c);
    }
}
