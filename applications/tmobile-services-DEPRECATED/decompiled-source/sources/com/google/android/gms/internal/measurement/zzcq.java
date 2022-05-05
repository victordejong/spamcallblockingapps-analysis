package com.google.android.gms.internal.measurement;

import android.content.Context;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcq.class */
public final class zzcq extends zzdp {

    /* renamed from: a */
    private final Context f8321a;

    /* renamed from: b */
    private final zzec<zzdy<zzdd>> f8322b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcq(Context context, @Nullable zzec<zzdy<zzdd>> zzecVar) {
        if (context != null) {
            this.f8321a = context;
            this.f8322b = zzecVar;
            return;
        }
        throw new NullPointerException("Null context");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdp
    /* renamed from: a */
    public final Context mo12751a() {
        return this.f8321a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdp
    @Nullable
    /* renamed from: b */
    public final zzec<zzdy<zzdd>> mo12750b() {
        return this.f8322b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdp)) {
            return false;
        }
        zzdp zzdpVar = (zzdp) obj;
        if (!this.f8321a.equals(zzdpVar.mo12751a())) {
            return false;
        }
        zzec<zzdy<zzdd>> zzecVar = this.f8322b;
        return zzecVar == null ? zzdpVar.mo12750b() == null : zzecVar.equals(zzdpVar.mo12750b());
    }

    public final int hashCode() {
        int hashCode = this.f8321a.hashCode();
        zzec<zzdy<zzdd>> zzecVar = this.f8322b;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzecVar == null ? 0 : zzecVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8321a);
        String valueOf2 = String.valueOf(this.f8322b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}
