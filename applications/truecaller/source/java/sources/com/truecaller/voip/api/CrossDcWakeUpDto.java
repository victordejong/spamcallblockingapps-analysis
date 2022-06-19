package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/voip/api/CrossDcWakeUpDto;", "", "", "component1", "()Ljava/lang/String;", "component2", "secret", AnalyticsConstants.MODE, "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/voip/api/CrossDcWakeUpDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getMode", "getSecret", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CrossDcWakeUpDto.class */
public final class CrossDcWakeUpDto {
    private final String mode;
    private final String secret;

    public CrossDcWakeUpDto(String str, String str2) {
        l.e(str, "secret");
        l.e(str2, AnalyticsConstants.MODE);
        this.secret = str;
        this.mode = str2;
    }

    public static /* synthetic */ CrossDcWakeUpDto copy$default(CrossDcWakeUpDto crossDcWakeUpDto, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = crossDcWakeUpDto.secret;
        }
        if ((i & 2) != 0) {
            str2 = crossDcWakeUpDto.mode;
        }
        return crossDcWakeUpDto.copy(str, str2);
    }

    public final String component1() {
        return this.secret;
    }

    public final String component2() {
        return this.mode;
    }

    public final CrossDcWakeUpDto copy(String str, String str2) {
        l.e(str, "secret");
        l.e(str2, AnalyticsConstants.MODE);
        return new CrossDcWakeUpDto(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CrossDcWakeUpDto)) {
                return false;
            }
            CrossDcWakeUpDto crossDcWakeUpDto = (CrossDcWakeUpDto) obj;
            return l.a(this.secret, crossDcWakeUpDto.secret) && l.a(this.mode, crossDcWakeUpDto.mode);
        }
        return true;
    }

    public final String getMode() {
        return this.mode;
    }

    public final String getSecret() {
        return this.secret;
    }

    public int hashCode() {
        String str = this.secret;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.mode;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CrossDcWakeUpDto(secret=");
        m8728C.append(this.secret);
        m8728C.append(", mode=");
        return C22128a.m8618h(m8728C, this.mode, ")");
    }
}
