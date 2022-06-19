package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ar2.class */
public abstract class ar2 extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    private br2 f20098a;

    /* renamed from: b */
    protected final sq2 f20099b;

    public ar2(sq2 sq2Var, byte[] bArr) {
        this.f20099b = sq2Var;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        br2 br2Var = this.f20098a;
        if (br2Var != null) {
            br2Var.m16253b(this);
        }
    }

    /* renamed from: b */
    public final void m16493b(br2 br2Var) {
        this.f20098a = br2Var;
    }
}
