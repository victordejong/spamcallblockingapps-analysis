package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bok.class */
public abstract class bok implements d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    protected final zp<InputStream> f24797a = new zp<>();

    /* renamed from: b  reason: collision with root package name */
    protected final Object f24798b = new Object();

    /* renamed from: c  reason: collision with root package name */
    protected boolean f24799c = false;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f24800d = false;
    protected zzauj e;
    protected sg f;

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
    }

    public void a(ConnectionResult connectionResult) {
        zzd.zzdz("Disconnected from remote ad request service.");
        this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        synchronized (this.f24798b) {
            this.f24800d = true;
            if (this.f.isConnected() || this.f.isConnecting()) {
                this.f.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }
}
