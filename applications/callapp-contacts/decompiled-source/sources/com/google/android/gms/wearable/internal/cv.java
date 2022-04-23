package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.e;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cv.class */
final class cv extends cq<e> {

    /* renamed from: a  reason: collision with root package name */
    private final af f30107a;

    public cv(d.b<e> bVar, af afVar) {
        super(bVar);
        this.f30107a = (af) o.a(afVar);
    }

    @Override // com.google.android.gms.wearable.internal.a, com.google.android.gms.wearable.internal.bh
    public final void a(zzdo zzdoVar) {
        ab abVar;
        if (zzdoVar.zzdr != null) {
            abVar = new ab(new ParcelFileDescriptor.AutoCloseOutputStream(zzdoVar.zzdr));
            this.f30107a.a(new ac(abVar));
        } else {
            abVar = null;
        }
        a((cv) new x(new Status(zzdoVar.statusCode), abVar));
    }
}
