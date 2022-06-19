package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bok.class */
public abstract class bok implements AbstractC12025d.AbstractC12026a, AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    protected final C13103zp<InputStream> f44382a = new C13103zp<>();

    /* renamed from: b */
    protected final Object f44383b = new Object();

    /* renamed from: c */
    protected boolean f44384c = false;

    /* renamed from: d */
    protected boolean f44385d = false;

    /* renamed from: e */
    protected zzauj f44386e;

    /* renamed from: f */
    protected C12903sg f44387f;

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
    }

    /* renamed from: a */
    public void mo11761a(ConnectionResult connectionResult) {
        zzd.zzdz("Disconnected from remote ad request service.");
        this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }

    /* renamed from: b */
    public final void m17704b() {
        synchronized (this.f44383b) {
            this.f44385d = true;
            if (this.f44387f.isConnected() || this.f44387f.isConnecting()) {
                this.f44387f.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }
}
