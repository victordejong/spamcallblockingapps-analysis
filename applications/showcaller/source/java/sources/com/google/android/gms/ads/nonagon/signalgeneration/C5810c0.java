package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.bc0;
import com.google.android.gms.internal.ads.bp2;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.f03;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/c0.class */
final class C5810c0 implements f03<Uri> {

    /* renamed from: a */
    final /* synthetic */ bc0 f18699a;

    /* renamed from: b */
    final /* synthetic */ BinderC5814e0 f18700b;

    public C5810c0(BinderC5814e0 binderC5814e0, bc0 bc0Var) {
        this.f18700b = binderC5814e0;
        this.f18699a = bc0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        try {
            bc0 bc0Var = this.f18699a;
            String valueOf = String.valueOf(th.getMessage());
            bc0Var.mo8466p(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(Uri uri) {
        AtomicInteger atomicInteger;
        boolean z;
        String str;
        Uri m17816Q6;
        bp2 bp2Var;
        Uri uri2 = uri;
        try {
            atomicInteger = this.f18700b.f18713C;
            atomicInteger.getAndIncrement();
            this.f18699a.mo8467C5(Collections.singletonList(uri2));
            z = this.f18700b.f18732x;
            if (!z) {
                return;
            }
            str = this.f18700b.f18716F;
            m17816Q6 = BinderC5814e0.m17816Q6(uri2, str, "1");
            bp2Var = this.f18700b.f18730v;
            bp2Var.m16302b(m17816Q6.toString());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
