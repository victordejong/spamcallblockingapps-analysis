package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B;\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004JL\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u001a\u0010\u0004R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u001b\u0010\u0004R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u001c\u0010\u0004R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/profile/data/dto/OnlineIds;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "facebookId", AnalyticsConstants.EMAIL, "url", "twitterId", "googleIdToken", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/OnlineIds;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getGoogleIdToken", "getFacebookId", "getEmail", "getTwitterId", "getUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/OnlineIds.class */
public final class OnlineIds {
    private final String email;
    private final String facebookId;
    private final String googleIdToken;
    private final String twitterId;
    private final String url;

    public OnlineIds(String str, String str2, String str3, String str4, String str5) {
        this.facebookId = str;
        this.email = str2;
        this.url = str3;
        this.twitterId = str4;
        this.googleIdToken = str5;
    }

    public /* synthetic */ OnlineIds(String str, String str2, String str3, String str4, String str5, int i, f fVar) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ OnlineIds copy$default(OnlineIds onlineIds, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = onlineIds.facebookId;
        }
        if ((i & 2) != 0) {
            str2 = onlineIds.email;
        }
        if ((i & 4) != 0) {
            str3 = onlineIds.url;
        }
        if ((i & 8) != 0) {
            str4 = onlineIds.twitterId;
        }
        if ((i & 16) != 0) {
            str5 = onlineIds.googleIdToken;
        }
        return onlineIds.copy(str, str2, str3, str4, str5);
    }

    public final String component1() {
        return this.facebookId;
    }

    public final String component2() {
        return this.email;
    }

    public final String component3() {
        return this.url;
    }

    public final String component4() {
        return this.twitterId;
    }

    public final String component5() {
        return this.googleIdToken;
    }

    public final OnlineIds copy(String str, String str2, String str3, String str4, String str5) {
        return new OnlineIds(str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OnlineIds)) {
                return false;
            }
            OnlineIds onlineIds = (OnlineIds) obj;
            return l.a(this.facebookId, onlineIds.facebookId) && l.a(this.email, onlineIds.email) && l.a(this.url, onlineIds.url) && l.a(this.twitterId, onlineIds.twitterId) && l.a(this.googleIdToken, onlineIds.googleIdToken);
        }
        return true;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFacebookId() {
        return this.facebookId;
    }

    public final String getGoogleIdToken() {
        return this.googleIdToken;
    }

    public final String getTwitterId() {
        return this.twitterId;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.facebookId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.email;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.url;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.twitterId;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.googleIdToken;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OnlineIds(facebookId=");
        m8728C.append(this.facebookId);
        m8728C.append(", email=");
        m8728C.append(this.email);
        m8728C.append(", url=");
        m8728C.append(this.url);
        m8728C.append(", twitterId=");
        m8728C.append(this.twitterId);
        m8728C.append(", googleIdToken=");
        return C22128a.m8618h(m8728C, this.googleIdToken, ")");
    }
}
