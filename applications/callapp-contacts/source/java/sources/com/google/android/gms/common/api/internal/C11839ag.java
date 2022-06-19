package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.C12041m;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.api.internal.ag */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ag.class */
public final class C11839ag {

    /* renamed from: a */
    final C11859b<?> f39232a;

    /* renamed from: b */
    final Feature f39233b;

    public /* synthetic */ C11839ag(C11859b c11859b, Feature feature, C11833aa c11833aa) {
        this.f39232a = c11859b;
        this.f39233b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C11839ag)) {
            return false;
        }
        C11839ag c11839ag = (C11839ag) obj;
        return C12041m.m19168a(this.f39232a, c11839ag.f39232a) && C12041m.m19168a(this.f39233b, c11839ag.f39233b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f39232a, this.f39233b});
    }

    public final String toString() {
        return C12041m.m19169a(this).m19166a("key", this.f39232a).m19166a("feature", this.f39233b).toString();
    }
}
