package com.truecaller.contextcall.p159db.availability;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u001c\u0010\n\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u0016\u0010\u0007R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", "component3", AnalyticsConstants.PHONE, "enabled", "version", "copy", "(Ljava/lang/String;II)Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getVersion", "getEnabled", "Ljava/lang/String;", "getPhone", "<init>", "(Ljava/lang/String;II)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.db.availability.ContextCallAvailability */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/availability/ContextCallAvailability.class */
public final class ContextCallAvailability {
    private final int enabled;
    private final String phone;
    private final int version;

    public ContextCallAvailability(String str, int i, int i2) {
        l.e(str, AnalyticsConstants.PHONE);
        this.phone = str;
        this.enabled = i;
        this.version = i2;
    }

    public /* synthetic */ ContextCallAvailability(String str, int i, int i2, int i3, f fVar) {
        this(str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2);
    }

    public static /* synthetic */ ContextCallAvailability copy$default(ContextCallAvailability contextCallAvailability, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = contextCallAvailability.phone;
        }
        if ((i3 & 2) != 0) {
            i = contextCallAvailability.enabled;
        }
        if ((i3 & 4) != 0) {
            i2 = contextCallAvailability.version;
        }
        return contextCallAvailability.copy(str, i, i2);
    }

    public final String component1() {
        return this.phone;
    }

    public final int component2() {
        return this.enabled;
    }

    public final int component3() {
        return this.version;
    }

    public final ContextCallAvailability copy(String str, int i, int i2) {
        l.e(str, AnalyticsConstants.PHONE);
        return new ContextCallAvailability(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ContextCallAvailability)) {
                return false;
            }
            ContextCallAvailability contextCallAvailability = (ContextCallAvailability) obj;
            return l.a(this.phone, contextCallAvailability.phone) && this.enabled == contextCallAvailability.enabled && this.version == contextCallAvailability.version;
        }
        return true;
    }

    public final int getEnabled() {
        return this.enabled;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.phone;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.enabled) * 31) + this.version;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContextCallAvailability(phone=");
        m8728C.append(this.phone);
        m8728C.append(", enabled=");
        m8728C.append(this.enabled);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.version, ")");
    }
}
