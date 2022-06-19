package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick.class */
public final class ButtonItemUiComponent$OnClick implements Parcelable {
    public static final Parcelable.Creator<ButtonItemUiComponent$OnClick> CREATOR = new C2825a();

    /* renamed from: a */
    public final String f9883a;

    /* renamed from: b */
    public final String f9884b;

    /* renamed from: com.truecaller.ads.offline.dto.ButtonItemUiComponent$OnClick$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick$a.class */
    public static final class C2825a implements Parcelable.Creator<ButtonItemUiComponent$OnClick> {
        @Override // android.os.Parcelable.Creator
        public ButtonItemUiComponent$OnClick createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ButtonItemUiComponent$OnClick(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ButtonItemUiComponent$OnClick[] newArray(int i) {
            return new ButtonItemUiComponent$OnClick[i];
        }
    }

    public ButtonItemUiComponent$OnClick(String str, String str2) {
        l.e(str, "action");
        l.e(str2, "url");
        this.f9883a = str;
        this.f9884b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ButtonItemUiComponent$OnClick)) {
                return false;
            }
            ButtonItemUiComponent$OnClick buttonItemUiComponent$OnClick = (ButtonItemUiComponent$OnClick) obj;
            return l.a(this.f9883a, buttonItemUiComponent$OnClick.f9883a) && l.a(this.f9884b, buttonItemUiComponent$OnClick.f9884b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9883a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f9884b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OnClick(action=");
        m8728C.append(this.f9883a);
        m8728C.append(", url=");
        return C22128a.m8618h(m8728C, this.f9884b, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f9883a);
        parcel.writeString(this.f9884b);
    }
}
