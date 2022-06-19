package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/UiComponent.class */
public class UiComponent implements Parcelable {
    public static final Parcelable.Creator<UiComponent> CREATOR = new C2833a();

    /* renamed from: a */
    public final String f9886a;

    /* renamed from: com.truecaller.ads.offline.dto.UiComponent$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/UiComponent$a.class */
    public static final class C2833a implements Parcelable.Creator<UiComponent> {
        @Override // android.os.Parcelable.Creator
        public UiComponent createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new UiComponent(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public UiComponent[] newArray(int i) {
            return new UiComponent[i];
        }
    }

    public UiComponent(String str) {
        l.e(str, "type");
        this.f9886a = str;
    }

    /* renamed from: a */
    public String m35963a() {
        return this.f9886a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f9886a);
    }
}
