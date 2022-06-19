package com.truecaller.spamcategories;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B-\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ<\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0007J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0019\u001a\u0004\b\u001a\u0010\n\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001f\u001a\u0004\b \u0010\u0004R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b!\u0010\u0007¨\u0006$"}, d2 = {"Lcom/truecaller/spamcategories/SpamCategory;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "component4", "()Ljava/lang/Long;", "id", AnalyticsConstants.NAME, RemoteMessageConst.Notification.ICON, "rowId", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/truecaller/spamcategories/SpamCategory;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Long;", "getRowId", "setRowId", "(Ljava/lang/Long;)V", "Ljava/lang/String;", "getName", "J", "getId", "getIcon", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "spamcategories_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/SpamCategory.class */
public final class SpamCategory {
    private final String icon;

    /* renamed from: id */
    private final long f14918id;
    private final String name;
    private Long rowId;

    public SpamCategory(long j, String str, String str2, Long l) {
        l.e(str, AnalyticsConstants.NAME);
        this.f14918id = j;
        this.name = str;
        this.icon = str2;
        this.rowId = l;
    }

    public /* synthetic */ SpamCategory(long j, String str, String str2, Long l, int i, f fVar) {
        this(j, str, str2, (i & 8) != 0 ? null : l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.spamcategories.SpamCategory] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public static /* synthetic */ SpamCategory copy$default(SpamCategory spamCategory, long j, String str, String str2, Long l, int i, Object obj) {
        ?? r8 = j;
        if ((i & 1) != 0) {
            r8 = ((SpamCategory) spamCategory).f14918id;
        }
        if ((i & 2) != 0) {
            str = ((SpamCategory) spamCategory).name;
        }
        if ((i & 4) != 0) {
            str2 = ((SpamCategory) spamCategory).icon;
        }
        if ((i & 8) != 0) {
            l = ((SpamCategory) spamCategory).rowId;
        }
        return spamCategory.copy(r8, str, str2, l);
    }

    public final long component1() {
        return this.f14918id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.icon;
    }

    public final Long component4() {
        return this.rowId;
    }

    public final SpamCategory copy(long j, String str, String str2, Long l) {
        l.e(str, AnalyticsConstants.NAME);
        return new SpamCategory(j, str, str2, l);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SpamCategory)) {
                return false;
            }
            SpamCategory spamCategory = (SpamCategory) obj;
            return this.f14918id == spamCategory.f14918id && l.a(this.name, spamCategory.name) && l.a(this.icon, spamCategory.icon) && l.a(this.rowId, spamCategory.rowId);
        }
        return true;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final long getId() {
        return this.f14918id;
    }

    public final String getName() {
        return this.name;
    }

    public final Long getRowId() {
        return this.rowId;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f14918id);
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.icon;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Long l = this.rowId;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i;
    }

    public final void setRowId(Long l) {
        this.rowId = l;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamCategory(id=");
        m8728C.append(this.f14918id);
        m8728C.append(", name=");
        m8728C.append(this.name);
        m8728C.append(", icon=");
        m8728C.append(this.icon);
        m8728C.append(", rowId=");
        m8728C.append(this.rowId);
        m8728C.append(")");
        return m8728C.toString();
    }
}
