package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.sx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sx.class */
public final class C3505sx implements dtr {

    /* renamed from: a */
    private final Context f17349a;

    /* renamed from: b */
    private final Object f17350b;

    /* renamed from: c */
    private String f17351c;

    /* renamed from: d */
    private boolean f17352d;

    public C3505sx(Context context, String str) {
        this.f17349a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f17351c = str;
        this.f17352d = false;
        this.f17350b = new Object();
    }

    /* renamed from: a */
    public final String m7171a() {
        return this.f17351c;
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        m7169a(dttVar.f15739j);
    }

    /* renamed from: a */
    public final void m7169a(boolean z) {
        if (!C2341q.m14747A().m7166a(this.f17349a)) {
            return;
        }
        synchronized (this.f17350b) {
            if (this.f17352d == z) {
                return;
            }
            this.f17352d = z;
            if (TextUtils.isEmpty(this.f17351c)) {
                return;
            }
            if (this.f17352d) {
                C2341q.m14747A().m7163a(this.f17349a, this.f17351c);
            } else {
                C2341q.m14747A().m7150b(this.f17349a, this.f17351c);
            }
        }
    }
}
