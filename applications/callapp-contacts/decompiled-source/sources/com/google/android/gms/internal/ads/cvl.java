package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvl.class */
public final class cvl implements d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    private final cwh f26469a;

    /* renamed from: b  reason: collision with root package name */
    private final cwa f26470b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f26471c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private boolean f26472d = false;
    private boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cvl(Context context, Looper looper, cwa cwaVar) {
        this.f26470b = cwaVar;
        this.f26469a = new cwh(context, looper, this, this, 12800000);
    }

    private final void c() {
        synchronized (this.f26471c) {
            if (this.f26469a.isConnected() || this.f26469a.isConnecting()) {
                this.f26469a.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        synchronized (this.f26471c) {
            if (!this.e) {
                this.e = true;
                try {
                    this.f26469a.a().a(new zzdwc(this.f26470b.g()));
                    c();
                } catch (Exception e) {
                    c();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        synchronized (this.f26471c) {
            if (!this.f26472d) {
                this.f26472d = true;
                this.f26469a.checkAvailabilityAndConnect();
            }
        }
    }
}
