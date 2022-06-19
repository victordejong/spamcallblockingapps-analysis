package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC11821d;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.internal.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public final class C12052t implements AbstractC11821d {

    /* renamed from: a */
    public static final C12052t f39571a = new C12052t(new C12053a(null).f39573a, null);

    /* renamed from: b */
    public final String f39572b;

    /* renamed from: com.google.android.gms.common.internal.t$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/t$a.class */
    public static final class C12053a {

        /* renamed from: a */
        String f39573a;

        private C12053a() {
        }

        /* synthetic */ C12053a(C12056w c12056w) {
        }
    }

    /* synthetic */ C12052t(String str, C12056w c12056w) {
        this.f39572b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12052t) {
            return C12041m.m19168a(this.f39572b, ((C12052t) obj).f39572b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f39572b});
    }
}
