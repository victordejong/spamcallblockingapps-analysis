package io.fabric.sdk.android;

import android.util.Log;
/* renamed from: io.fabric.sdk.android.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/b.class */
public class C1448b implements AbstractC1462k {

    /* renamed from: a */
    private int f3999a;

    public C1448b() {
        this.f3999a = 4;
    }

    public C1448b(int i) {
        this.f3999a = i;
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: a */
    public void mo3555a(int i, String str, String str2) {
        mo3554a(i, str, str2, false);
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: a */
    public void mo3554a(int i, String str, String str2, boolean z) {
        if (z || mo3553a(str, i)) {
            Log.println(i, str, str2);
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: a */
    public void mo3552a(String str, String str2) {
        mo3551a(str, str2, (Throwable) null);
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: a */
    public void mo3551a(String str, String str2, Throwable th) {
        if (mo3553a(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: a */
    public boolean mo3553a(String str, int i) {
        return this.f3999a <= i;
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: b */
    public void mo3550b(String str, String str2) {
        m3595b(str, str2, null);
    }

    /* renamed from: b */
    public void m3595b(String str, String str2, Throwable th) {
        if (mo3553a(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: c */
    public void mo3549c(String str, String str2) {
        m3594c(str, str2, null);
    }

    /* renamed from: c */
    public void m3594c(String str, String str2, Throwable th) {
        if (mo3553a(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: d */
    public void mo3548d(String str, String str2) {
        mo3547d(str, str2, null);
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: d */
    public void mo3547d(String str, String str2, Throwable th) {
        if (mo3553a(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: e */
    public void mo3546e(String str, String str2) {
        mo3545e(str, str2, null);
    }

    @Override // io.fabric.sdk.android.AbstractC1462k
    /* renamed from: e */
    public void mo3545e(String str, String str2, Throwable th) {
        if (mo3553a(str, 6)) {
            Log.e(str, str2, th);
        }
    }
}
