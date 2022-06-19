package com.truecaller.filters.sync;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19231g0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\t\b\u0007\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001BI\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\bR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\fR!\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0019\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/truecaller/filters/sync/TopSpammer;", "", "other", "", "compareTo", "(Lcom/truecaller/filters/sync/TopSpammer;)I", "", "toString", "()Ljava/lang/String;", "reports", "Ljava/lang/Integer;", "getReports", "()Ljava/lang/Integer;", "label", "Ljava/lang/String;", "getLabel", "version", "getVersion", "", "", "categories", "Ljava/util/List;", "getCategories", "()Ljava/util/List;", "value", "getValue", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/filters/sync/TopSpammer.class */
public final class TopSpammer implements Comparable<TopSpammer> {
    private final List<Long> categories;
    private final String label;
    private final Integer reports;
    private final String value;
    private final Integer version;

    public TopSpammer() {
        this(null, null, null, null, null, 31, null);
    }

    public TopSpammer(String str, String str2, Integer num, List<Long> list, Integer num2) {
        this.value = str;
        this.label = str2;
        this.reports = num;
        this.categories = list;
        this.version = num2;
    }

    public /* synthetic */ TopSpammer(String str, String str2, Integer num, List list, Integer num2, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : list, (i & 16) != 0 ? null : num2);
    }

    public int compareTo(TopSpammer topSpammer) {
        l.e(topSpammer, "other");
        return C19231g0.m13807J(this.value, topSpammer.value, false);
    }

    public final List<Long> getCategories() {
        return this.categories;
    }

    public final String getLabel() {
        return this.label;
    }

    public final Integer getReports() {
        return this.reports;
    }

    public final String getValue() {
        return this.value;
    }

    public final Integer getVersion() {
        return this.version;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Spammer{reports=");
        m8728C.append(this.reports);
        m8728C.append(",");
        m8728C.append("spamCategories=");
        m8728C.append(this.categories);
        m8728C.append(",");
        m8728C.append("spamVersion=");
        return C22128a.m8689L2(m8728C, this.version, "}");
    }
}
