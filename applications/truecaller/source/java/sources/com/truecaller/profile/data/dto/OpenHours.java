package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import java.util.SortedSet;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B-\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ8\u0010\r\u001a\u00020��2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u000f\u0010\bJ\u0010\u0010\u0010\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0018\u0010\bR\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0005¨\u0006\u001d"}, d2 = {"Lcom/truecaller/profile/data/dto/OpenHours;", "", "Ljava/util/SortedSet;", "", "component1", "()Ljava/util/SortedSet;", "", "component2", "()Ljava/lang/String;", "component3", "weekday", "opens", "closes", "copy", "(Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/OpenHours;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getOpens", "getCloses", "Ljava/util/SortedSet;", "getWeekday", "<init>", "(Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/OpenHours.class */
public final class OpenHours {
    private final String closes;
    private final String opens;
    private final SortedSet<Integer> weekday;

    public OpenHours(SortedSet<Integer> sortedSet, String str, String str2) {
        l.e(sortedSet, "weekday");
        this.weekday = sortedSet;
        this.opens = str;
        this.closes = str2;
    }

    public /* synthetic */ OpenHours(SortedSet sortedSet, String str, String str2, int i, f fVar) {
        this(sortedSet, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ OpenHours copy$default(OpenHours openHours, SortedSet sortedSet, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            sortedSet = openHours.weekday;
        }
        if ((i & 2) != 0) {
            str = openHours.opens;
        }
        if ((i & 4) != 0) {
            str2 = openHours.closes;
        }
        return openHours.copy(sortedSet, str, str2);
    }

    public final SortedSet<Integer> component1() {
        return this.weekday;
    }

    public final String component2() {
        return this.opens;
    }

    public final String component3() {
        return this.closes;
    }

    public final OpenHours copy(SortedSet<Integer> sortedSet, String str, String str2) {
        l.e(sortedSet, "weekday");
        return new OpenHours(sortedSet, str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OpenHours)) {
                return false;
            }
            OpenHours openHours = (OpenHours) obj;
            return l.a(this.weekday, openHours.weekday) && l.a(this.opens, openHours.opens) && l.a(this.closes, openHours.closes);
        }
        return true;
    }

    public final String getCloses() {
        return this.closes;
    }

    public final String getOpens() {
        return this.opens;
    }

    public final SortedSet<Integer> getWeekday() {
        return this.weekday;
    }

    public int hashCode() {
        SortedSet<Integer> sortedSet = this.weekday;
        int i = 0;
        int hashCode = sortedSet != null ? sortedSet.hashCode() : 0;
        String str = this.opens;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.closes;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OpenHours(weekday=");
        m8728C.append(this.weekday);
        m8728C.append(", opens=");
        m8728C.append(this.opens);
        m8728C.append(", closes=");
        return C22128a.m8618h(m8728C, this.closes, ")");
    }
}
