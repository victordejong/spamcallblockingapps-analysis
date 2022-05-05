package com.google.android.gms.analytics.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.common.internal.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/a.class */
public class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static final String f3796a = a.class.getName();

    /* renamed from: b  reason: collision with root package name */
    final zzf f3797b;
    boolean c;
    boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(zzf zzfVar) {
        b.a(zzfVar);
        this.f3797b = zzfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f3797b.zzlR();
        this.f3797b.zzkw();
    }

    public final void b() {
        if (this.c) {
            this.f3797b.zzlR().zzbG("Unregistering connectivity change receiver");
            this.c = false;
            this.d = false;
            try {
                this.f3797b.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f3797b.zzlR().zze("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void c() {
        if (Build.VERSION.SDK_INT > 10) {
            Context context = this.f3797b.getContext();
            Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
            intent.addCategory(context.getPackageName());
            intent.putExtra(f3796a, true);
            context.sendOrderedBroadcast(intent, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        boolean z;
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) this.f3797b.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            z = false;
        }
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.isConnected()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a();
        String action = intent.getAction();
        this.f3797b.zzlR().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean d = d();
            if (this.d != d) {
                this.d = d;
                this.f3797b.zzkw().zzR(d);
            }
        } else if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.f3797b.zzlR().zzd("NetworkBroadcastReceiver received unknown action", action);
        } else if (!intent.hasExtra(f3796a)) {
            this.f3797b.zzkw().zzlM();
        }
    }
}
