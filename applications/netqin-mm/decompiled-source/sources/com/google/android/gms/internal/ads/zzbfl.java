package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4058t8;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4095u8;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4132v8;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4169w8;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4206x8;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfl.class */
public abstract class zzbfl implements Releasable {

    /* renamed from: a */
    public Context f24932a;

    /* renamed from: b */
    public String f24933b;

    /* renamed from: c */
    public WeakReference<zzbdu> f24934c;

    public zzbfl(zzbdu zzbduVar) {
        this.f24932a = zzbduVar.getContext();
        this.f24933b = zzp.m17969c().m16141a(this.f24932a, zzbduVar.mo15516a().f24759a);
        this.f24934c = new WeakReference<>(zzbduVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static String m15660c(String str) {
        char c;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "internal";
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                break;
            case 6:
            case 7:
                str2 = "io";
                break;
            case '\b':
            case '\t':
                str2 = "network";
                break;
            case '\n':
            case 11:
                str2 = "policy";
                break;
            default:
                str2 = "internal";
                break;
        }
        return str2;
    }

    @Override // com.google.android.gms.common.api.Releasable
    /* renamed from: a */
    public void mo15656a() {
    }

    /* renamed from: a */
    public final void m15666a(String str, String str2, int i) {
        zzbbg.f24738b.post(new RunnableC4169w8(this, str, str2, i));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15665a(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzbbg.f24738b.post(new RunnableC4058t8(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15664a(String str, String str2, long j) {
        zzbbg.f24738b.post(new RunnableC4132v8(this, str, str2, j));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15663a(String str, String str2, long j, long j2, boolean z, int i, int i2) {
        zzbbg.f24738b.post(new RunnableC4095u8(this, str, str2, j, j2, z, i, i2));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15662a(String str, String str2, String str3, String str4) {
        zzbbg.f24738b.post(new RunnableC4206x8(this, str, str2, str3, str4));
    }

    /* renamed from: a */
    public final void m15661a(String str, Map<String, String> map) {
        zzbdu zzbduVar = this.f24934c.get();
        if (zzbduVar != null) {
            zzbduVar.mo15577a(str, map);
        }
    }

    /* renamed from: a */
    public abstract boolean mo15643a(String str);

    /* renamed from: a */
    public boolean mo15653a(String str, String[] strArr) {
        return mo15643a(str);
    }

    /* renamed from: b */
    public String mo15641b(String str) {
        zzwm.m11170a();
        return zzbbg.m15903a(str);
    }

    /* renamed from: b */
    public abstract void mo15642b();

    /* renamed from: b */
    public void mo15651b(int i) {
    }

    /* renamed from: c */
    public void mo15647c(int i) {
    }

    /* renamed from: d */
    public void mo15646d(int i) {
    }

    /* renamed from: e */
    public void mo15644e(int i) {
    }
}
