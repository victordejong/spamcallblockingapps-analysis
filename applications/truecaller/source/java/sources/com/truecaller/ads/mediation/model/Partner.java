package com.truecaller.ads.mediation.model;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B-\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ>\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001b\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001c\u0010\u0004R\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b\u001e\u0010\n¨\u0006!"}, d2 = {"Lcom/truecaller/ads/mediation/model/Partner;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "Lcom/truecaller/ads/mediation/model/Placement;", "component4", "()Ljava/util/List;", "id", AnalyticsConstants.NAME, "adapter", "placement", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/ads/mediation/model/Partner;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getId", "getAdapter", "getName", "Ljava/util/List;", "getPlacement", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/model/Partner.class */
public final class Partner {
    private final String adapter;

    /* renamed from: id */
    private final String f9881id;
    private final String name;
    private final List<Placement> placement;

    public Partner(String str, String str2, String str3, List<Placement> list) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "adapter");
        l.e(list, "placement");
        this.f9881id = str;
        this.name = str2;
        this.adapter = str3;
        this.placement = list;
    }

    public static /* synthetic */ Partner copy$default(Partner partner, String str, String str2, String str3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = partner.f9881id;
        }
        if ((i & 2) != 0) {
            str2 = partner.name;
        }
        if ((i & 4) != 0) {
            str3 = partner.adapter;
        }
        if ((i & 8) != 0) {
            list = partner.placement;
        }
        return partner.copy(str, str2, str3, list);
    }

    public final String component1() {
        return this.f9881id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.adapter;
    }

    public final List<Placement> component4() {
        return this.placement;
    }

    public final Partner copy(String str, String str2, String str3, List<Placement> list) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "adapter");
        l.e(list, "placement");
        return new Partner(str, str2, str3, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Partner)) {
                return false;
            }
            Partner partner = (Partner) obj;
            return l.a(this.f9881id, partner.f9881id) && l.a(this.name, partner.name) && l.a(this.adapter, partner.adapter) && l.a(this.placement, partner.placement);
        }
        return true;
    }

    public final String getAdapter() {
        return this.adapter;
    }

    public final String getId() {
        return this.f9881id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Placement> getPlacement() {
        return this.placement;
    }

    public int hashCode() {
        String str = this.f9881id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.name;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.adapter;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        List<Placement> list = this.placement;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Partner(id=");
        m8728C.append(this.f9881id);
        m8728C.append(", name=");
        m8728C.append(this.name);
        m8728C.append(", adapter=");
        m8728C.append(this.adapter);
        m8728C.append(", placement=");
        return C22128a.m8602l(m8728C, this.placement, ")");
    }
}
