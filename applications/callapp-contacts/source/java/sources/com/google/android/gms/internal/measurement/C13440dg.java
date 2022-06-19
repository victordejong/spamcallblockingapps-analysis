package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.dg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dg.class */
final class C13440dg extends AbstractC13462eb {

    /* renamed from: a */
    private final Context f50636a;

    /* renamed from: b */
    private final AbstractC13471ek<AbstractC13469ei<C13450dq>> f50637b;

    public C13440dg(Context context, AbstractC13471ek<AbstractC13469ei<C13450dq>> abstractC13471ek) {
        Objects.requireNonNull(context, "Null context");
        this.f50636a = context;
        this.f50637b = abstractC13471ek;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13462eb
    /* renamed from: a */
    public final Context mo12906a() {
        return this.f50636a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13462eb
    /* renamed from: b */
    public final AbstractC13471ek<AbstractC13469ei<C13450dq>> mo12905b() {
        return this.f50637b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC13462eb)) {
            return false;
        }
        AbstractC13462eb abstractC13462eb = (AbstractC13462eb) obj;
        if (!this.f50636a.equals(abstractC13462eb.mo12906a())) {
            return false;
        }
        AbstractC13471ek<AbstractC13469ei<C13450dq>> abstractC13471ek = this.f50637b;
        return abstractC13471ek == null ? abstractC13462eb.mo12905b() == null : abstractC13471ek.equals(abstractC13462eb.mo12905b());
    }

    public final int hashCode() {
        int hashCode = this.f50636a.hashCode();
        AbstractC13471ek<AbstractC13469ei<C13450dq>> abstractC13471ek = this.f50637b;
        return ((hashCode ^ 1000003) * 1000003) ^ (abstractC13471ek == null ? 0 : abstractC13471ek.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f50636a);
        String valueOf2 = String.valueOf(this.f50637b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}
