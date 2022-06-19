package com.google.android.gms.common.internal.p353a;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.internal.AbstractC11909p;
import com.google.android.gms.common.api.internal.AbstractC11912s;
import com.google.android.gms.common.internal.AbstractC12049s;
import com.google.android.gms.common.internal.C12052t;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.C13153c;
import com.google.android.gms.internal.base.C13154d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.internal.a.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a/d.class */
public final class C11973d extends AbstractC11823f<C12052t> implements AbstractC12049s {

    /* renamed from: h */
    public static final /* synthetic */ int f39475h = 0;

    /* renamed from: i */
    private static final C11808a.C11818g<C11974e> f39476i;

    /* renamed from: j */
    private static final C11808a.AbstractC11809a<C11974e, C12052t> f39477j;

    /* renamed from: k */
    private static final C11808a<C12052t> f39478k;

    static {
        C11808a.C11818g<C11974e> c11818g = new C11808a.C11818g<>();
        f39476i = c11818g;
        C11972c c11972c = new C11972c();
        f39477j = c11972c;
        f39478k = new C11808a<>("ClientTelemetry.API", c11972c, c11818g);
    }

    public C11973d(Context context, C12052t c12052t) {
        super(context, f39478k, c12052t, AbstractC11823f.C11824a.f39189a);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12049s
    /* renamed from: a */
    public final AbstractC14185h<Void> mo19147a(TelemetryData telemetryData) {
        AbstractC11912s.C11913a m19316a = AbstractC11912s.m19316a();
        m19316a.f39403c = new Feature[]{C13154d.f50269a};
        m19316a.f39402b = false;
        m19316a.f39401a = new AbstractC11909p(telemetryData) { // from class: com.google.android.gms.common.internal.a.b

            /* renamed from: a */
            private final TelemetryData f39474a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39474a = telemetryData;
            }

            @Override // com.google.android.gms.common.api.internal.AbstractC11909p
            /* renamed from: a */
            public final void mo12270a(Object obj, Object obj2) {
                TelemetryData telemetryData2 = this.f39474a;
                int i = C11973d.f39475h;
                C11970a c11970a = (C11970a) ((C11974e) obj).getService();
                Parcel m13603a = c11970a.m13603a();
                C13153c.m13597a(m13603a, telemetryData2);
                c11970a.m13600c(m13603a);
                ((C14186i) obj2).m11471a((C14186i) null);
            }
        };
        return m19451b(m19316a.m19313b());
    }
}
