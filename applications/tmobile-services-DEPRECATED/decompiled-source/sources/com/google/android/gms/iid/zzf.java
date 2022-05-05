package com.google.android.gms.iid;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzf.class */
final class zzf implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Intent f7776f;

    /* renamed from: g */
    private final /* synthetic */ Intent f7777g;

    /* renamed from: h */
    private final /* synthetic */ zze f7778h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zze zzeVar, Intent intent, Intent intent2) {
        this.f7778h = zzeVar;
        this.f7776f = intent;
        this.f7777g = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7778h.handleIntent(this.f7776f);
        this.f7778h.m14145b(this.f7777g);
    }
}
