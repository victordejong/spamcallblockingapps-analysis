package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gy3.class */
public class gy3 {

    /* renamed from: a */
    private int f23746a;

    /* renamed from: b */
    private int f23747b;

    /* renamed from: c */
    private boolean f23748c;

    /* renamed from: d */
    private final zzfoj<String> f23749d;

    /* renamed from: e */
    private final zzfoj<String> f23750e;

    /* renamed from: f */
    private final zzfoj<String> f23751f;

    /* renamed from: g */
    private zzfoj<String> f23752g;

    /* renamed from: h */
    private int f23753h;

    /* renamed from: i */
    private final zzfot<Integer> f23754i;

    @Deprecated
    public gy3() {
        this.f23746a = Integer.MAX_VALUE;
        this.f23747b = Integer.MAX_VALUE;
        this.f23748c = true;
        this.f23749d = zzfoj.zzi();
        this.f23750e = zzfoj.zzi();
        this.f23751f = zzfoj.zzi();
        this.f23752g = zzfoj.zzi();
        this.f23753h = 0;
        this.f23754i = zzfot.zzh();
    }

    public gy3(az3 az3Var) {
        this.f23746a = az3Var.f20205l;
        this.f23747b = az3Var.f20206m;
        this.f23748c = az3Var.f20207n;
        this.f23749d = az3Var.f20208o;
        this.f23750e = az3Var.f20209p;
        this.f23751f = az3Var.f20213t;
        this.f23752g = az3Var.f20214u;
        this.f23753h = az3Var.f20215v;
        this.f23754i = az3Var.f20219z;
    }

    /* renamed from: j */
    public gy3 mo10300j(int i, int i2, boolean z) {
        this.f23746a = i;
        this.f23747b = i2;
        this.f23748c = true;
        return this;
    }

    /* renamed from: k */
    public final gy3 m14775k(Context context) {
        CaptioningManager captioningManager;
        int i = C7101wa.f31475a;
        if (i >= 19 && ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
            this.f23753h = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.f23752g = zzfoj.zzj(C7101wa.m9707U(locale));
            }
        }
        return this;
    }
}
