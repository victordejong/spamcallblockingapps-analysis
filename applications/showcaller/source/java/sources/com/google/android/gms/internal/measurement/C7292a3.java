package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.a3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a3.class */
final class C7292a3 extends AbstractC7594w3 {

    /* renamed from: a */
    private final Context f34329a;

    /* renamed from: b */
    private final AbstractC7321c4<zzfn<C7446l3>> f34330b;

    public C7292a3(Context context, AbstractC7321c4<zzfn<C7446l3>> abstractC7321c4) {
        Objects.requireNonNull(context, "Null context");
        this.f34329a = context;
        this.f34330b = abstractC7321c4;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7594w3
    /* renamed from: a */
    public final Context mo6797a() {
        return this.f34329a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7594w3
    /* renamed from: b */
    public final AbstractC7321c4<zzfn<C7446l3>> mo6796b() {
        return this.f34330b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7594w3)) {
            return false;
        }
        AbstractC7594w3 abstractC7594w3 = (AbstractC7594w3) obj;
        if (!this.f34329a.equals(abstractC7594w3.mo6797a())) {
            return false;
        }
        AbstractC7321c4<zzfn<C7446l3>> abstractC7321c4 = this.f34330b;
        return abstractC7321c4 == null ? abstractC7594w3.mo6796b() == null : abstractC7321c4.equals(abstractC7594w3.mo6796b());
    }

    public final int hashCode() {
        int hashCode = this.f34329a.hashCode();
        AbstractC7321c4<zzfn<C7446l3>> abstractC7321c4 = this.f34330b;
        return ((hashCode ^ 1000003) * 1000003) ^ (abstractC7321c4 == null ? 0 : abstractC7321c4.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f34329a);
        String valueOf2 = String.valueOf(this.f34330b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46 + valueOf2.length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}
