package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0010\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u0010\u0010\f\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\f\u0010\u0007JB\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001b\u001a\u0004\b\u001d\u0010\u0007R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u0019\u0010\u000f\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010 \u001a\u0004\b!\u0010\nR\u0019\u0010\u000e\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001b\u001a\u0004\b\"\u0010\u0007¨\u0006%"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/Rule;", "", "", "component1", "()Z", "", "component2", "()Ljava/lang/String;", "", "component3", "()D", "component4", "component5", "modify", "action", "percent", "rounding", "ladder", "copy", "(ZLjava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/provider/adunitid/Rule;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getRounding", "getLadder", "Z", "getModify", "D", "getPercent", "getAction", "<init>", "(ZLjava/lang/String;DLjava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/Rule.class */
public final class Rule {
    private final String action;
    private final String ladder;
    private final boolean modify;
    private final double percent;
    private final String rounding;

    public Rule(boolean z, String str, double d, String str2, String str3) {
        C22128a.m8703I0(str, "action", str2, "rounding", str3, "ladder");
        this.modify = z;
        this.action = str;
        this.percent = d;
        this.rounding = str2;
        this.ladder = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.truecaller.ads.provider.adunitid.Rule] */
    public static /* synthetic */ Rule copy$default(Rule rule, boolean z, String str, double d, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = ((Rule) rule).modify;
        }
        if ((i & 2) != 0) {
            str = ((Rule) rule).action;
        }
        ?? r11 = d;
        if ((i & 4) != 0) {
            r11 = ((Rule) rule).percent;
        }
        if ((i & 8) != 0) {
            str2 = ((Rule) rule).rounding;
        }
        if ((i & 16) != 0) {
            str3 = ((Rule) rule).ladder;
        }
        return rule.copy(z, str, r11, str2, str3);
    }

    public final boolean component1() {
        return this.modify;
    }

    public final String component2() {
        return this.action;
    }

    public final double component3() {
        return this.percent;
    }

    public final String component4() {
        return this.rounding;
    }

    public final String component5() {
        return this.ladder;
    }

    public final Rule copy(boolean z, String str, double d, String str2, String str3) {
        l.e(str, "action");
        l.e(str2, "rounding");
        l.e(str3, "ladder");
        return new Rule(z, str, d, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Rule)) {
                return false;
            }
            Rule rule = (Rule) obj;
            return this.modify == rule.modify && l.a(this.action, rule.action) && Double.compare(this.percent, rule.percent) == 0 && l.a(this.rounding, rule.rounding) && l.a(this.ladder, rule.ladder);
        }
        return true;
    }

    public final String getAction() {
        return this.action;
    }

    public final String getLadder() {
        return this.ladder;
    }

    public final boolean getModify() {
        return this.modify;
    }

    public final double getPercent() {
        return this.percent;
    }

    public final String getRounding() {
        return this.rounding;
    }

    public int hashCode() {
        boolean z = this.modify;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.action;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int doubleToLongBits = Double.doubleToLongBits(this.percent);
        String str2 = this.rounding;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.ladder;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((((z2 ? 1 : 0) * 31) + hashCode) * 31) + doubleToLongBits) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Rule(modify=");
        m8728C.append(this.modify);
        m8728C.append(", action=");
        m8728C.append(this.action);
        m8728C.append(", percent=");
        m8728C.append(this.percent);
        m8728C.append(", rounding=");
        m8728C.append(this.rounding);
        m8728C.append(", ladder=");
        return C22128a.m8618h(m8728C, this.ladder, ")");
    }
}
