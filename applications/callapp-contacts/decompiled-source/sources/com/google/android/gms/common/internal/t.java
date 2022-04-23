package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.d;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public final class t implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final t f22905a = new t(new a(null).f22907a, null);

    /* renamed from: b  reason: collision with root package name */
    public final String f22906b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/t$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f22907a;

        private a() {
        }

        /* synthetic */ a(w wVar) {
        }
    }

    /* synthetic */ t(String str, w wVar) {
        this.f22906b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        return m.a(this.f22906b, ((t) obj).f22906b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f22906b});
    }
}
