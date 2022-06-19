package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bon.class */
public final class bon extends bok {

    /* renamed from: g */
    private String f44389g;

    /* renamed from: h */
    private int f44390h = bos.f44396a;

    public bon(Context context) {
        this.f44387f = new C12903sg(context, zzr.zzlj().zzaai(), this, this);
    }

    /* renamed from: a */
    public final dbt<InputStream> m17702a(zzauj zzaujVar) {
        synchronized (this.f44383b) {
            if (this.f44390h != bos.f44396a && this.f44390h != bos.f44397b) {
                return dbh.m16898a((Throwable) new zzcpo(cqj.INVALID_REQUEST));
            } else if (this.f44384c) {
                return this.f44382a;
            } else {
                this.f44390h = bos.f44397b;
                this.f44384c = true;
                this.f44386e = zzaujVar;
                this.f44387f.checkAvailabilityAndConnect();
                this.f44382a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.boq

                    /* renamed from: a */
                    private final bon f44393a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44393a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f44393a.m17704b();
                    }
                }, C13091zd.f50123f);
                return this.f44382a;
            }
        }
    }

    /* renamed from: a */
    public final dbt<InputStream> m17701a(String str) {
        synchronized (this.f44383b) {
            if (this.f44390h != bos.f44396a && this.f44390h != bos.f44398c) {
                return dbh.m16898a((Throwable) new zzcpo(cqj.INVALID_REQUEST));
            } else if (this.f44384c) {
                return this.f44382a;
            } else {
                this.f44390h = bos.f44398c;
                this.f44384c = true;
                this.f44389g = str;
                this.f44387f.checkAvailabilityAndConnect();
                this.f44382a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bop

                    /* renamed from: a */
                    private final bon f44392a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44392a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f44392a.m17704b();
                    }
                }, C13091zd.f50123f);
                return this.f44382a;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        synchronized (this.f44383b) {
            if (!this.f44385d) {
                this.f44385d = true;
                try {
                    if (this.f44390h == bos.f44397b) {
                        this.f44387f.m14195a().mo14189c(this.f44386e, new boj(this));
                    } else if (this.f44390h == bos.f44398c) {
                        this.f44387f.m14195a().mo14191a(this.f44389g, new boj(this));
                    } else {
                        this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().m13979a(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bok, com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
        this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }
}
