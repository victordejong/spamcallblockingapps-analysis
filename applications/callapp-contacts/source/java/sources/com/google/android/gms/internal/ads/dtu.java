package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtu.class */
public final class dtu extends dus {

    /* renamed from: d */
    private static duv<String> f47606d = new duv<>();

    /* renamed from: e */
    private final Context f47607e;

    public dtu(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2, Context context) {
        super(dtgVar, str, str2, c12219b, i, 29);
        this.f47607e = context;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18035d("E");
        AtomicReference<String> m15696a = f47606d.m15696a(this.f47607e.getPackageName());
        if (m15696a.get() == null) {
            synchronized (m15696a) {
                if (m15696a.get() == null) {
                    m15696a.set((String) this.f47638c.invoke(null, this.f47607e));
                }
            }
        }
        String str = m15696a.get();
        synchronized (this.f47637b) {
            this.f47637b.m18035d(bxn.m17584a(str.getBytes(), true));
        }
    }
}
