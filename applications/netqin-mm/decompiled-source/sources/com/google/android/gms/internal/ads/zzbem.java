package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbem.class */
public final class zzbem implements zzom {

    /* renamed from: a */
    public InputStream f24897a;

    /* renamed from: b */
    public boolean f24898b;

    /* renamed from: c */
    public final Context f24899c;

    /* renamed from: d */
    public final zzom f24900d;

    /* renamed from: e */
    public final zzpa<zzom> f24901e;

    /* renamed from: f */
    public final zzbep f24902f;

    /* renamed from: g */
    public Uri f24903g;

    public zzbem(Context context, zzom zzomVar, zzpa<zzom> zzpaVar, zzbep zzbepVar) {
        this.f24899c = context;
        this.f24900d = zzomVar;
        this.f24901e = zzpaVar;
        this.f24902f = zzbepVar;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: a */
    public final long mo11728a(zzon zzonVar) throws IOException {
        Long l;
        if (!this.f24898b) {
            this.f24898b = true;
            this.f24903g = zzonVar.f28723a;
            zzpa<zzom> zzpaVar = this.f24901e;
            if (zzpaVar != null) {
                zzpaVar.mo11691a((zzpa<zzom>) this, zzonVar);
            }
            zzte a = zzte.m11439a(zzonVar.f28723a);
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23755V1)).booleanValue()) {
                zzsz zzszVar = null;
                if (a != null) {
                    a.f28976h = zzonVar.f28726d;
                    zzszVar = zzp.m17963i().m11452a(a);
                }
                if (zzszVar != null && zzszVar.m11446f()) {
                    this.f24897a = zzszVar.m11445i();
                    return -1L;
                }
            } else if (a != null) {
                a.f28976h = zzonVar.f28726d;
                if (a.f28975g) {
                    l = (Long) zzwm.m11166e().m16921a(zzabb.f23765X1);
                } else {
                    l = (Long) zzwm.m11166e().m16921a(zzabb.f23760W1);
                }
                long longValue = l.longValue();
                long a2 = zzp.m17962j().mo17092a();
                zzp.m17949w();
                Future<InputStream> a3 = zztp.m11428a(this.f24899c, a);
                try {
                    try {
                        this.f24897a = a3.get(longValue, TimeUnit.MILLISECONDS);
                        long a4 = zzp.m17962j().mo17092a() - a2;
                        this.f24902f.mo15696a(true, a4);
                        StringBuilder sb = new StringBuilder(44);
                        sb.append("Cache connection took ");
                        sb.append(a4);
                        sb.append("ms");
                        zzayp.m16153g(sb.toString());
                        return -1L;
                    } catch (InterruptedException e) {
                        a3.cancel(true);
                        Thread.currentThread().interrupt();
                        long a5 = zzp.m17962j().mo17092a() - a2;
                        this.f24902f.mo15696a(false, a5);
                        StringBuilder sb2 = new StringBuilder(44);
                        sb2.append("Cache connection took ");
                        sb2.append(a5);
                        sb2.append("ms");
                        zzayp.m16153g(sb2.toString());
                    } catch (ExecutionException | TimeoutException e2) {
                        a3.cancel(true);
                        long a6 = zzp.m17962j().mo17092a() - a2;
                        this.f24902f.mo15696a(false, a6);
                        StringBuilder sb3 = new StringBuilder(44);
                        sb3.append("Cache connection took ");
                        sb3.append(a6);
                        sb3.append("ms");
                        zzayp.m16153g(sb3.toString());
                    }
                } catch (Throwable th) {
                    long a7 = zzp.m17962j().mo17092a() - a2;
                    this.f24902f.mo15696a(false, a7);
                    StringBuilder sb4 = new StringBuilder(44);
                    sb4.append("Cache connection took ");
                    sb4.append(a7);
                    sb4.append("ms");
                    zzayp.m16153g(sb4.toString());
                    throw th;
                }
            }
            zzon zzonVar2 = zzonVar;
            if (a != null) {
                zzonVar2 = new zzon(Uri.parse(a.f28969a), zzonVar.f28724b, zzonVar.f28725c, zzonVar.f28726d, zzonVar.f28727e, zzonVar.f28728f, zzonVar.f28729g);
            }
            return this.f24900d.mo11728a(zzonVar2);
        }
        throw new IOException("Attempt to open an already open CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final void close() throws IOException {
        if (this.f24898b) {
            this.f24898b = false;
            this.f24903g = null;
            InputStream inputStream = this.f24897a;
            if (inputStream != null) {
                IOUtils.m17075a(inputStream);
                this.f24897a = null;
            } else {
                this.f24900d.close();
            }
            zzpa<zzom> zzpaVar = this.f24901e;
            if (zzpaVar != null) {
                zzpaVar.mo11690e(this);
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: o */
    public final Uri mo11724o() {
        return this.f24903g;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f24898b) {
            InputStream inputStream = this.f24897a;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.f24900d.read(bArr, i, i2);
            zzpa<zzom> zzpaVar = this.f24901e;
            if (zzpaVar != null) {
                zzpaVar.mo11692a((zzpa<zzom>) this, read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }
}
