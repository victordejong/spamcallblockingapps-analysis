package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ht2.class */
public final class ht2 {

    /* renamed from: a */
    private final byte[] f24038a;

    /* renamed from: b */
    private int f24039b;

    /* renamed from: c */
    private int f24040c;

    /* renamed from: d */
    final /* synthetic */ jt2 f24041d;

    public /* synthetic */ ht2(jt2 jt2Var, byte[] bArr, it2 it2Var) {
        this.f24041d = jt2Var;
        this.f24038a = bArr;
    }

    /* renamed from: a */
    public final void m14553a() {
        synchronized (this) {
            try {
                jt2 jt2Var = this.f24041d;
                if (!jt2Var.f24977a) {
                    return;
                }
                jt2Var.f24978b.m13804y4(this.f24038a);
                this.f24041d.f24978b.m13805d0(this.f24039b);
                this.f24041d.f24978b.m13808V3(this.f24040c);
                this.f24041d.f24978b.m13806a3(null);
                this.f24041d.f24978b.m13807a();
            } catch (RemoteException e) {
                Log.d("GASS", "Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final ht2 m14552b(int i) {
        this.f24039b = i;
        return this;
    }

    /* renamed from: c */
    public final ht2 m14551c(int i) {
        this.f24040c = i;
        return this;
    }
}
