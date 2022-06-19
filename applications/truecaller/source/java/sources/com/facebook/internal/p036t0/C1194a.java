package com.facebook.internal.p036t0;

import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeper;", "", AnalyticsConstants.NAME, "", "value", "", "(Ljava/lang/String;Z)V", "getName", "()Ljava/lang/String;", "getValue", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.t0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/t0/a.class */
public final class C1194a {

    /* renamed from: a */
    public final String f3254a;

    /* renamed from: b */
    public final boolean f3255b;

    public C1194a(String str, boolean z) {
        l.e(str, AnalyticsConstants.NAME);
        this.f3254a = str;
        this.f3255b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1194a)) {
            return false;
        }
        C1194a c1194a = (C1194a) obj;
        return l.a(this.f3254a, c1194a.f3254a) && this.f3255b == c1194a.f3255b;
    }

    public int hashCode() {
        int hashCode = this.f3254a.hashCode();
        boolean z = this.f3255b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GateKeeper(name=");
        m8728C.append(this.f3254a);
        m8728C.append(", value=");
        return C22128a.m8598m(m8728C, this.f3255b, ')');
    }
}
