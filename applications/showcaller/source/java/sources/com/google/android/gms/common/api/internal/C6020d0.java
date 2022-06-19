package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.C6147m;
/* renamed from: com.google.android.gms.common.api.internal.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d0.class */
public final class C6020d0 {

    /* renamed from: a */
    private final C6012b<?> f19250a;

    /* renamed from: b */
    private final Feature f19251b;

    public /* synthetic */ C6020d0(C6012b c6012b, Feature feature, C6071x c6071x) {
        this.f19250a = c6012b;
        this.f19251b = feature;
    }

    /* renamed from: a */
    public static /* synthetic */ C6012b m17381a(C6020d0 c6020d0) {
        return c6020d0.f19250a;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C6020d0)) {
            return false;
        }
        C6020d0 c6020d0 = (C6020d0) obj;
        return C6147m.m17044a(this.f19250a, c6020d0.f19250a) && C6147m.m17044a(this.f19251b, c6020d0.f19251b);
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f19250a, this.f19251b);
    }

    public final String toString() {
        return C6147m.m17042c(this).m17041a("key", this.f19250a).m17041a("feature", this.f19251b).toString();
    }
}
