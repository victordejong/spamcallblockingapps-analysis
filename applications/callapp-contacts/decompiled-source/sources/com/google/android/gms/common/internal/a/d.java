package com.google.android.gms.common.internal.a;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.p;
import com.google.android.gms.common.api.internal.s;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.base.c;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a/d.class */
public final class d extends f<t> implements s {
    public static final /* synthetic */ int h = 0;
    private static final a.g<e> i;
    private static final a.AbstractC0453a<e, t> j;
    private static final a<t> k;

    static {
        a.g<e> gVar = new a.g<>();
        i = gVar;
        c cVar = new c();
        j = cVar;
        k = new a<>("ClientTelemetry.API", cVar, gVar);
    }

    public d(Context context, t tVar) {
        super(context, k, tVar, f.a.f22617a);
    }

    @Override // com.google.android.gms.common.internal.s
    public final h<Void> a(final TelemetryData telemetryData) {
        s.a a2 = com.google.android.gms.common.api.internal.s.a();
        a2.f22766c = new Feature[]{com.google.android.gms.internal.base.d.f28671a};
        a2.f22765b = false;
        a2.f22764a = new p(telemetryData) { // from class: com.google.android.gms.common.internal.a.b

            /* renamed from: a  reason: collision with root package name */
            private final TelemetryData f22829a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22829a = telemetryData;
            }

            @Override // com.google.android.gms.common.api.internal.p
            public final void a(Object obj, Object obj2) {
                TelemetryData telemetryData2 = this.f22829a;
                int i2 = d.h;
                a aVar = (a) ((e) obj).getService();
                Parcel a3 = aVar.a();
                c.a(a3, telemetryData2);
                aVar.c(a3);
                ((i) obj2).a((i) null);
            }
        };
        return b(a2.b());
    }
}
