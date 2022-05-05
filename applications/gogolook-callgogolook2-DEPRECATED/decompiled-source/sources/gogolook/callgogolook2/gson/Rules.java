package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/gson/Rules;", "", "type", "", "ruleData", "", "Lgogolook/callgogolook2/gson/RuleData;", "(Ljava/lang/String;Ljava/util/List;)V", "getRuleData", "()Ljava/util/List;", "getType", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/Rules.class */
public final class Rules {
    @AbstractC10120c("rule_data")
    public final List<RuleData> ruleData;
    @AbstractC10120c("type")
    public final String type;

    public Rules() {
        this(null, null, 3, null);
    }

    public Rules(String str, List<RuleData> list) {
        this.type = str;
        this.ruleData = list;
    }

    public /* synthetic */ Rules(String str, List list, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : list);
    }

    /* renamed from: a */
    public final List<RuleData> m28191a() {
        return this.ruleData;
    }

    /* renamed from: b */
    public final String m28190b() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rules)) {
            return false;
        }
        Rules rules = (Rules) obj;
        return C15149k.m384a((Object) this.type, (Object) rules.type) && C15149k.m384a(this.ruleData, rules.ruleData);
    }

    public int hashCode() {
        String str = this.type;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<RuleData> list = this.ruleData;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "Rules(type=" + this.type + ", ruleData=" + this.ruleData + ")";
    }
}
