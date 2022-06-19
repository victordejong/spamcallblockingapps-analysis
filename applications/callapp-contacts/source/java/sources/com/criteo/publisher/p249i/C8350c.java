package com.criteo.publisher.p249i;

import android.content.SharedPreferences;
import com.criteo.publisher.p256m0.C8444o;
import com.criteo.publisher.p256m0.C8446q;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: com.criteo.publisher.i.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/c.class */
public class C8350c {

    /* renamed from: a */
    private final C8446q f30007a;

    /* renamed from: b */
    private final SharedPreferences f30008b;

    /* renamed from: c */
    private final C8348b f30009c;

    /* renamed from: com.criteo.publisher.i.c$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/c$a.class */
    static final class C8351a {
        private C8351a() {
        }

        public /* synthetic */ C8351a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C8351a(null);
    }

    public C8350c(SharedPreferences sharedPreferences, C8348b integrationDetector) {
        C18524p.m3841c(sharedPreferences, "sharedPreferences");
        C18524p.m3841c(integrationDetector, "integrationDetector");
        this.f30008b = sharedPreferences;
        this.f30009c = integrationDetector;
        this.f30007a = new C8446q(sharedPreferences);
    }

    /* renamed from: a */
    public final EnumC8347a m25808a() {
        EnumC8347a enumC8347a;
        boolean m25809a = C8348b.m25809a("com.criteo.mediation.mopub.CriteoBannerAdapter");
        boolean m25809a2 = C8348b.m25809a("com.criteo.mediation.google.CriteoAdapter");
        EnumC8347a enumC8347a2 = (!m25809a || !m25809a2) ? m25809a ? EnumC8347a.MOPUB_MEDIATION : m25809a2 ? EnumC8347a.ADMOB_MEDIATION : null : EnumC8347a.FALLBACK;
        if (enumC8347a2 != null) {
            return enumC8347a2;
        }
        String m25671a = this.f30007a.m25671a("CriteoCachedIntegration", EnumC8347a.FALLBACK.name());
        if (m25671a == null) {
            C18524p.m3855a();
        }
        C18524p.m3849a((Object) m25671a, "safeSharedPreferences.ge…ion.FALLBACK.name\n    )!!");
        try {
            enumC8347a = EnumC8347a.valueOf(m25671a);
        } catch (IllegalArgumentException e) {
            C8444o.m25675a((Throwable) e);
            enumC8347a = EnumC8347a.FALLBACK;
        }
        return enumC8347a;
    }

    /* renamed from: a */
    public final void m25807a(EnumC8347a integration) {
        C18524p.m3841c(integration, "integration");
        this.f30008b.edit().putString("CriteoCachedIntegration", integration.name()).apply();
    }
}
