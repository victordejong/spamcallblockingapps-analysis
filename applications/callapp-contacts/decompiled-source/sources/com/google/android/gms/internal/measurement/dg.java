package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dg.class */
final class dg extends eb {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28955a;

    /* renamed from: b  reason: collision with root package name */
    private final ek<ei<dq>> f28956b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(Context context, ek<ei<dq>> ekVar) {
        Objects.requireNonNull(context, "Null context");
        this.f28955a = context;
        this.f28956b = ekVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.eb
    public final Context a() {
        return this.f28955a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.eb
    public final ek<ei<dq>> b() {
        return this.f28956b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof eb)) {
            return false;
        }
        eb ebVar = (eb) obj;
        if (!this.f28955a.equals(ebVar.a())) {
            return false;
        }
        ek<ei<dq>> ekVar = this.f28956b;
        return ekVar == null ? ebVar.b() == null : ekVar.equals(ebVar.b());
    }

    public final int hashCode() {
        int hashCode = this.f28955a.hashCode();
        ek<ei<dq>> ekVar = this.f28956b;
        return ((hashCode ^ 1000003) * 1000003) ^ (ekVar == null ? 0 : ekVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f28955a);
        String valueOf2 = String.valueOf(this.f28956b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}
