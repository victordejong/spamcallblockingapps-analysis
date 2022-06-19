package com.truecaller.insights.reminders.rules;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ>\u0010\r\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R!\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0017\u0010\bR!\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0018\u0010\bR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/insights/reminders/rules/ReminderRule;", "", "", "component1", "()Ljava/lang/String;", "", "", "component2", "()Ljava/util/List;", "component3", "category", "start_date", "end_date", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/truecaller/insights/reminders/rules/ReminderRule;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getEnd_date", "getStart_date", "Ljava/lang/String;", "getCategory", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/rules/ReminderRule.class */
public final class ReminderRule {
    private final String category;
    private final List<Integer> end_date;
    private final List<Integer> start_date;

    public ReminderRule(String str, List<Integer> list, List<Integer> list2) {
        l.e(str, "category");
        this.category = str;
        this.start_date = list;
        this.end_date = list2;
    }

    public static /* synthetic */ ReminderRule copy$default(ReminderRule reminderRule, String str, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reminderRule.category;
        }
        if ((i & 2) != 0) {
            list = reminderRule.start_date;
        }
        if ((i & 4) != 0) {
            list2 = reminderRule.end_date;
        }
        return reminderRule.copy(str, list, list2);
    }

    public final String component1() {
        return this.category;
    }

    public final List<Integer> component2() {
        return this.start_date;
    }

    public final List<Integer> component3() {
        return this.end_date;
    }

    public final ReminderRule copy(String str, List<Integer> list, List<Integer> list2) {
        l.e(str, "category");
        return new ReminderRule(str, list, list2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReminderRule)) {
                return false;
            }
            ReminderRule reminderRule = (ReminderRule) obj;
            return l.a(this.category, reminderRule.category) && l.a(this.start_date, reminderRule.start_date) && l.a(this.end_date, reminderRule.end_date);
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final List<Integer> getEnd_date() {
        return this.end_date;
    }

    public final List<Integer> getStart_date() {
        return this.start_date;
    }

    public int hashCode() {
        String str = this.category;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<Integer> list = this.start_date;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<Integer> list2 = this.end_date;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReminderRule(category=");
        m8728C.append(this.category);
        m8728C.append(", start_date=");
        m8728C.append(this.start_date);
        m8728C.append(", end_date=");
        return C22128a.m8602l(m8728C, this.end_date, ")");
    }
}
