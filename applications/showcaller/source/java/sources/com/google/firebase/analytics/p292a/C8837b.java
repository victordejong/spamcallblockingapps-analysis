package com.google.firebase.analytics.p292a;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7415j0;
import com.google.android.gms.measurement.p274a.C7642a;
import com.google.firebase.C8833a;
import com.google.firebase.C8849c;
import com.google.firebase.analytics.connector.internal.C8843b;
import com.google.firebase.analytics.connector.internal.C8845d;
import com.google.firebase.analytics.connector.internal.C8847f;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p312j.C9242a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.analytics.a.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/a/b.class */
public class C8837b implements AbstractC8834a {

    /* renamed from: a */
    private static volatile AbstractC8834a f38753a;

    /* renamed from: b */
    final C7642a f38754b;

    /* renamed from: c */
    final Map<String, ?> f38755c = new ConcurrentHashMap();

    /* renamed from: com.google.firebase.analytics.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/a/b$a.class */
    class C8838a implements AbstractC8834a.AbstractC8835a {

        /* renamed from: a */
        final /* synthetic */ String f38756a;

        C8838a(String str) {
            C8837b.this = r4;
            this.f38756a = str;
        }
    }

    C8837b(C7642a c7642a) {
        C6155o.m17018j(c7642a);
        this.f38754b = c7642a;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static AbstractC8834a m2564d(@RecentlyNonNull C8849c c8849c, @RecentlyNonNull Context context, @RecentlyNonNull AbstractC9245d abstractC9245d) {
        C6155o.m17018j(c8849c);
        C6155o.m17018j(context);
        C6155o.m17018j(abstractC9245d);
        C6155o.m17018j(context.getApplicationContext());
        if (f38753a == null) {
            synchronized (C8837b.class) {
                try {
                    if (f38753a == null) {
                        Bundle bundle = new Bundle(1);
                        if (c8849c.m2523q()) {
                            abstractC9245d.mo1417b(C8833a.class, ExecutorC8839c.f38758d, C8840d.f38759a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", c8849c.m2524p());
                        }
                        f38753a = new C8837b(C7415j0.m7260t(context, null, null, null, bundle).m7259u());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f38753a;
    }

    /* renamed from: e */
    public static final /* synthetic */ void m2563e(C9242a c9242a) {
        boolean z = ((C8833a) c9242a.m1420a()).f38750a;
        synchronized (C8837b.class) {
            try {
                ((C8837b) C6155o.m17018j(f38753a)).f38754b.m6602v(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    private final boolean m2562f(String str) {
        return !str.isEmpty() && this.f38755c.containsKey(str) && this.f38755c.get(str) != null;
    }

    @Override // com.google.firebase.analytics.p292a.AbstractC8834a
    /* renamed from: a */
    public void mo2567a(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C8843b.m2550a(str) && C8843b.m2549b(str2, bundle2) && C8843b.m2546e(str, str2, bundle2)) {
            C8843b.m2544g(str, str2, bundle2);
            this.f38754b.m6610n(str, str2, bundle2);
        }
    }

    @Override // com.google.firebase.analytics.p292a.AbstractC8834a
    /* renamed from: b */
    public void mo2566b(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object obj) {
        if (C8843b.m2550a(str) && C8843b.m2547d(str, str2)) {
            this.f38754b.m6603u(str, str2, obj);
        }
    }

    @Override // com.google.firebase.analytics.p292a.AbstractC8834a
    @RecentlyNonNull
    /* renamed from: c */
    public AbstractC8834a.AbstractC8835a mo2565c(@RecentlyNonNull String str, @RecentlyNonNull AbstractC8834a.AbstractC8836b abstractC8836b) {
        C6155o.m17018j(abstractC8836b);
        if (C8843b.m2550a(str) && !m2562f(str)) {
            C7642a c7642a = this.f38754b;
            Object c8845d = "fiam".equals(str) ? new C8845d(c7642a, abstractC8836b) : ("crash".equals(str) || "clx".equals(str)) ? new C8847f(c7642a, abstractC8836b) : null;
            if (c8845d == null) {
                return null;
            }
            this.f38755c.put(str, c8845d);
            return new C8838a(str);
        }
        return null;
    }
}
