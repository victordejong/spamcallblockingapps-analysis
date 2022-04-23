package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.d;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cu.class */
final class cu extends cq<d> {

    /* renamed from: a  reason: collision with root package name */
    private final af f30106a;

    public cu(d.b<com.google.android.gms.wearable.d> bVar, af afVar) {
        super(bVar);
        this.f30106a = (af) o.a(afVar);
    }

    @Override // com.google.android.gms.wearable.internal.a, com.google.android.gms.wearable.internal.bh
    public final void a(zzdm zzdmVar) {
        z zVar;
        if (zzdmVar.zzdr != null) {
            zVar = new z(new ParcelFileDescriptor.AutoCloseInputStream(zzdmVar.zzdr));
            this.f30106a.a(new aa(zVar));
        } else {
            zVar = null;
        }
        a((cu) new w(new Status(zzdmVar.statusCode), zVar));
    }
}
