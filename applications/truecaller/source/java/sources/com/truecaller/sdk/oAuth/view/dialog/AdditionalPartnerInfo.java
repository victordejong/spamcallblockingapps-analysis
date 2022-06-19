package com.truecaller.sdk.oAuth.view.dialog;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0015J \u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u001f\u0010 R\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010!\u001a\u0004\b\"\u0010\u0007R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010#\u001a\u0004\b\r\u0010\nR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010$\u001a\u0004\b%\u0010\u0004¨\u0006("}, d2 = {"Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;", "Landroid/os/Parcelable;", "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "component1", "()Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;", "component2", "()Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;", "", "component3", "()Z", "partnerDetails", "sdkOptionsDataBundle", "isRectangleShapeRequested", "copy", "(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;Z)Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;", "getSdkOptionsDataBundle", "Z", "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "getPartnerDetails", "<init>", "(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;Z)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo.class */
public final class AdditionalPartnerInfo implements Parcelable {
    public static final Parcelable.Creator<AdditionalPartnerInfo> CREATOR = new C4434a();
    private final boolean isRectangleShapeRequested;
    private final PartnerDetailsResponse partnerDetails;
    private final SdkOptionsDataBundle sdkOptionsDataBundle;

    /* renamed from: com.truecaller.sdk.oAuth.view.dialog.AdditionalPartnerInfo$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo$a.class */
    public static final class C4434a implements Parcelable.Creator<AdditionalPartnerInfo> {
        @Override // android.os.Parcelable.Creator
        public AdditionalPartnerInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new AdditionalPartnerInfo(PartnerDetailsResponse.CREATOR.createFromParcel(parcel), (SdkOptionsDataBundle) parcel.readParcelable(AdditionalPartnerInfo.class.getClassLoader()), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public AdditionalPartnerInfo[] newArray(int i) {
            return new AdditionalPartnerInfo[i];
        }
    }

    public AdditionalPartnerInfo(PartnerDetailsResponse partnerDetailsResponse, SdkOptionsDataBundle sdkOptionsDataBundle, boolean z) {
        l.e(partnerDetailsResponse, "partnerDetails");
        l.e(sdkOptionsDataBundle, "sdkOptionsDataBundle");
        this.partnerDetails = partnerDetailsResponse;
        this.sdkOptionsDataBundle = sdkOptionsDataBundle;
        this.isRectangleShapeRequested = z;
    }

    public static /* synthetic */ AdditionalPartnerInfo copy$default(AdditionalPartnerInfo additionalPartnerInfo, PartnerDetailsResponse partnerDetailsResponse, SdkOptionsDataBundle sdkOptionsDataBundle, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            partnerDetailsResponse = additionalPartnerInfo.partnerDetails;
        }
        if ((i & 2) != 0) {
            sdkOptionsDataBundle = additionalPartnerInfo.sdkOptionsDataBundle;
        }
        if ((i & 4) != 0) {
            z = additionalPartnerInfo.isRectangleShapeRequested;
        }
        return additionalPartnerInfo.copy(partnerDetailsResponse, sdkOptionsDataBundle, z);
    }

    public final PartnerDetailsResponse component1() {
        return this.partnerDetails;
    }

    public final SdkOptionsDataBundle component2() {
        return this.sdkOptionsDataBundle;
    }

    public final boolean component3() {
        return this.isRectangleShapeRequested;
    }

    public final AdditionalPartnerInfo copy(PartnerDetailsResponse partnerDetailsResponse, SdkOptionsDataBundle sdkOptionsDataBundle, boolean z) {
        l.e(partnerDetailsResponse, "partnerDetails");
        l.e(sdkOptionsDataBundle, "sdkOptionsDataBundle");
        return new AdditionalPartnerInfo(partnerDetailsResponse, sdkOptionsDataBundle, z);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdditionalPartnerInfo)) {
                return false;
            }
            AdditionalPartnerInfo additionalPartnerInfo = (AdditionalPartnerInfo) obj;
            return l.a(this.partnerDetails, additionalPartnerInfo.partnerDetails) && l.a(this.sdkOptionsDataBundle, additionalPartnerInfo.sdkOptionsDataBundle) && this.isRectangleShapeRequested == additionalPartnerInfo.isRectangleShapeRequested;
        }
        return true;
    }

    public final PartnerDetailsResponse getPartnerDetails() {
        return this.partnerDetails;
    }

    public final SdkOptionsDataBundle getSdkOptionsDataBundle() {
        return this.sdkOptionsDataBundle;
    }

    public int hashCode() {
        PartnerDetailsResponse partnerDetailsResponse = this.partnerDetails;
        int i = 0;
        int hashCode = partnerDetailsResponse != null ? partnerDetailsResponse.hashCode() : 0;
        SdkOptionsDataBundle sdkOptionsDataBundle = this.sdkOptionsDataBundle;
        if (sdkOptionsDataBundle != null) {
            i = sdkOptionsDataBundle.hashCode();
        }
        boolean z = this.isRectangleShapeRequested;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public final boolean isRectangleShapeRequested() {
        return this.isRectangleShapeRequested;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdditionalPartnerInfo(partnerDetails=");
        m8728C.append(this.partnerDetails);
        m8728C.append(", sdkOptionsDataBundle=");
        m8728C.append(this.sdkOptionsDataBundle);
        m8728C.append(", isRectangleShapeRequested=");
        return C22128a.m8590o(m8728C, this.isRectangleShapeRequested, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        this.partnerDetails.writeToParcel(parcel, 0);
        parcel.writeParcelable(this.sdkOptionsDataBundle, i);
        parcel.writeInt(this.isRectangleShapeRequested ? 1 : 0);
    }
}
