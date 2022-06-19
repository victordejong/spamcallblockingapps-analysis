package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14224d;
/* renamed from: com.google.android.gms.wearable.internal.cu */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cu.class */
final class BinderC14306cu extends BinderC14302cq<AbstractC14224d> {

    /* renamed from: a */
    private final BinderC14237af f52248a;

    public BinderC14306cu(C11892d.AbstractC11894b<AbstractC14224d> abstractC11894b, BinderC14237af binderC14237af) {
        super(abstractC11894b);
        this.f52248a = (BinderC14237af) C12045o.m19162a(binderC14237af);
    }

    @Override // com.google.android.gms.wearable.internal.BinderC14231a, com.google.android.gms.wearable.internal.AbstractC14266bh
    /* renamed from: a */
    public final void mo11394a(zzdm zzdmVar) {
        C14353z c14353z;
        if (zzdmVar.zzdr != null) {
            c14353z = new C14353z(new ParcelFileDescriptor.AutoCloseInputStream(zzdmVar.zzdr));
            this.f52248a.m11440a(new C14232aa(c14353z));
        } else {
            c14353z = null;
        }
        m11398a((BinderC14306cu) new C14350w(new Status(zzdmVar.statusCode), c14353z));
    }
}
