package com.google.android.gms.common.internal.p270u;

import android.content.Context;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.internal.AbstractC6046m;
import com.google.android.gms.common.api.internal.AbstractC6056q;
import com.google.android.gms.common.internal.AbstractC6167s;
import com.google.android.gms.common.internal.C6171t;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.C7285d;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.internal.u.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u/d.class */
public final class C6178d extends AbstractC5996c<C6171t> implements AbstractC6167s {

    /* renamed from: k */
    private static final C5984a.C5994g<C6179e> f19607k;

    /* renamed from: l */
    private static final C5984a.AbstractC5985a<C6179e, C6171t> f19608l;

    /* renamed from: m */
    private static final C5984a<C6171t> f19609m;

    /* renamed from: n */
    public static final /* synthetic */ int f19610n = 0;

    static {
        C5984a.C5994g<C6179e> c5994g = new C5984a.C5994g<>();
        f19607k = c5994g;
        C6177c c6177c = new C6177c();
        f19608l = c6177c;
        f19609m = new C5984a<>("ClientTelemetry.API", c6177c, c5994g);
    }

    public C6178d(Context context, C6171t c6171t) {
        super(context, f19609m, c6171t, AbstractC5996c.C5997a.f19193a);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6167s
    /* renamed from: b */
    public final AbstractC7966g<Void> mo16917b(TelemetryData telemetryData) {
        AbstractC6056q.C6057a m17296a = AbstractC6056q.m17296a();
        m17296a.m17289d(C7285d.f34323a);
        m17296a.m17290c(false);
        m17296a.m17291b(new AbstractC6046m(telemetryData) { // from class: com.google.android.gms.common.internal.u.b

            /* renamed from: a */
            private final TelemetryData f19606a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19606a = telemetryData;
            }

            @Override // com.google.android.gms.common.api.internal.AbstractC6046m
            /* renamed from: a */
            public final void mo7834a(Object obj, Object obj2) {
                TelemetryData telemetryData2 = this.f19606a;
                int i = C6178d.f19610n;
                ((C6175a) ((C6179e) obj).m17132C()).m16918a3(telemetryData2);
                ((C7968h) obj2).m5805c(null);
            }
        });
        return m17474f(m17296a.m17292a());
    }
}
