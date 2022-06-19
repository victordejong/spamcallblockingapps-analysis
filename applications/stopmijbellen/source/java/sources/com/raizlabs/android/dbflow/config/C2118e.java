package com.raizlabs.android.dbflow.config;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.raizlabs.android.dbflow.config.e */
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/e.class */
public final class C2118e {

    /* renamed from: a */
    public final Set<Class<? extends AbstractC2117d>> f7687a;

    /* renamed from: b */
    public final Map<Class<?>, C2115b> f7688b;

    /* renamed from: c */
    public final Context f7689c;

    /* renamed from: com.raizlabs.android.dbflow.config.e$a */
    /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/e$a.class */
    public static class C2119a {

        /* renamed from: a */
        public final Context f7690a;

        /* renamed from: b */
        public Set<Class<? extends AbstractC2117d>> f7691b = new HashSet();

        /* renamed from: c */
        public final Map<Class<?>, C2115b> f7692c = new HashMap();

        public C2119a(Context context) {
            this.f7690a = context.getApplicationContext();
        }
    }

    public C2118e(C2119a c2119a) {
        this.f7687a = Collections.unmodifiableSet(c2119a.f7691b);
        this.f7688b = c2119a.f7692c;
        this.f7689c = c2119a.f7690a;
    }
}
