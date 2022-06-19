package com.facebook.internal.p037u0;

import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p038k.C1214d;
import com.facebook.internal.p037u0.p038k.C1215e;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.concurrent.TimeUnit;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.internal.u0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/c.class */
public final /* synthetic */ class C1199c implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1199c f3260a = new C1199c();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        if (z) {
            C1215e c1215e = C1215e.f3290a;
            synchronized (C1215e.class) {
                try {
                    if (C1220a.m41623b(C1215e.class)) {
                        return;
                    }
                    if (C1215e.f3291b.getAndSet(true)) {
                        return;
                    }
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    if (C23228f0.m7352c()) {
                        C1215e.m41626a();
                    }
                    C1214d c1214d = C1214d.f3285a;
                    if (!C1220a.m41623b(C1214d.class)) {
                        try {
                            C1214d.f3287c.scheduleAtFixedRate(C1214d.f3289e, 0L, 500, TimeUnit.MILLISECONDS);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C1214d.class);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
