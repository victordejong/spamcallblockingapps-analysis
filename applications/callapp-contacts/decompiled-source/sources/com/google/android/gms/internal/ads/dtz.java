package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtz.class */
public final class dtz implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final dtg f27221a;

    /* renamed from: b  reason: collision with root package name */
    private final beb.a.b f27222b;

    public dtz(dtg dtgVar, beb.a.b bVar) {
        this.f27221a = dtgVar;
        this.f27222b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final Void call() throws Exception {
        if (this.f27221a.g != null) {
            this.f27221a.g.get();
        }
        beb.a aVar = this.f27221a.f;
        if (aVar == null) {
            return null;
        }
        try {
            synchronized (this.f27222b) {
                beb.a.b bVar = this.f27222b;
                byte[] g = aVar.g();
                bVar.a(g, g.length, dmt.a());
            }
            return null;
        } catch (zzenn | NullPointerException e) {
            return null;
        }
    }
}
