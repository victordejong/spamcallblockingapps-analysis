package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dws.class */
public final class dws {

    /* renamed from: a */
    private final byte[] f15943a;

    /* renamed from: b */
    private int f15944b;

    /* renamed from: c */
    private int f15945c;

    /* renamed from: d */
    private final /* synthetic */ dwn f15946d;

    /* JADX INFO: Access modifiers changed from: private */
    public dws(dwn dwnVar, byte[] bArr) {
        this.f15946d = dwnVar;
        this.f15943a = bArr;
    }

    /* renamed from: a */
    public final dws m8431a(int i) {
        this.f15944b = i;
        return this;
    }

    /* renamed from: a */
    public final void m8432a() {
        synchronized (this) {
            try {
                if (this.f15946d.f15937b) {
                    this.f15946d.f15936a.mo9313a(this.f15943a);
                    this.f15946d.f15936a.mo9316a(this.f15944b);
                    this.f15946d.f15936a.mo9311b(this.f15945c);
                    this.f15946d.f15936a.mo9312a((int[]) null);
                    this.f15946d.f15936a.mo9317a();
                }
            } catch (RemoteException e) {
                C3645yb.m6750b("Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final dws m8430b(int i) {
        this.f15945c = i;
        return this;
    }
}
