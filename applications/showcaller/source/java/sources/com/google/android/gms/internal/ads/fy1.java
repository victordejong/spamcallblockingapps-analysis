package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.C0351c;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C5651m;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.common.util.C6237o;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fy1.class */
public final class fy1 implements qw1<lb1> {

    /* renamed from: a */
    private final Context f23192a;

    /* renamed from: b */
    private final jc1 f23193b;

    /* renamed from: c */
    private final Executor f23194c;

    /* renamed from: d */
    private final dj2 f23195d;

    public fy1(Context context, Executor executor, jc1 jc1Var, dj2 dj2Var) {
        this.f23192a = context;
        this.f23193b = jc1Var;
        this.f23194c = executor;
        this.f23195d = dj2Var;
    }

    /* renamed from: d */
    private static String m15027d(ej2 ej2Var) {
        try {
            return ej2Var.f22250v.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        return (this.f23192a instanceof Activity) && C6237o.m16782b() && C6643jx.m14023a(this.f23192a) && !TextUtils.isEmpty(m15027d(ej2Var));
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<lb1> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        String m15027d = m15027d(ej2Var);
        return k03.m13995i(k03.m14003a(null), new uz2(this, m15027d != null ? Uri.parse(m15027d) : null, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.dy1

            /* renamed from: a */
            private final fy1 f21928a;

            /* renamed from: b */
            private final Uri f21929b;

            /* renamed from: c */
            private final rj2 f21930c;

            /* renamed from: d */
            private final ej2 f21931d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21928a = this;
                this.f21929b = parse;
                this.f21930c = rj2Var;
                this.f21931d = ej2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f21928a.m15028c(this.f21929b, this.f21930c, this.f21931d, obj);
            }
        }, this.f23194c);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m15028c(Uri uri, rj2 rj2Var, ej2 ej2Var, Object obj) {
        try {
            C0351c m34653a = new C0351c.C0352a().m34653a();
            m34653a.f1470a.setData(uri);
            zzc zzcVar = new zzc(m34653a.f1470a, null);
            vi0 vi0Var = new vi0();
            mb1 mo10542c = this.f23193b.mo10542c(new mz0(rj2Var, ej2Var, null), new pb1(new qc1(vi0Var) { // from class: com.google.android.gms.internal.ads.ey1

                /* renamed from: a */
                private final vi0 f22616a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22616a = vi0Var;
                }

                @Override // com.google.android.gms.internal.ads.qc1
                /* renamed from: a */
                public final void mo9015a(boolean z, Context context, l31 l31Var) {
                    vi0 vi0Var2 = this.f22616a;
                    try {
                        C5667s.m18161c();
                        C5651m.m18186a(context, (AdOverlayInfoParcel) vi0Var2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }, null));
            vi0Var.m10016c(new AdOverlayInfoParcel(zzcVar, null, mo10542c.mo11321i(), null, new zzcgz(0, 0, false, false, false), null, null));
            this.f23195d.m15784d();
            return k03.m14003a(mo10542c.mo11322h());
        } catch (Throwable th) {
            ei0.m15466d("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
