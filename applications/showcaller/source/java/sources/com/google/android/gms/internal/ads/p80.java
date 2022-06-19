package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5791v;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p80.class */
final class p80 implements AbstractC5771d<AbstractC5791v, ?> {

    /* renamed from: a */
    final /* synthetic */ y70 f27890a;

    /* renamed from: b */
    final /* synthetic */ r80 f27891b;

    public p80(r80 r80Var, y70 y70Var) {
        this.f27891b = r80Var;
        this.f27890a = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        Object obj;
        try {
            obj = this.f27891b.f28807d;
            String canonicalName = obj.getClass().getCanonicalName();
            int m18310a = c5592a.m18310a();
            String m18308c = c5592a.m18308c();
            String m18309b = c5592a.m18309b();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 85 + String.valueOf(m18308c).length() + String.valueOf(m18309b).length());
            sb.append(canonicalName);
            sb.append("failed to load mediation ad: ErrorCode = ");
            sb.append(m18310a);
            sb.append(". ErrorMessage = ");
            sb.append(m18308c);
            sb.append(". ErrorDomain = ");
            sb.append(m18309b);
            ei0.m15469a(sb.toString());
            this.f27890a.mo8912i5(c5592a.m18307d());
            this.f27890a.mo8904u6(c5592a.m18310a(), c5592a.m18308c());
            this.f27890a.mo8920Z(c5592a.m18310a());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
