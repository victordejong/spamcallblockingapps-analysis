package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ls1.class */
public abstract class ls1 implements AbstractC6113d.AbstractC6114a, AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    protected final vi0<InputStream> f26263a = new vi0<>();

    /* renamed from: b */
    protected final Object f26264b = new Object();

    /* renamed from: c */
    protected boolean f26265c = false;

    /* renamed from: d */
    protected boolean f26266d = false;

    /* renamed from: e */
    protected zzcbj f26267e;

    /* renamed from: f */
    protected lc0 f26268f;

    /* renamed from: D0 */
    public void mo6338D0(ConnectionResult connectionResult) {
        ei0.m15469a("Disconnected from remote ad request service.");
        this.f26263a.m10014f(new zzeap(1));
    }

    /* renamed from: a */
    public final void m13420a() {
        synchronized (this.f26264b) {
            this.f26266d = true;
            if (this.f26268f.m17110b() || this.f26268f.m17103f()) {
                this.f26268f.m17112a();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        ei0.m15469a("Cannot connect to remote service, fallback to local instance.");
    }
}
