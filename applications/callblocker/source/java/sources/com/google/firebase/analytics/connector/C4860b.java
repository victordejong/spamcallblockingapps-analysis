package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.C4853a;
import com.google.firebase.C4865b;
import com.google.firebase.analytics.connector.internal.C4864b;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p161a.C4854a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.analytics.connector.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/b.class */
public class C4860b implements AbstractC4859a {

    /* renamed from: b */
    private static volatile AbstractC4859a f20925b;

    /* renamed from: a */
    final Map<String, Object> f20926a = new ConcurrentHashMap();

    /* renamed from: c */
    private final AppMeasurement f20927c;

    private C4860b(AppMeasurement appMeasurement) {
        C2662s.m13981a(appMeasurement);
        this.f20927c = appMeasurement;
    }

    /* renamed from: a */
    public static AbstractC4859a m2166a(C4865b c4865b, Context context, AbstractC4857d abstractC4857d) {
        C2662s.m13981a(c4865b);
        C2662s.m13981a(context);
        C2662s.m13981a(abstractC4857d);
        C2662s.m13981a(context.getApplicationContext());
        if (f20925b == null) {
            synchronized (C4860b.class) {
                try {
                    if (f20925b == null) {
                        Bundle bundle = new Bundle(1);
                        if (c4865b.m2145f()) {
                            abstractC4857d.mo2063a(C4853a.class, ExecutorC4862d.f20929a, C4861c.f20928a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", c4865b.m2146e());
                        }
                        f20925b = new C4860b(AppMeasurement.m4846a(context, bundle));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20925b;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2167a(C4854a c4854a) {
        boolean z = ((C4853a) c4854a.m2183b()).f20916a;
        synchronized (C4860b.class) {
            try {
                ((C4860b) f20925b).f20927c.m4844a(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.analytics.connector.AbstractC4859a
    /* renamed from: a */
    public void mo2165a(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C4864b.m2164a(str) && C4864b.m2163a(str2, bundle2) && C4864b.m2162a(str, str2, bundle2)) {
            C4864b.m2161b(str, str2, bundle2);
            this.f20927c.logEventInternal(str, str2, bundle2);
        }
    }
}
