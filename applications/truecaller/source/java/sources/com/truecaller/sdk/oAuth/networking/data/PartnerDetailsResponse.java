package com.truecaller.sdk.oAuth.networking.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0087\b\u0018�� >2\u00020\u0001:\u0001?Bo\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b<\u0010=J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u008e\u0001\u0010\u001d\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00022\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0004J\u0010\u0010!\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020 HÖ\u0001¢\u0006\u0004\b(\u0010\"J \u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020 HÖ\u0001¢\u0006\u0004\b-\u0010.R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010/\u001a\u0004\b0\u0010\u0004R\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u00101\u001a\u0004\b2\u0010\tR\u001b\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010/\u001a\u0004\b3\u0010\u0004R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010/\u001a\u0004\b4\u0010\u0004R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010/\u001a\u0004\b5\u0010\u0004R\u0019\u0010\u0018\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010/\u001a\u0004\b6\u0010\u0004R\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010/\u001a\u0004\b7\u0010\u0004R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010/\u001a\u0004\b8\u0010\u0004R\u0019\u0010\u0017\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010/\u001a\u0004\b9\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010/\u001a\u0004\b:\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010/\u001a\u0004\b;\u0010\u0004¨\u0006@"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "", "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;", "component3", "()Ljava/util/List;", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "requestId", "language", "scopes", "appLogoUrl", "appName", "userSupportEmail", "developerEmail", "developerName", "privacyPolicyUrl", "tosUrl", "homePageUrl", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getRequestId", "Ljava/util/List;", "getScopes", "getHomePageUrl", "getTosUrl", "getDeveloperName", "getDeveloperEmail", "getPrivacyPolicyUrl", "getAppLogoUrl", "getUserSupportEmail", "getLanguage", "getAppName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "a", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse.class */
public final class PartnerDetailsResponse implements Parcelable {
    public static final String OAUTH_SDK_DEFAULT_DEV_NAME = "Test Mode";
    public static final String OAUTH_SDK_DEFAULT_PARTNER_URL = "https://example.com";
    private final String appLogoUrl;
    private final String appName;
    private final String developerEmail;
    private final String developerName;
    private final String homePageUrl;
    private final String language;
    private final String privacyPolicyUrl;
    private final String requestId;
    private final List<ScopeInfo> scopes;
    private final String tosUrl;
    private final String userSupportEmail;
    public static final C4422a Companion = new C4422a(null);
    private static final List<ScopeInfo> mockScopes = i.T(new ScopeInfo[]{new ScopeInfo("profile", "Name and mobile number", false, 4, null), new ScopeInfo("dob", "Date of Birth", false, 4, null), new ScopeInfo("gender", "Gender", false, 4, null), new ScopeInfo("im", "Message History", false, 4, null), new ScopeInfo("call", "Call History", false, 4, null)});
    public static final Parcelable.Creator<PartnerDetailsResponse> CREATOR = new C4423b();

    /* renamed from: com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse$a.class */
    public static final class C4422a {
        public C4422a(f fVar) {
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse$b.class */
    public static final class C4423b implements Parcelable.Creator<PartnerDetailsResponse> {
        @Override // android.os.Parcelable.Creator
        public PartnerDetailsResponse createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(ScopeInfo.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new PartnerDetailsResponse(readString, readString2, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public PartnerDetailsResponse[] newArray(int i) {
            return new PartnerDetailsResponse[i];
        }
    }

    public PartnerDetailsResponse(String str, String str2, List<ScopeInfo> list, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        l.e(str, "requestId");
        l.e(str2, "language");
        l.e(list, "scopes");
        l.e(str4, "appName");
        l.e(str5, "userSupportEmail");
        l.e(str6, "developerEmail");
        this.requestId = str;
        this.language = str2;
        this.scopes = list;
        this.appLogoUrl = str3;
        this.appName = str4;
        this.userSupportEmail = str5;
        this.developerEmail = str6;
        this.developerName = str7;
        this.privacyPolicyUrl = str8;
        this.tosUrl = str9;
        this.homePageUrl = str10;
    }

    public static /* synthetic */ PartnerDetailsResponse copy$default(PartnerDetailsResponse partnerDetailsResponse, String str, String str2, List list, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i, Object obj) {
        if ((i & 1) != 0) {
            str = partnerDetailsResponse.requestId;
        }
        if ((i & 2) != 0) {
            str2 = partnerDetailsResponse.language;
        }
        if ((i & 4) != 0) {
            list = partnerDetailsResponse.scopes;
        }
        if ((i & 8) != 0) {
            str3 = partnerDetailsResponse.appLogoUrl;
        }
        if ((i & 16) != 0) {
            str4 = partnerDetailsResponse.appName;
        }
        if ((i & 32) != 0) {
            str5 = partnerDetailsResponse.userSupportEmail;
        }
        if ((i & 64) != 0) {
            str6 = partnerDetailsResponse.developerEmail;
        }
        if ((i & 128) != 0) {
            str7 = partnerDetailsResponse.developerName;
        }
        if ((i & 256) != 0) {
            str8 = partnerDetailsResponse.privacyPolicyUrl;
        }
        if ((i & 512) != 0) {
            str9 = partnerDetailsResponse.tosUrl;
        }
        if ((i & 1024) != 0) {
            str10 = partnerDetailsResponse.homePageUrl;
        }
        return partnerDetailsResponse.copy(str, str2, list, str3, str4, str5, str6, str7, str8, str9, str10);
    }

    public final String component1() {
        return this.requestId;
    }

    public final String component10() {
        return this.tosUrl;
    }

    public final String component11() {
        return this.homePageUrl;
    }

    public final String component2() {
        return this.language;
    }

    public final List<ScopeInfo> component3() {
        return this.scopes;
    }

    public final String component4() {
        return this.appLogoUrl;
    }

    public final String component5() {
        return this.appName;
    }

    public final String component6() {
        return this.userSupportEmail;
    }

    public final String component7() {
        return this.developerEmail;
    }

    public final String component8() {
        return this.developerName;
    }

    public final String component9() {
        return this.privacyPolicyUrl;
    }

    public final PartnerDetailsResponse copy(String str, String str2, List<ScopeInfo> list, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        l.e(str, "requestId");
        l.e(str2, "language");
        l.e(list, "scopes");
        l.e(str4, "appName");
        l.e(str5, "userSupportEmail");
        l.e(str6, "developerEmail");
        return new PartnerDetailsResponse(str, str2, list, str3, str4, str5, str6, str7, str8, str9, str10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PartnerDetailsResponse)) {
                return false;
            }
            PartnerDetailsResponse partnerDetailsResponse = (PartnerDetailsResponse) obj;
            return l.a(this.requestId, partnerDetailsResponse.requestId) && l.a(this.language, partnerDetailsResponse.language) && l.a(this.scopes, partnerDetailsResponse.scopes) && l.a(this.appLogoUrl, partnerDetailsResponse.appLogoUrl) && l.a(this.appName, partnerDetailsResponse.appName) && l.a(this.userSupportEmail, partnerDetailsResponse.userSupportEmail) && l.a(this.developerEmail, partnerDetailsResponse.developerEmail) && l.a(this.developerName, partnerDetailsResponse.developerName) && l.a(this.privacyPolicyUrl, partnerDetailsResponse.privacyPolicyUrl) && l.a(this.tosUrl, partnerDetailsResponse.tosUrl) && l.a(this.homePageUrl, partnerDetailsResponse.homePageUrl);
        }
        return true;
    }

    public final String getAppLogoUrl() {
        return this.appLogoUrl;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getDeveloperEmail() {
        return this.developerEmail;
    }

    public final String getDeveloperName() {
        return this.developerName;
    }

    public final String getHomePageUrl() {
        return this.homePageUrl;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final List<ScopeInfo> getScopes() {
        return this.scopes;
    }

    public final String getTosUrl() {
        return this.tosUrl;
    }

    public final String getUserSupportEmail() {
        return this.userSupportEmail;
    }

    public int hashCode() {
        String str = this.requestId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.language;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<ScopeInfo> list = this.scopes;
        int hashCode3 = list != null ? list.hashCode() : 0;
        String str3 = this.appLogoUrl;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.appName;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.userSupportEmail;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.developerEmail;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.developerName;
        int hashCode8 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.privacyPolicyUrl;
        int hashCode9 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.tosUrl;
        int hashCode10 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.homePageUrl;
        if (str10 != null) {
            i = str10.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PartnerDetailsResponse(requestId=");
        m8728C.append(this.requestId);
        m8728C.append(", language=");
        m8728C.append(this.language);
        m8728C.append(", scopes=");
        m8728C.append(this.scopes);
        m8728C.append(", appLogoUrl=");
        m8728C.append(this.appLogoUrl);
        m8728C.append(", appName=");
        m8728C.append(this.appName);
        m8728C.append(", userSupportEmail=");
        m8728C.append(this.userSupportEmail);
        m8728C.append(", developerEmail=");
        m8728C.append(this.developerEmail);
        m8728C.append(", developerName=");
        m8728C.append(this.developerName);
        m8728C.append(", privacyPolicyUrl=");
        m8728C.append(this.privacyPolicyUrl);
        m8728C.append(", tosUrl=");
        m8728C.append(this.tosUrl);
        m8728C.append(", homePageUrl=");
        return C22128a.m8618h(m8728C, this.homePageUrl, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.requestId);
        parcel.writeString(this.language);
        List<ScopeInfo> list = this.scopes;
        parcel.writeInt(list.size());
        for (ScopeInfo scopeInfo : list) {
            scopeInfo.writeToParcel(parcel, 0);
        }
        parcel.writeString(this.appLogoUrl);
        parcel.writeString(this.appName);
        parcel.writeString(this.userSupportEmail);
        parcel.writeString(this.developerEmail);
        parcel.writeString(this.developerName);
        parcel.writeString(this.privacyPolicyUrl);
        parcel.writeString(this.tosUrl);
        parcel.writeString(this.homePageUrl);
    }
}
