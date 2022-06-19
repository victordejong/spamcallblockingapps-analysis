package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.bc0;
import com.google.android.gms.internal.ads.bp2;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.f03;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/b0.class */
final class C5808b0 implements f03<ArrayList<Uri>> {

    /* renamed from: a */
    final /* synthetic */ bc0 f18696a;

    /* renamed from: b */
    final /* synthetic */ BinderC5814e0 f18697b;

    public C5808b0(BinderC5814e0 binderC5814e0, bc0 bc0Var) {
        this.f18697b = binderC5814e0;
        this.f18696a = bc0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        try {
            bc0 bc0Var = this.f18696a;
            String valueOf = String.valueOf(th.getMessage());
            bc0Var.mo8466p(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(ArrayList<Uri> arrayList) {
        boolean z;
        String str;
        Uri m17816Q6;
        bp2 bp2Var;
        ArrayList<Uri> arrayList2 = arrayList;
        try {
            this.f18696a.mo8467C5(arrayList2);
            z = this.f18697b.f18731w;
            if (!z) {
                return;
            }
            Iterator<Uri> it = arrayList2.iterator();
            while (it.hasNext()) {
                Uri next = it.next();
                if (BinderC5814e0.m17801f7(next)) {
                    str = this.f18697b.f18716F;
                    m17816Q6 = BinderC5814e0.m17816Q6(next, str, "1");
                    bp2Var = this.f18697b.f18730v;
                    bp2Var.m16302b(m17816Q6.toString());
                }
            }
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
