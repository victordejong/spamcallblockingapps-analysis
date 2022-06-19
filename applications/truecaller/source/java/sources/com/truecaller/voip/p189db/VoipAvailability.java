package com.truecaller.voip.p189db;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R$\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\n\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u001f\u0010\u0007¨\u0006\""}, d2 = {"Lcom/truecaller/voip/db/VoipAvailability;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", "component3", AnalyticsConstants.PHONE, "enabled", "version", "copy", "(Ljava/lang/String;II)Lcom/truecaller/voip/db/VoipAvailability;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getVersion", "Ljava/lang/String;", "getPhone", "", "id", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "setId", "(Ljava/lang/Long;)V", "getEnabled", "<init>", "(Ljava/lang/String;II)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.voip.db.VoipAvailability */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipAvailability.class */
public final class VoipAvailability {
    private final int enabled;

    /* renamed from: id */
    private Long f16346id;
    private final String phone;
    private final int version;

    public VoipAvailability(String str, int i, int i2) {
        l.e(str, AnalyticsConstants.PHONE);
        this.phone = str;
        this.enabled = i;
        this.version = i2;
    }

    public /* synthetic */ VoipAvailability(String str, int i, int i2, int i3, f fVar) {
        this(str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2);
    }

    public static /* synthetic */ VoipAvailability copy$default(VoipAvailability voipAvailability, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = voipAvailability.phone;
        }
        if ((i3 & 2) != 0) {
            i = voipAvailability.enabled;
        }
        if ((i3 & 4) != 0) {
            i2 = voipAvailability.version;
        }
        return voipAvailability.copy(str, i, i2);
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

    public final VoipAvailability copy(String str, int i, int i2) {
        l.e(str, AnalyticsConstants.PHONE);
        return new VoipAvailability(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipAvailability)) {
                return false;
            }
            VoipAvailability voipAvailability = (VoipAvailability) obj;
            return l.a(this.phone, voipAvailability.phone) && this.enabled == voipAvailability.enabled && this.version == voipAvailability.version;
        }
        return true;
    }

    public final int getEnabled() {
        return this.enabled;
    }

    public final Long getId() {
        return this.f16346id;
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

    public final void setId(Long l) {
        this.f16346id = l;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipAvailability(phone=");
        m8728C.append(this.phone);
        m8728C.append(", enabled=");
        m8728C.append(this.enabled);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.version, ")");
    }
}
