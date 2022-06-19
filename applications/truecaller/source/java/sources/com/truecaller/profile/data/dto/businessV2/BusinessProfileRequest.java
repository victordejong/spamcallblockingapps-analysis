package com.truecaller.profile.data.dto.businessV2;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b%\b\u0087\b\u0018��2\u00020\u0001BÇ\u0001\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0004\bN\u0010OJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\bJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0010\u0010\bJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0004J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0004J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0004J\u0018\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0015\u0010\bJÐ\u0001\u0010$\u001a\u00020��2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b&\u0010\u0004J\u0010\u0010(\u001a\u00020'HÖ\u0001¢\u0006\u0004\b(\u0010)J\u001a\u0010,\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b,\u0010-R*\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010.\u001a\u0004\b/\u0010\b\"\u0004\b0\u00101R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u00102\u001a\u0004\b3\u0010\u0004\"\u0004\b4\u00105R$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u00102\u001a\u0004\b6\u0010\u0004\"\u0004\b7\u00105R$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u00102\u001a\u0004\b8\u0010\u0004\"\u0004\b9\u00105R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u00102\u001a\u0004\b:\u0010\u0004\"\u0004\b;\u00105R$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u00102\u001a\u0004\b<\u0010\u0004\"\u0004\b=\u00105R*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010.\u001a\u0004\b>\u0010\b\"\u0004\b?\u00101R*\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010.\u001a\u0004\b@\u0010\b\"\u0004\bA\u00101R*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010.\u001a\u0004\bB\u0010\b\"\u0004\bC\u00101R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u00102\u001a\u0004\bD\u0010\u0004\"\u0004\bE\u00105R$\u0010 \u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u00102\u001a\u0004\bF\u0010\u0004\"\u0004\bG\u00105R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u00102\u001a\u0004\bH\u0010\u0004\"\u0004\bI\u00105R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u00102\u001a\u0004\bJ\u0010\u0004\"\u0004\bK\u00105R$\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u00102\u001a\u0004\bL\u0010\u0004\"\u0004\bM\u00105¨\u0006P"}, d2 = {"Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;", "", "", "component1", "()Ljava/lang/String;", "", "", "component2", "()Ljava/util/List;", "component3", "component4", "component5", "component6", "component7", "component8", "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;", "component9", "component10", "component11", "component12", "component13", "component14", AnalyticsConstants.NAME, "phoneNumbers", "about", "tags", "facebookId", AnalyticsConstants.EMAIL, "url", "twitterId", "locationDetails", "size", "paymentIdentifier", "logo", "backgroundColor", "imageUrls", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getPhoneNumbers", "setPhoneNumbers", "(Ljava/util/List;)V", "Ljava/lang/String;", "getEmail", "setEmail", "(Ljava/lang/String;)V", "getTwitterId", "setTwitterId", "getSize", "setSize", "getAbout", "setAbout", "getUrl", "setUrl", "getTags", "setTags", "getLocationDetails", "setLocationDetails", "getImageUrls", "setImageUrls", "getFacebookId", "setFacebookId", "getPaymentIdentifier", "setPaymentIdentifier", "getLogo", "setLogo", "getName", "setName", "getBackgroundColor", "setBackgroundColor", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/BusinessProfileRequest.class */
public final class BusinessProfileRequest {
    private String about;
    private String backgroundColor;
    private String email;
    private String facebookId;
    private List<String> imageUrls;
    private List<LocationDetail> locationDetails;
    private String logo;
    private String name;
    private String paymentIdentifier;
    private List<Long> phoneNumbers;
    private String size;
    private List<Long> tags;
    private String twitterId;
    private String url;

    public BusinessProfileRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }

    public BusinessProfileRequest(String str, List<Long> list, String str2, List<Long> list2, String str3, String str4, String str5, String str6, List<LocationDetail> list3, String str7, String str8, String str9, String str10, List<String> list4) {
        this.name = str;
        this.phoneNumbers = list;
        this.about = str2;
        this.tags = list2;
        this.facebookId = str3;
        this.email = str4;
        this.url = str5;
        this.twitterId = str6;
        this.locationDetails = list3;
        this.size = str7;
        this.paymentIdentifier = str8;
        this.logo = str9;
        this.backgroundColor = str10;
        this.imageUrls = list4;
    }

    public /* synthetic */ BusinessProfileRequest(String str, List list, String str2, List list2, String str3, String str4, String str5, String str6, List list3, String str7, String str8, String str9, String str10, List list4, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : list2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : list3, (i & 512) != 0 ? null : str7, (i & 1024) != 0 ? null : str8, (i & 2048) != 0 ? null : str9, (i & 4096) != 0 ? null : str10, (i & 8192) != 0 ? null : list4);
    }

    public static /* synthetic */ BusinessProfileRequest copy$default(BusinessProfileRequest businessProfileRequest, String str, List list, String str2, List list2, String str3, String str4, String str5, String str6, List list3, String str7, String str8, String str9, String str10, List list4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = businessProfileRequest.name;
        }
        if ((i & 2) != 0) {
            list = businessProfileRequest.phoneNumbers;
        }
        if ((i & 4) != 0) {
            str2 = businessProfileRequest.about;
        }
        if ((i & 8) != 0) {
            list2 = businessProfileRequest.tags;
        }
        if ((i & 16) != 0) {
            str3 = businessProfileRequest.facebookId;
        }
        if ((i & 32) != 0) {
            str4 = businessProfileRequest.email;
        }
        if ((i & 64) != 0) {
            str5 = businessProfileRequest.url;
        }
        if ((i & 128) != 0) {
            str6 = businessProfileRequest.twitterId;
        }
        if ((i & 256) != 0) {
            list3 = businessProfileRequest.locationDetails;
        }
        if ((i & 512) != 0) {
            str7 = businessProfileRequest.size;
        }
        if ((i & 1024) != 0) {
            str8 = businessProfileRequest.paymentIdentifier;
        }
        if ((i & 2048) != 0) {
            str9 = businessProfileRequest.logo;
        }
        if ((i & 4096) != 0) {
            str10 = businessProfileRequest.backgroundColor;
        }
        if ((i & 8192) != 0) {
            list4 = businessProfileRequest.imageUrls;
        }
        return businessProfileRequest.copy(str, list, str2, list2, str3, str4, str5, str6, list3, str7, str8, str9, str10, list4);
    }

    public final String component1() {
        return this.name;
    }

    public final String component10() {
        return this.size;
    }

    public final String component11() {
        return this.paymentIdentifier;
    }

    public final String component12() {
        return this.logo;
    }

    public final String component13() {
        return this.backgroundColor;
    }

    public final List<String> component14() {
        return this.imageUrls;
    }

    public final List<Long> component2() {
        return this.phoneNumbers;
    }

    public final String component3() {
        return this.about;
    }

    public final List<Long> component4() {
        return this.tags;
    }

    public final String component5() {
        return this.facebookId;
    }

    public final String component6() {
        return this.email;
    }

    public final String component7() {
        return this.url;
    }

    public final String component8() {
        return this.twitterId;
    }

    public final List<LocationDetail> component9() {
        return this.locationDetails;
    }

    public final BusinessProfileRequest copy(String str, List<Long> list, String str2, List<Long> list2, String str3, String str4, String str5, String str6, List<LocationDetail> list3, String str7, String str8, String str9, String str10, List<String> list4) {
        return new BusinessProfileRequest(str, list, str2, list2, str3, str4, str5, str6, list3, str7, str8, str9, str10, list4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BusinessProfileRequest)) {
                return false;
            }
            BusinessProfileRequest businessProfileRequest = (BusinessProfileRequest) obj;
            return l.a(this.name, businessProfileRequest.name) && l.a(this.phoneNumbers, businessProfileRequest.phoneNumbers) && l.a(this.about, businessProfileRequest.about) && l.a(this.tags, businessProfileRequest.tags) && l.a(this.facebookId, businessProfileRequest.facebookId) && l.a(this.email, businessProfileRequest.email) && l.a(this.url, businessProfileRequest.url) && l.a(this.twitterId, businessProfileRequest.twitterId) && l.a(this.locationDetails, businessProfileRequest.locationDetails) && l.a(this.size, businessProfileRequest.size) && l.a(this.paymentIdentifier, businessProfileRequest.paymentIdentifier) && l.a(this.logo, businessProfileRequest.logo) && l.a(this.backgroundColor, businessProfileRequest.backgroundColor) && l.a(this.imageUrls, businessProfileRequest.imageUrls);
        }
        return true;
    }

    public final String getAbout() {
        return this.about;
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFacebookId() {
        return this.facebookId;
    }

    public final List<String> getImageUrls() {
        return this.imageUrls;
    }

    public final List<LocationDetail> getLocationDetails() {
        return this.locationDetails;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPaymentIdentifier() {
        return this.paymentIdentifier;
    }

    public final List<Long> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final String getSize() {
        return this.size;
    }

    public final List<Long> getTags() {
        return this.tags;
    }

    public final String getTwitterId() {
        return this.twitterId;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<Long> list = this.phoneNumbers;
        int hashCode2 = list != null ? list.hashCode() : 0;
        String str2 = this.about;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        List<Long> list2 = this.tags;
        int hashCode4 = list2 != null ? list2.hashCode() : 0;
        String str3 = this.facebookId;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.email;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.url;
        int hashCode7 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.twitterId;
        int hashCode8 = str6 != null ? str6.hashCode() : 0;
        List<LocationDetail> list3 = this.locationDetails;
        int hashCode9 = list3 != null ? list3.hashCode() : 0;
        String str7 = this.size;
        int hashCode10 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.paymentIdentifier;
        int hashCode11 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.logo;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.backgroundColor;
        int hashCode13 = str10 != null ? str10.hashCode() : 0;
        List<String> list4 = this.imageUrls;
        if (list4 != null) {
            i = list4.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public final void setAbout(String str) {
        this.about = str;
    }

    public final void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public final void setEmail(String str) {
        this.email = str;
    }

    public final void setFacebookId(String str) {
        this.facebookId = str;
    }

    public final void setImageUrls(List<String> list) {
        this.imageUrls = list;
    }

    public final void setLocationDetails(List<LocationDetail> list) {
        this.locationDetails = list;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPaymentIdentifier(String str) {
        this.paymentIdentifier = str;
    }

    public final void setPhoneNumbers(List<Long> list) {
        this.phoneNumbers = list;
    }

    public final void setSize(String str) {
        this.size = str;
    }

    public final void setTags(List<Long> list) {
        this.tags = list;
    }

    public final void setTwitterId(String str) {
        this.twitterId = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BusinessProfileRequest(name=");
        m8728C.append(this.name);
        m8728C.append(", phoneNumbers=");
        m8728C.append(this.phoneNumbers);
        m8728C.append(", about=");
        m8728C.append(this.about);
        m8728C.append(", tags=");
        m8728C.append(this.tags);
        m8728C.append(", facebookId=");
        m8728C.append(this.facebookId);
        m8728C.append(", email=");
        m8728C.append(this.email);
        m8728C.append(", url=");
        m8728C.append(this.url);
        m8728C.append(", twitterId=");
        m8728C.append(this.twitterId);
        m8728C.append(", locationDetails=");
        m8728C.append(this.locationDetails);
        m8728C.append(", size=");
        m8728C.append(this.size);
        m8728C.append(", paymentIdentifier=");
        m8728C.append(this.paymentIdentifier);
        m8728C.append(", logo=");
        m8728C.append(this.logo);
        m8728C.append(", backgroundColor=");
        m8728C.append(this.backgroundColor);
        m8728C.append(", imageUrls=");
        return C22128a.m8602l(m8728C, this.imageUrls, ")");
    }
}
