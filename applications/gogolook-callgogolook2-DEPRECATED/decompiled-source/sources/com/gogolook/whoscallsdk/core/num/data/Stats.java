package com.gogolook.whoscallsdk.core.num.data;

import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003JE\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0012\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/Stats;", "", "favor", "", NovaHomeBadger.TAG, "spam", "contact", "callin", "offhook", "(IIIIII)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/Stats.class */
public final class Stats {
    public int callin;
    public int contact;
    public int favor;
    public int offhook;
    public int spam;
    public int tag;

    public Stats() {
        this(0, 0, 0, 0, 0, 0, 63, null);
    }

    public Stats(int i, int i2, int i3, int i4, int i5, int i6) {
        this.favor = i;
        this.tag = i2;
        this.spam = i3;
        this.contact = i4;
        this.callin = i5;
        this.offhook = i6;
    }

    public /* synthetic */ Stats(int i, int i2, int i3, int i4, int i5, int i6, int i7, C15145g gVar) {
        this((i7 & 1) != 0 ? 0 : i, (i7 & 2) != 0 ? 0 : i2, (i7 & 4) != 0 ? 0 : i3, (i7 & 8) != 0 ? 0 : i4, (i7 & 16) != 0 ? 0 : i5, (i7 & 32) != 0 ? 0 : i6);
    }

    public static /* synthetic */ Stats copy$default(Stats stats, int i, int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i = stats.favor;
        }
        if ((i7 & 2) != 0) {
            i2 = stats.tag;
        }
        if ((i7 & 4) != 0) {
            i3 = stats.spam;
        }
        if ((i7 & 8) != 0) {
            i4 = stats.contact;
        }
        if ((i7 & 16) != 0) {
            i5 = stats.callin;
        }
        if ((i7 & 32) != 0) {
            i6 = stats.offhook;
        }
        return stats.copy(i, i2, i3, i4, i5, i6);
    }

    public final int component1() {
        return this.favor;
    }

    public final int component2() {
        return this.tag;
    }

    public final int component3() {
        return this.spam;
    }

    public final int component4() {
        return this.contact;
    }

    public final int component5() {
        return this.callin;
    }

    public final int component6() {
        return this.offhook;
    }

    public final Stats copy(int i, int i2, int i3, int i4, int i5, int i6) {
        return new Stats(i, i2, i3, i4, i5, i6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stats)) {
            return false;
        }
        Stats stats = (Stats) obj;
        if (!(this.favor == stats.favor)) {
            return false;
        }
        if (!(this.tag == stats.tag)) {
            return false;
        }
        if (!(this.spam == stats.spam)) {
            return false;
        }
        if (!(this.contact == stats.contact)) {
            return false;
        }
        if (!(this.callin == stats.callin)) {
            return false;
        }
        return this.offhook == stats.offhook;
    }

    public int hashCode() {
        return (((((((((this.favor * 31) + this.tag) * 31) + this.spam) * 31) + this.contact) * 31) + this.callin) * 31) + this.offhook;
    }

    public String toString() {
        return "Stats(favor=" + this.favor + ", tag=" + this.tag + ", spam=" + this.spam + ", contact=" + this.contact + ", callin=" + this.callin + ", offhook=" + this.offhook + ")";
    }
}
