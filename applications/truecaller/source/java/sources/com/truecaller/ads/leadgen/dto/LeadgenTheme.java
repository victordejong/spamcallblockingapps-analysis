package com.truecaller.ads.leadgen.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0007\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u0015\u001a\u00020\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u000b\u0012\u0006\u0010\u0019\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0012\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000fR\u001c\u0010\u0017\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0016\u0010\u000fR\u001c\u0010\u0018\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\f\u0010\u000fR\u001c\u0010\u0019\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\r\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "f", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "landingPageActionBarColor", C22021b.f61237c, "buttonText", "a", "d", "headerImageUrl", AbstractC2405c.f7629a, "headerBackgroundColor", "logoUrl", "buttonBackgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenTheme.class */
public final class LeadgenTheme implements Parcelable {
    public static final Parcelable.Creator<LeadgenTheme> CREATOR = new C2824a();
    @b("headerImage")

    /* renamed from: a */
    private final String f9874a;
    @b("logo")

    /* renamed from: b */
    private final String f9875b;
    @b("buttonBackgroundColor")

    /* renamed from: c */
    private final String f9876c;
    @b("headerBackgroundColor")

    /* renamed from: d */
    private final String f9877d;
    @b("buttonText")

    /* renamed from: e */
    private final String f9878e;
    @b("LandingPageActionBarColor")

    /* renamed from: f */
    private final String f9879f;

    /* renamed from: com.truecaller.ads.leadgen.dto.LeadgenTheme$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenTheme$a.class */
    public static final class C2824a implements Parcelable.Creator<LeadgenTheme> {
        @Override // android.os.Parcelable.Creator
        public LeadgenTheme createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new LeadgenTheme(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public LeadgenTheme[] newArray(int i) {
            return new LeadgenTheme[i];
        }
    }

    public LeadgenTheme(String str, String str2, String str3, String str4, String str5, String str6) {
        l.e(str, "headerImageUrl");
        l.e(str2, "logoUrl");
        l.e(str3, "buttonBackgroundColor");
        l.e(str4, "headerBackgroundColor");
        l.e(str5, "buttonText");
        this.f9874a = str;
        this.f9875b = str2;
        this.f9876c = str3;
        this.f9877d = str4;
        this.f9878e = str5;
        this.f9879f = str6;
    }

    /* renamed from: a */
    public final String m35969a() {
        return this.f9876c;
    }

    /* renamed from: b */
    public final String m35968b() {
        return this.f9878e;
    }

    /* renamed from: c */
    public final String m35967c() {
        return this.f9877d;
    }

    /* renamed from: d */
    public final String m35966d() {
        return this.f9874a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final String m35965e() {
        return this.f9879f;
    }

    /* renamed from: f */
    public final String m35964f() {
        return this.f9875b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f9874a);
        parcel.writeString(this.f9875b);
        parcel.writeString(this.f9876c);
        parcel.writeString(this.f9877d);
        parcel.writeString(this.f9878e);
        parcel.writeString(this.f9879f);
    }
}
