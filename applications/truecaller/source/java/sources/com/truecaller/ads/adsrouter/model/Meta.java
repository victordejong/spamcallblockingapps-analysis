package com.truecaller.ads.adsrouter.model;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018��2\u00020\u0001BC\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\u000b\u0010\nJ\u0010\u0010\f\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\f\u0010\nJ\u0012\u0010\r\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\r\u0010\nJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u000e\u0010\nJZ\u0010\u0016\u001a\u00020��2\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0018\u0010\nJ\u0010\u0010\u0019\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0004J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0010\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u001c\u0010\u0011\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b!\u0010\nR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\"\u001a\u0004\b#\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b$\u0010\nR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010 \u001a\u0004\b%\u0010\nR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010 \u001a\u0004\b&\u0010\nR\u001c\u0010\u0012\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010 \u001a\u0004\b'\u0010\n¨\u0006*"}, d2 = {"Lcom/truecaller/ads/adsrouter/model/Meta;", "", "", "component1", "()I", "", "component2", "()J", "", "component3", "()Ljava/lang/String;", "component4", "component5", "component6", "component7", RemoteMessageConst.TTL, "expireAt", "partner", "campaignType", "publisher", "partnerLogo", "partnerPolicy", "copy", "(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/adsrouter/model/Meta;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getExpireAt", "Ljava/lang/String;", "getPartner", "I", "getTtl", "getPublisher", "getPartnerLogo", "getPartnerPolicy", "getCampaignType", "<init>", "(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/adsrouter/model/Meta.class */
public final class Meta {
    @b("campaignType")
    private final String campaignType;
    @b("expireAt")
    private final long expireAt;
    @b("partner")
    private final String partner;
    @b("partnerLogo")
    private final String partnerLogo;
    @b("privacyPolicy")
    private final String partnerPolicy;
    @b("publisher")
    private final String publisher;
    @b(RemoteMessageConst.TTL)
    private final int ttl;

    public Meta(int i, long j, String str, String str2, String str3, String str4, String str5) {
        C22128a.m8703I0(str, "partner", str2, "campaignType", str3, "publisher");
        this.ttl = i;
        this.expireAt = j;
        this.partner = str;
        this.campaignType = str2;
        this.publisher = str3;
        this.partnerLogo = str4;
        this.partnerPolicy = str5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.truecaller.ads.adsrouter.model.Meta] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    public static /* synthetic */ Meta copy$default(Meta meta, int i, long j, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = ((Meta) meta).ttl;
        }
        ?? r12 = j;
        if ((i2 & 2) != 0) {
            r12 = ((Meta) meta).expireAt;
        }
        if ((i2 & 4) != 0) {
            str = ((Meta) meta).partner;
        }
        if ((i2 & 8) != 0) {
            str2 = ((Meta) meta).campaignType;
        }
        if ((i2 & 16) != 0) {
            str3 = ((Meta) meta).publisher;
        }
        if ((i2 & 32) != 0) {
            str4 = ((Meta) meta).partnerLogo;
        }
        if ((i2 & 64) != 0) {
            str5 = ((Meta) meta).partnerPolicy;
        }
        return meta.copy(i, r12, str, str2, str3, str4, str5);
    }

    public final int component1() {
        return this.ttl;
    }

    public final long component2() {
        return this.expireAt;
    }

    public final String component3() {
        return this.partner;
    }

    public final String component4() {
        return this.campaignType;
    }

    public final String component5() {
        return this.publisher;
    }

    public final String component6() {
        return this.partnerLogo;
    }

    public final String component7() {
        return this.partnerPolicy;
    }

    public final Meta copy(int i, long j, String str, String str2, String str3, String str4, String str5) {
        l.e(str, "partner");
        l.e(str2, "campaignType");
        l.e(str3, "publisher");
        return new Meta(i, j, str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Meta)) {
                return false;
            }
            Meta meta = (Meta) obj;
            return this.ttl == meta.ttl && this.expireAt == meta.expireAt && l.a(this.partner, meta.partner) && l.a(this.campaignType, meta.campaignType) && l.a(this.publisher, meta.publisher) && l.a(this.partnerLogo, meta.partnerLogo) && l.a(this.partnerPolicy, meta.partnerPolicy);
        }
        return true;
    }

    public final String getCampaignType() {
        return this.campaignType;
    }

    public final long getExpireAt() {
        return this.expireAt;
    }

    public final String getPartner() {
        return this.partner;
    }

    public final String getPartnerLogo() {
        return this.partnerLogo;
    }

    public final String getPartnerPolicy() {
        return this.partnerPolicy;
    }

    public final String getPublisher() {
        return this.publisher;
    }

    public final int getTtl() {
        return this.ttl;
    }

    public int hashCode() {
        int i = this.ttl;
        int m34274a = C4876d.m34274a(this.expireAt);
        String str = this.partner;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.campaignType;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.publisher;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.partnerLogo;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.partnerPolicy;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return (((((((((((i * 31) + m34274a) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Meta(ttl=");
        m8728C.append(this.ttl);
        m8728C.append(", expireAt=");
        m8728C.append(this.expireAt);
        m8728C.append(", partner=");
        m8728C.append(this.partner);
        m8728C.append(", campaignType=");
        m8728C.append(this.campaignType);
        m8728C.append(", publisher=");
        m8728C.append(this.publisher);
        m8728C.append(", partnerLogo=");
        m8728C.append(this.partnerLogo);
        m8728C.append(", partnerPolicy=");
        return C22128a.m8618h(m8728C, this.partnerPolicy, ")");
    }
}
