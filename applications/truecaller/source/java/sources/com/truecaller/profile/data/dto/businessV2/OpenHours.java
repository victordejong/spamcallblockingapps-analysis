package com.truecaller.profile.data.dto.businessV2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018��2\u00020\u0001B+\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b'\u0010(J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J4\u0010\f\u001a\u00020��2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0007J\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0010J \u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cR$\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001d\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010 R$\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001d\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010 R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010#\u001a\u0004\b$\u0010\u0004\"\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/truecaller/profile/data/dto/businessV2/OpenHours;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/Integer;", "", "component2", "()Ljava/lang/String;", "component3", "weekday", "opens", "closes", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/businessV2/OpenHours;", "toString", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getOpens", "setOpens", "(Ljava/lang/String;)V", "getCloses", "setCloses", "Ljava/lang/Integer;", "getWeekday", "setWeekday", "(Ljava/lang/Integer;)V", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/OpenHours.class */
public final class OpenHours implements Parcelable {
    public static final Parcelable.Creator<OpenHours> CREATOR = new C4382a();
    private String closes;
    private String opens;
    private Integer weekday;

    /* renamed from: com.truecaller.profile.data.dto.businessV2.OpenHours$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/OpenHours$a.class */
    public static final class C4382a implements Parcelable.Creator<OpenHours> {
        @Override // android.os.Parcelable.Creator
        public OpenHours createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new OpenHours(parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public OpenHours[] newArray(int i) {
            return new OpenHours[i];
        }
    }

    public OpenHours() {
        this(null, null, null, 7, null);
    }

    public OpenHours(Integer num, String str, String str2) {
        this.weekday = num;
        this.opens = str;
        this.closes = str2;
    }

    public /* synthetic */ OpenHours(Integer num, String str, String str2, int i, f fVar) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ OpenHours copy$default(OpenHours openHours, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = openHours.weekday;
        }
        if ((i & 2) != 0) {
            str = openHours.opens;
        }
        if ((i & 4) != 0) {
            str2 = openHours.closes;
        }
        return openHours.copy(num, str, str2);
    }

    public final Integer component1() {
        return this.weekday;
    }

    public final String component2() {
        return this.opens;
    }

    public final String component3() {
        return this.closes;
    }

    public final OpenHours copy(Integer num, String str, String str2) {
        return new OpenHours(num, str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OpenHours)) {
                return false;
            }
            OpenHours openHours = (OpenHours) obj;
            return l.a(this.weekday, openHours.weekday) && l.a(this.opens, openHours.opens) && l.a(this.closes, openHours.closes);
        }
        return true;
    }

    public final String getCloses() {
        return this.closes;
    }

    public final String getOpens() {
        return this.opens;
    }

    public final Integer getWeekday() {
        return this.weekday;
    }

    public int hashCode() {
        Integer num = this.weekday;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.opens;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.closes;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final void setCloses(String str) {
        this.closes = str;
    }

    public final void setOpens(String str) {
        this.opens = str;
    }

    public final void setWeekday(Integer num) {
        this.weekday = num;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OpenHours(weekday=");
        m8728C.append(this.weekday);
        m8728C.append(", opens=");
        m8728C.append(this.opens);
        m8728C.append(", closes=");
        return C22128a.m8618h(m8728C, this.closes, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        l.e(parcel, "parcel");
        Integer num = this.weekday;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.opens);
        parcel.writeString(this.closes);
    }
}
