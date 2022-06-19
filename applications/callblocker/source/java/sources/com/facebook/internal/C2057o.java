package com.facebook.internal;

import com.android.p061a.p062a.AbstractC1321a;
import com.android.p061a.p062a.AbstractC1327c;
import com.facebook.C2095j;
/* renamed from: com.facebook.internal.o */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/o.class */
public class C2057o {

    /* renamed from: com.facebook.internal.o$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/o$a.class */
    public interface AbstractC2059a {
        /* renamed from: a */
        void mo15559a(String str);
    }

    /* renamed from: a */
    public static void m15565a(AbstractC2059a abstractC2059a) {
        if (!m15562c()) {
            m15563b(abstractC2059a);
        }
    }

    /* renamed from: b */
    public static void m15564b() {
        C2095j.m15360h().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
    }

    /* renamed from: b */
    private static void m15563b(final AbstractC2059a abstractC2059a) {
        final AbstractC1321a m17496a = AbstractC1321a.m17497a(C2095j.m15360h()).m17496a();
        m17496a.mo17492a(new AbstractC1327c() { // from class: com.facebook.internal.o.1
            @Override // com.android.p061a.p062a.AbstractC1327c
            /* renamed from: a */
            public void mo15561a() {
            }

            @Override // com.android.p061a.p062a.AbstractC1327c
            /* renamed from: a */
            public void mo15560a(int i) {
                switch (i) {
                    case 0:
                        try {
                            String m17489a = m17496a.mo17495a().m17489a();
                            if (m17489a != null && (m17489a.contains("fb") || m17489a.contains("facebook"))) {
                                abstractC2059a.mo15559a(m17489a);
                            }
                            C2057o.m15564b();
                            return;
                        } catch (Exception e) {
                            return;
                        }
                    case 1:
                    default:
                        return;
                    case 2:
                        C2057o.m15564b();
                        return;
                }
            }
        });
    }

    /* renamed from: c */
    private static boolean m15562c() {
        return C2095j.m15360h().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false);
    }
}
