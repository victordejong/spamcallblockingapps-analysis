package com.truecaller.ads.mediation.model;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0011\b\u0087\b\u0018��2\u00020\u0001B5\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\t\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJH\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\t2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001c\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0013\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001e\u001a\u0004\b\u001f\u0010\u000bR\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\"\u001a\u0004\b#\u0010\bR\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010$\u001a\u0004\b%\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010 \u001a\u0004\b&\u0010\u0004¨\u0006)"}, d2 = {"Lcom/truecaller/ads/mediation/model/Placement;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()Z", "", "component4", "()J", "", "Lcom/truecaller/ads/mediation/model/Slot;", "component5", "()Ljava/util/List;", "id", AnalyticsConstants.NAME, "enable", "timeout", "slot", "copy", "(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/List;)Lcom/truecaller/ads/mediation/model/Placement;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "J", "getTimeout", "Ljava/lang/String;", "getName", "Z", "getEnable", "Ljava/util/List;", "getSlot", "getId", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/model/Placement.class */
public final class Placement {
    private final boolean enable;

    /* renamed from: id */
    private final String f9882id;
    private final String name;
    private final List<Slot> slot;
    private final long timeout;

    public Placement(String str, String str2, boolean z, long j, List<Slot> list) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(list, "slot");
        this.f9882id = str;
        this.name = str2;
        this.enable = z;
        this.timeout = j;
        this.slot = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.truecaller.ads.mediation.model.Placement] */
    public static /* synthetic */ Placement copy$default(Placement placement, String str, String str2, boolean z, long j, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((Placement) placement).f9882id;
        }
        if ((i & 2) != 0) {
            str2 = ((Placement) placement).name;
        }
        if ((i & 4) != 0) {
            z = ((Placement) placement).enable;
        }
        ?? r12 = j;
        if ((i & 8) != 0) {
            r12 = ((Placement) placement).timeout;
        }
        List<Slot> list2 = list;
        if ((i & 16) != 0) {
            list2 = ((Placement) placement).slot;
        }
        return placement.copy(str, str2, z, r12, list2);
    }

    public final String component1() {
        return this.f9882id;
    }

    public final String component2() {
        return this.name;
    }

    public final boolean component3() {
        return this.enable;
    }

    public final long component4() {
        return this.timeout;
    }

    public final List<Slot> component5() {
        return this.slot;
    }

    public final Placement copy(String str, String str2, boolean z, long j, List<Slot> list) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(list, "slot");
        return new Placement(str, str2, z, j, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Placement)) {
                return false;
            }
            Placement placement = (Placement) obj;
            return l.a(this.f9882id, placement.f9882id) && l.a(this.name, placement.name) && this.enable == placement.enable && this.timeout == placement.timeout && l.a(this.slot, placement.slot);
        }
        return true;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final String getId() {
        return this.f9882id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Slot> getSlot() {
        return this.slot;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public int hashCode() {
        String str = this.f9882id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.name;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.enable;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        int m34274a = C4876d.m34274a(this.timeout);
        List<Slot> list = this.slot;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Placement(id=");
        m8728C.append(this.f9882id);
        m8728C.append(", name=");
        m8728C.append(this.name);
        m8728C.append(", enable=");
        m8728C.append(this.enable);
        m8728C.append(", timeout=");
        m8728C.append(this.timeout);
        m8728C.append(", slot=");
        return C22128a.m8602l(m8728C, this.slot, ")");
    }
}
