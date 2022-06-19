package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5760a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5778k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k80.class */
final class k80 implements AbstractC5771d<AbstractC5778k, ?> {

    /* renamed from: a */
    final /* synthetic */ y70 f25080a;

    /* renamed from: b */
    final /* synthetic */ AbstractC5760a f25081b;

    /* renamed from: c */
    final /* synthetic */ r80 f25082c;

    public k80(r80 r80Var, y70 y70Var, AbstractC5760a abstractC5760a) {
        this.f25082c = r80Var;
        this.f25080a = y70Var;
        this.f25081b = abstractC5760a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            String canonicalName = this.f25081b.getClass().getCanonicalName();
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
            this.f25080a.mo8912i5(c5592a.m18307d());
            this.f25080a.mo8904u6(c5592a.m18310a(), c5592a.m18308c());
            this.f25080a.mo8920Z(c5592a.m18310a());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
