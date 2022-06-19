package com.truecaller.ads.mediation.model;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ads/mediation/model/PartnerConfig;", "", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/ads/mediation/model/Partner;", "component2", "()Ljava/util/List;", "version", "partner", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/ads/mediation/model/PartnerConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getVersion", "Ljava/util/List;", "getPartner", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/model/PartnerConfig.class */
public final class PartnerConfig {
    private final List<Partner> partner;
    private final String version;

    public PartnerConfig(String str, List<Partner> list) {
        l.e(str, "version");
        l.e(list, "partner");
        this.version = str;
        this.partner = list;
    }

    public static /* synthetic */ PartnerConfig copy$default(PartnerConfig partnerConfig, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = partnerConfig.version;
        }
        if ((i & 2) != 0) {
            list = partnerConfig.partner;
        }
        return partnerConfig.copy(str, list);
    }

    public final String component1() {
        return this.version;
    }

    public final List<Partner> component2() {
        return this.partner;
    }

    public final PartnerConfig copy(String str, List<Partner> list) {
        l.e(str, "version");
        l.e(list, "partner");
        return new PartnerConfig(str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PartnerConfig)) {
                return false;
            }
            PartnerConfig partnerConfig = (PartnerConfig) obj;
            return l.a(this.version, partnerConfig.version) && l.a(this.partner, partnerConfig.partner);
        }
        return true;
    }

    public final List<Partner> getPartner() {
        return this.partner;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.version;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<Partner> list = this.partner;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PartnerConfig(version=");
        m8728C.append(this.version);
        m8728C.append(", partner=");
        return C22128a.m8602l(m8728C, this.partner, ")");
    }
}
