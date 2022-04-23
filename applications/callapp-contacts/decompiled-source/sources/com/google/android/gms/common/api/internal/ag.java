package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.m;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ag.class */
public final class ag {

    /* renamed from: a  reason: collision with root package name */
    final b<?> f22638a;

    /* renamed from: b  reason: collision with root package name */
    final Feature f22639b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ag(b bVar, Feature feature, aa aaVar) {
        this.f22638a = bVar;
        this.f22639b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ag)) {
            return false;
        }
        ag agVar = (ag) obj;
        return m.a(this.f22638a, agVar.f22638a) && m.a(this.f22639b, agVar.f22639b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f22638a, this.f22639b});
    }

    public final String toString() {
        return m.a(this).a("key", this.f22638a).a("feature", this.f22639b).toString();
    }
}
