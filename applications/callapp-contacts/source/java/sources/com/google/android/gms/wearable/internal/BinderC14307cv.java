package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14225e;
/* renamed from: com.google.android.gms.wearable.internal.cv */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cv.class */
final class BinderC14307cv extends BinderC14302cq<AbstractC14225e> {

    /* renamed from: a */
    private final BinderC14237af f52249a;

    public BinderC14307cv(C11892d.AbstractC11894b<AbstractC14225e> abstractC11894b, BinderC14237af binderC14237af) {
        super(abstractC11894b);
        this.f52249a = (BinderC14237af) C12045o.m19162a(binderC14237af);
    }

    @Override // com.google.android.gms.wearable.internal.BinderC14231a, com.google.android.gms.wearable.internal.AbstractC14266bh
    /* renamed from: a */
    public final void mo11393a(zzdo zzdoVar) {
        C14233ab c14233ab;
        if (zzdoVar.zzdr != null) {
            c14233ab = new C14233ab(new ParcelFileDescriptor.AutoCloseOutputStream(zzdoVar.zzdr));
            this.f52249a.m11440a(new C14234ac(c14233ab));
        } else {
            c14233ab = null;
        }
        m11398a((BinderC14307cv) new C14351x(new Status(zzdoVar.statusCode), c14233ab));
    }
}
