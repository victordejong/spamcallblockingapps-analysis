package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ss1.class */
public abstract class ss1 extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    private ts1 f8554a;

    /* renamed from: b */
    protected final ks1 f8555b;

    public ss1(ks1 ks1Var, byte[] bArr) {
        this.f8555b = ks1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        ts1 ts1Var = this.f8554a;
        if (ts1Var != null) {
            ts1Var.m5475b(this);
        }
    }

    /* renamed from: b */
    public final void m5592b(ts1 ts1Var) {
        this.f8554a = ts1Var;
    }
}
