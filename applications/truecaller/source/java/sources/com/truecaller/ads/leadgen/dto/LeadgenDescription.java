package com.truecaller.ads.leadgen.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0007\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u0019\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0010\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0014\u0010\u000fR\u001c\u0010\u0017\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\r\u001a\u0004\b\f\u0010\u000fR\u001c\u0010\u0018\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0016\u0010\u000fR\u001c\u0010\u0019\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "e", "Ljava/lang/String;", C22021b.f61237c, "()Ljava/lang/String;", "confirmationText", "f", "d", "landingPageUrl", "a", "body", AbstractC2405c.f7629a, "legal", "confirmationTitle", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenDescription.class */
public final class LeadgenDescription implements Parcelable {
    public static final Parcelable.Creator<LeadgenDescription> CREATOR = new C2820a();
    @b("Title")

    /* renamed from: a */
    private final String f9854a;
    @b("BodyText")

    /* renamed from: b */
    private final String f9855b;
    @b("Legal")

    /* renamed from: c */
    private final String f9856c;
    @b("ConfirmationTitle")

    /* renamed from: d */
    private final String f9857d;
    @b("ConfirmationText")

    /* renamed from: e */
    private final String f9858e;
    @b("LandingPageUrl")

    /* renamed from: f */
    private final String f9859f;

    /* renamed from: com.truecaller.ads.leadgen.dto.LeadgenDescription$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenDescription$a.class */
    public static final class C2820a implements Parcelable.Creator<LeadgenDescription> {
        @Override // android.os.Parcelable.Creator
        public LeadgenDescription createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new LeadgenDescription(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public LeadgenDescription[] newArray(int i) {
            return new LeadgenDescription[i];
        }
    }

    public LeadgenDescription(String str, String str2, String str3, String str4, String str5, String str6) {
        l.e(str, "title");
        l.e(str2, "body");
        l.e(str3, "legal");
        l.e(str4, "confirmationTitle");
        l.e(str5, "confirmationText");
        this.f9854a = str;
        this.f9855b = str2;
        this.f9856c = str3;
        this.f9857d = str4;
        this.f9858e = str5;
        this.f9859f = str6;
    }

    /* renamed from: a */
    public final String m35989a() {
        return this.f9855b;
    }

    /* renamed from: b */
    public final String m35988b() {
        return this.f9858e;
    }

    /* renamed from: c */
    public final String m35987c() {
        return this.f9857d;
    }

    /* renamed from: d */
    public final String m35986d() {
        return this.f9859f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final String m35985e() {
        return this.f9856c;
    }

    /* renamed from: f */
    public final String m35984f() {
        return this.f9854a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f9854a);
        parcel.writeString(this.f9855b);
        parcel.writeString(this.f9856c);
        parcel.writeString(this.f9857d);
        parcel.writeString(this.f9858e);
        parcel.writeString(this.f9859f);
    }
}
