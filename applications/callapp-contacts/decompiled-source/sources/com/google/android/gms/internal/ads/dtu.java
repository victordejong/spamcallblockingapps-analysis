package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtu.class */
public final class dtu extends dus {

    /* renamed from: d  reason: collision with root package name */
    private static duv<String> f27217d = new duv<>();
    private final Context e;

    public dtu(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, Context context) {
        super(dtgVar, str, str2, bVar, i, 29);
        this.e = context;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.d("E");
        AtomicReference<String> a2 = f27217d.a(this.e.getPackageName());
        if (a2.get() == null) {
            synchronized (a2) {
                if (a2.get() == null) {
                    a2.set((String) this.f27239c.invoke(null, this.e));
                }
            }
        }
        String str = a2.get();
        synchronized (this.f27238b) {
            this.f27238b.d(bxn.a(str.getBytes(), true));
        }
    }
}
