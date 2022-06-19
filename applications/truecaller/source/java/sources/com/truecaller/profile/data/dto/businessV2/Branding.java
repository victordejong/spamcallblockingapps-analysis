package com.truecaller.profile.data.dto.businessV2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018��2\u00020\u0001B1\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006¢\u0006\u0004\b(\u0010)J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ:\u0010\f\u001a\u00020��2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b\u001f\u0010\b\"\u0004\b \u0010!R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\"\u001a\u0004\b#\u0010\u0004\"\u0004\b$\u0010%R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\"\u001a\u0004\b&\u0010\u0004\"\u0004\b'\u0010%¨\u0006*"}, d2 = {"Lcom/truecaller/profile/data/dto/businessV2/Branding;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()Ljava/util/List;", "logo", "backgroundColor", "imageUrls", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/profile/data/dto/businessV2/Branding;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/util/List;", "getImageUrls", "setImageUrls", "(Ljava/util/List;)V", "Ljava/lang/String;", "getBackgroundColor", "setBackgroundColor", "(Ljava/lang/String;)V", "getLogo", "setLogo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/Branding.class */
public final class Branding implements Parcelable {
    public static final Parcelable.Creator<Branding> CREATOR = new C4378a();
    private String backgroundColor;
    private List<String> imageUrls;
    private String logo;

    /* renamed from: com.truecaller.profile.data.dto.businessV2.Branding$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/Branding$a.class */
    public static final class C4378a implements Parcelable.Creator<Branding> {
        @Override // android.os.Parcelable.Creator
        public Branding createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new Branding(parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public Branding[] newArray(int i) {
            return new Branding[i];
        }
    }

    public Branding() {
        this(null, null, null, 7, null);
    }

    public Branding(String str, String str2, List<String> list) {
        this.logo = str;
        this.backgroundColor = str2;
        this.imageUrls = list;
    }

    public /* synthetic */ Branding(String str, String str2, List list, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : list);
    }

    public static /* synthetic */ Branding copy$default(Branding branding, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = branding.logo;
        }
        if ((i & 2) != 0) {
            str2 = branding.backgroundColor;
        }
        if ((i & 4) != 0) {
            list = branding.imageUrls;
        }
        return branding.copy(str, str2, list);
    }

    public final String component1() {
        return this.logo;
    }

    public final String component2() {
        return this.backgroundColor;
    }

    public final List<String> component3() {
        return this.imageUrls;
    }

    public final Branding copy(String str, String str2, List<String> list) {
        return new Branding(str, str2, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Branding)) {
                return false;
            }
            Branding branding = (Branding) obj;
            return l.a(this.logo, branding.logo) && l.a(this.backgroundColor, branding.backgroundColor) && l.a(this.imageUrls, branding.imageUrls);
        }
        return true;
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final List<String> getImageUrls() {
        return this.imageUrls;
    }

    public final String getLogo() {
        return this.logo;
    }

    public int hashCode() {
        String str = this.logo;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.backgroundColor;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<String> list = this.imageUrls;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public final void setImageUrls(List<String> list) {
        this.imageUrls = list;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Branding(logo=");
        m8728C.append(this.logo);
        m8728C.append(", backgroundColor=");
        m8728C.append(this.backgroundColor);
        m8728C.append(", imageUrls=");
        return C22128a.m8602l(m8728C, this.imageUrls, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.logo);
        parcel.writeString(this.backgroundColor);
        parcel.writeStringList(this.imageUrls);
    }
}
