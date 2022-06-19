package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\rJ \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004¨\u0006\u001f"}, d2 = {"Lcom/truecaller/ads/offline/dto/Theme;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "fgColor", "bgColor", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/Theme;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getBgColor", "getFgColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Theme.class */
public final class Theme implements Parcelable {
    public static final Parcelable.Creator<Theme> CREATOR = new C2832a();
    @b("bgColor")
    private final String bgColor;
    @b("fgColor")
    private final String fgColor;

    /* renamed from: com.truecaller.ads.offline.dto.Theme$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Theme$a.class */
    public static final class C2832a implements Parcelable.Creator<Theme> {
        @Override // android.os.Parcelable.Creator
        public Theme createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new Theme(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Theme[] newArray(int i) {
            return new Theme[i];
        }
    }

    public Theme(String str, String str2) {
        l.e(str, "fgColor");
        l.e(str2, "bgColor");
        this.fgColor = str;
        this.bgColor = str2;
    }

    public static /* synthetic */ Theme copy$default(Theme theme, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = theme.fgColor;
        }
        if ((i & 2) != 0) {
            str2 = theme.bgColor;
        }
        return theme.copy(str, str2);
    }

    public final String component1() {
        return this.fgColor;
    }

    public final String component2() {
        return this.bgColor;
    }

    public final Theme copy(String str, String str2) {
        l.e(str, "fgColor");
        l.e(str2, "bgColor");
        return new Theme(str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Theme)) {
                return false;
            }
            Theme theme = (Theme) obj;
            return l.a(this.fgColor, theme.fgColor) && l.a(this.bgColor, theme.bgColor);
        }
        return true;
    }

    public final String getBgColor() {
        return this.bgColor;
    }

    public final String getFgColor() {
        return this.fgColor;
    }

    public int hashCode() {
        String str = this.fgColor;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.bgColor;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Theme(fgColor=");
        m8728C.append(this.fgColor);
        m8728C.append(", bgColor=");
        return C22128a.m8618h(m8728C, this.bgColor, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.fgColor);
        parcel.writeString(this.bgColor);
    }
}
