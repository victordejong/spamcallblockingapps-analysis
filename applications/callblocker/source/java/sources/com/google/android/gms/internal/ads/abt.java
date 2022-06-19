package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.api.AbstractC2499g;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abt.class */
public abstract class abt implements AbstractC2499g {

    /* renamed from: a */
    protected Context f7762a;

    /* renamed from: b */
    protected String f7763b;

    /* renamed from: c */
    protected WeakReference<aad> f7764c;

    public abt(aad aadVar) {
        this.f7762a = aadVar.getContext();
        this.f7763b = C2341q.m14744c().m6975b(this.f7762a, aadVar.mo13438j().f17636a);
        this.f7764c = new WeakReference<>(aadVar);
    }

    /* renamed from: a */
    public final void m13657a(String str, Map<String, String> map) {
        aad aadVar = this.f7764c.get();
        if (aadVar != null) {
            aadVar.mo7737a(str, map);
        }
    }

    /* renamed from: c */
    public static String m13656c(String str) {
        String str2;
        boolean z = true;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    z = true;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    z = true;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    z = true;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    z = true;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    z = false;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    z = true;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    z = true;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    z = true;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    z = true;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    z = true;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    z = true;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
                str2 = "internal";
                break;
            case true:
            case true:
                str2 = "io";
                break;
            case true:
            case true:
                str2 = "network";
                break;
            case true:
            case true:
                str2 = "policy";
                break;
            default:
                str2 = "internal";
                break;
        }
        return str2;
    }

    @Override // com.google.android.gms.common.api.AbstractC2499g
    /* renamed from: a */
    public void mo13641a() {
    }

    /* renamed from: a */
    public void mo13640a(int i) {
    }

    /* renamed from: a */
    public final void m13662a(String str, String str2, int i) {
        C3634xr.f17613a.post(new abx(this, str, str2, i));
    }

    /* renamed from: a */
    public final void m13661a(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        C3634xr.f17613a.post(new aby(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    /* renamed from: a */
    public final void m13660a(String str, String str2, long j) {
        C3634xr.f17613a.post(new aca(this, str, str2, j));
    }

    /* renamed from: a */
    public final void m13659a(String str, String str2, long j, long j2, boolean z, int i, int i2) {
        C3634xr.f17613a.post(new abv(this, str, str2, j, j2, z, i, i2));
    }

    /* renamed from: a */
    public final void m13658a(String str, String str2, String str3, String str4) {
        C3634xr.f17613a.post(new abz(this, str, str2, str3, str4));
    }

    /* renamed from: a */
    public abstract boolean mo13638a(String str);

    /* renamed from: a */
    public boolean mo13636a(String str, String[] strArr) {
        return mo13638a(str);
    }

    /* renamed from: b */
    public String mo13632b(String str) {
        dyx.m8162a();
        return C3634xr.m6794a(str);
    }

    /* renamed from: b */
    public abstract void mo13634b();

    /* renamed from: c */
    public void mo13629c(int i) {
    }

    /* renamed from: d */
    public void mo13627d(int i) {
    }

    /* renamed from: e */
    public void mo13626e(int i) {
    }
}
