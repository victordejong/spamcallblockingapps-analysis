package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b6\u00107J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ6\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u001c\u0010\u0016J \u0010!\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b!\u0010\"R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010#\u001a\u0004\b$\u0010\bR(\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010#\u001a\u0004\b&\u0010\b\"\u0004\b'\u0010(R\"\u0010)\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b)\u0010+\"\u0004\b,\u0010-R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010.\u001a\u0004\b/\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u00100\u001a\u0004\b1\u0010\u0004R*\u00103\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010#\u001a\u0004\b4\u0010\b\"\u0004\b5\u0010(¨\u00068"}, d2 = {"Lcom/truecaller/ads/offline/dto/OfflineAdsDto;", "Landroid/os/Parcelable;", "Lcom/truecaller/ads/offline/dto/Theme;", "component1", "()Lcom/truecaller/ads/offline/dto/Theme;", "", "Lcom/truecaller/ads/offline/dto/Component;", "component2", "()Ljava/util/List;", "Lcom/truecaller/ads/offline/dto/ThankYouData;", "component3", "()Lcom/truecaller/ads/offline/dto/ThankYouData;", "theme", "components", "thankYouData", "copy", "(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)Lcom/truecaller/ads/offline/dto/OfflineAdsDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/util/List;", "getComponents", "pixels", "getPixels", "setPixels", "(Ljava/util/List;)V", "isOffline", "Z", "()Z", "setOffline", "(Z)V", "Lcom/truecaller/ads/offline/dto/ThankYouData;", "getThankYouData", "Lcom/truecaller/ads/offline/dto/Theme;", "getTheme", "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;", "assetsList", "getAssetsList", "setAssetsList", "<init>", "(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineAdsDto.class */
public final class OfflineAdsDto implements Parcelable {
    public static final Parcelable.Creator<OfflineAdsDto> CREATOR = new C2829a();
    private List<OfflineAdUiConfigAsset> assetsList;
    @b("components")
    private final List<Component> components;
    private boolean isOffline;
    private List<String> pixels = s.a;
    @b("ty")
    private final ThankYouData thankYouData;
    @b("theme")
    private final Theme theme;

    /* renamed from: com.truecaller.ads.offline.dto.OfflineAdsDto$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineAdsDto$a.class */
    public static final class C2829a implements Parcelable.Creator<OfflineAdsDto> {
        @Override // android.os.Parcelable.Creator
        public OfflineAdsDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            Theme createFromParcel = Theme.CREATOR.createFromParcel(parcel);
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(Component.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new OfflineAdsDto(createFromParcel, arrayList, parcel.readInt() != 0 ? ThankYouData.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public OfflineAdsDto[] newArray(int i) {
            return new OfflineAdsDto[i];
        }
    }

    public OfflineAdsDto(Theme theme, List<Component> list, ThankYouData thankYouData) {
        l.e(theme, "theme");
        l.e(list, "components");
        this.theme = theme;
        this.components = list;
        this.thankYouData = thankYouData;
    }

    public static /* synthetic */ OfflineAdsDto copy$default(OfflineAdsDto offlineAdsDto, Theme theme, List list, ThankYouData thankYouData, int i, Object obj) {
        if ((i & 1) != 0) {
            theme = offlineAdsDto.theme;
        }
        if ((i & 2) != 0) {
            list = offlineAdsDto.components;
        }
        if ((i & 4) != 0) {
            thankYouData = offlineAdsDto.thankYouData;
        }
        return offlineAdsDto.copy(theme, list, thankYouData);
    }

    public final Theme component1() {
        return this.theme;
    }

    public final List<Component> component2() {
        return this.components;
    }

    public final ThankYouData component3() {
        return this.thankYouData;
    }

    public final OfflineAdsDto copy(Theme theme, List<Component> list, ThankYouData thankYouData) {
        l.e(theme, "theme");
        l.e(list, "components");
        return new OfflineAdsDto(theme, list, thankYouData);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OfflineAdsDto)) {
                return false;
            }
            OfflineAdsDto offlineAdsDto = (OfflineAdsDto) obj;
            return l.a(this.theme, offlineAdsDto.theme) && l.a(this.components, offlineAdsDto.components) && l.a(this.thankYouData, offlineAdsDto.thankYouData);
        }
        return true;
    }

    public final List<OfflineAdUiConfigAsset> getAssetsList() {
        return this.assetsList;
    }

    public final List<Component> getComponents() {
        return this.components;
    }

    public final List<String> getPixels() {
        return this.pixels;
    }

    public final ThankYouData getThankYouData() {
        return this.thankYouData;
    }

    public final Theme getTheme() {
        return this.theme;
    }

    public int hashCode() {
        Theme theme = this.theme;
        int i = 0;
        int hashCode = theme != null ? theme.hashCode() : 0;
        List<Component> list = this.components;
        int hashCode2 = list != null ? list.hashCode() : 0;
        ThankYouData thankYouData = this.thankYouData;
        if (thankYouData != null) {
            i = thankYouData.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final boolean isOffline() {
        return this.isOffline;
    }

    public final void setAssetsList(List<OfflineAdUiConfigAsset> list) {
        this.assetsList = list;
    }

    public final void setOffline(boolean z) {
        this.isOffline = z;
    }

    public final void setPixels(List<String> list) {
        l.e(list, "<set-?>");
        this.pixels = list;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineAdsDto(theme=");
        m8728C.append(this.theme);
        m8728C.append(", components=");
        m8728C.append(this.components);
        m8728C.append(", thankYouData=");
        m8728C.append(this.thankYouData);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        this.theme.writeToParcel(parcel, 0);
        List<Component> list = this.components;
        parcel.writeInt(list.size());
        for (Component component : list) {
            component.writeToParcel(parcel, 0);
        }
        ThankYouData thankYouData = this.thankYouData;
        if (thankYouData == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        thankYouData.writeToParcel(parcel, 0);
    }
}
