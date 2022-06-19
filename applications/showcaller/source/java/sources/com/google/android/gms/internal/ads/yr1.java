package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yr1.class */
public final class yr1 implements zs1 {

    /* renamed from: a */
    private static final Pattern f32622a = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: b */
    private final yq1 f32623b;

    /* renamed from: c */
    private final s03 f32624c;

    /* renamed from: d */
    private final xj2 f32625d;

    /* renamed from: e */
    private final ScheduledExecutorService f32626e;

    /* renamed from: f */
    private final gv1 f32627f;

    public yr1(xj2 xj2Var, yq1 yq1Var, s03 s03Var, ScheduledExecutorService scheduledExecutorService, gv1 gv1Var) {
        this.f32625d = xj2Var;
        this.f32623b = yq1Var;
        this.f32624c = s03Var;
        this.f32626e = scheduledExecutorService;
        this.f32627f = gv1Var;
    }

    @Override // com.google.android.gms.internal.ads.zs1
    /* renamed from: a */
    public final r03<rj2> mo8196a(zzcbj zzcbjVar) {
        r03<rj2> m13995i = k03.m13995i(this.f32623b.m8736a(zzcbjVar), new uz2(this) { // from class: com.google.android.gms.internal.ads.vr1

            /* renamed from: a */
            private final yr1 f31327a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31327a = this;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f31327a.m8710d((InputStream) obj);
            }
        }, this.f32624c);
        r03<rj2> r03Var = m13995i;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25551O3)).booleanValue()) {
            r03Var = k03.m13997g(k03.m13996h(m13995i, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25559P3)).intValue(), TimeUnit.SECONDS, this.f32626e), TimeoutException.class, wr1.f31769a, qi0.f28500f);
        }
        k03.m13988p(r03Var, new xr1(this), qi0.f28500f);
        return r03Var;
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m8710d(InputStream inputStream) {
        return k03.m14003a(new rj2(new oj2(this.f32625d), qj2.m11869a(new InputStreamReader(inputStream))));
    }
}
