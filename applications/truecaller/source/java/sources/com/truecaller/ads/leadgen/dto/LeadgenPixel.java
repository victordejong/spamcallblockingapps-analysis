package com.truecaller.ads.leadgen.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u001b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\f\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "a", "Ljava/lang/String;", C22021b.f61237c, "()Ljava/lang/String;", "visit", AnalyticsConstants.SUBMIT, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenPixel.class */
public final class LeadgenPixel implements Parcelable {
    public static final Parcelable.Creator<LeadgenPixel> CREATOR = new C2823a();
    @b("visit")

    /* renamed from: a */
    private final String f9872a;
    @b(AnalyticsConstants.SUBMIT)

    /* renamed from: b */
    private final String f9873b;

    /* renamed from: com.truecaller.ads.leadgen.dto.LeadgenPixel$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenPixel$a.class */
    public static final class C2823a implements Parcelable.Creator<LeadgenPixel> {
        @Override // android.os.Parcelable.Creator
        public LeadgenPixel createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new LeadgenPixel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public LeadgenPixel[] newArray(int i) {
            return new LeadgenPixel[i];
        }
    }

    public LeadgenPixel(String str, String str2) {
        this.f9872a = str;
        this.f9873b = str2;
    }

    /* renamed from: a */
    public final String m35971a() {
        return this.f9873b;
    }

    /* renamed from: b */
    public final String m35970b() {
        return this.f9872a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f9872a);
        parcel.writeString(this.f9873b);
    }
}
