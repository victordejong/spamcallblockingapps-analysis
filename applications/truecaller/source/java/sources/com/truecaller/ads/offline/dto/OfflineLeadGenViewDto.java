package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineLeadGenViewDto.class */
public final class OfflineLeadGenViewDto implements Parcelable {
    public static final Parcelable.Creator<OfflineLeadGenViewDto> CREATOR = new C2830a();

    /* renamed from: a */
    public final List<UiComponent> f9885a;

    /* renamed from: com.truecaller.ads.offline.dto.OfflineLeadGenViewDto$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineLeadGenViewDto$a.class */
    public static final class C2830a implements Parcelable.Creator<OfflineLeadGenViewDto> {
        @Override // android.os.Parcelable.Creator
        public OfflineLeadGenViewDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add((UiComponent) parcel.readParcelable(OfflineLeadGenViewDto.class.getClassLoader()));
                readInt--;
            }
            return new OfflineLeadGenViewDto(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public OfflineLeadGenViewDto[] newArray(int i) {
            return new OfflineLeadGenViewDto[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OfflineLeadGenViewDto(List<? extends UiComponent> list) {
        l.e(list, "components");
        this.f9885a = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof OfflineLeadGenViewDto) && l.a(this.f9885a, ((OfflineLeadGenViewDto) obj).f9885a);
        }
        return true;
    }

    public int hashCode() {
        List<UiComponent> list = this.f9885a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("OfflineLeadGenViewDto(components="), this.f9885a, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        List<UiComponent> list = this.f9885a;
        parcel.writeInt(list.size());
        for (UiComponent uiComponent : list) {
            parcel.writeParcelable(uiComponent, i);
        }
    }
}
