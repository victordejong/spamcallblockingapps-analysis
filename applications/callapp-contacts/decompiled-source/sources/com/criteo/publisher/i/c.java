package com.criteo.publisher.i;

import android.content.SharedPreferences;
import com.criteo.publisher.m0.o;
import com.criteo.publisher.m0.q;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final q f17357a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f17358b;

    /* renamed from: c  reason: collision with root package name */
    private final b f17359c;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/c$a.class */
    static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new a(null);
    }

    public c(SharedPreferences sharedPreferences, b integrationDetector) {
        p.c(sharedPreferences, "sharedPreferences");
        p.c(integrationDetector, "integrationDetector");
        this.f17358b = sharedPreferences;
        this.f17359c = integrationDetector;
        this.f17357a = new q(sharedPreferences);
    }

    public final com.criteo.publisher.i.a a() {
        com.criteo.publisher.i.a aVar;
        boolean a2 = b.a("com.criteo.mediation.mopub.CriteoBannerAdapter");
        boolean a3 = b.a("com.criteo.mediation.google.CriteoAdapter");
        com.criteo.publisher.i.a aVar2 = (!a2 || !a3) ? a2 ? com.criteo.publisher.i.a.MOPUB_MEDIATION : a3 ? com.criteo.publisher.i.a.ADMOB_MEDIATION : null : com.criteo.publisher.i.a.FALLBACK;
        if (aVar2 != null) {
            return aVar2;
        }
        String a4 = this.f17357a.a("CriteoCachedIntegration", com.criteo.publisher.i.a.FALLBACK.name());
        if (a4 == null) {
            p.a();
        }
        p.a((Object) a4, "safeSharedPreferences.ge…ion.FALLBACK.name\n    )!!");
        try {
            aVar = com.criteo.publisher.i.a.valueOf(a4);
        } catch (IllegalArgumentException e) {
            o.a((Throwable) e);
            aVar = com.criteo.publisher.i.a.FALLBACK;
        }
        return aVar;
    }

    public final void a(com.criteo.publisher.i.a integration) {
        p.c(integration, "integration");
        this.f17358b.edit().putString("CriteoCachedIntegration", integration.name()).apply();
    }
}
