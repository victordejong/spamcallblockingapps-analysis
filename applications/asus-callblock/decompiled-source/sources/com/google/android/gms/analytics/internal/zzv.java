package com.google.android.gms.analytics.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzv.class */
public class zzv extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3882a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3883b;
    private AlarmManager c = (AlarmManager) getContext().getSystemService("alarm");

    /* JADX INFO: Access modifiers changed from: protected */
    public zzv(zzf zzfVar) {
        super(zzfVar);
    }

    private PendingIntent a() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public void cancel() {
        zzma();
        this.f3883b = false;
        this.c.cancel(a());
    }

    public void schedule() {
        zzma();
        b.a(zznG(), "Receiver not registered");
        long zznf = zzlS().zznf();
        if (zznf > 0) {
            cancel();
            long b2 = zzlQ().b();
            this.f3883b = true;
            this.c.setInexactRepeating(2, b2 + zznf, 0L, a());
        }
    }

    public boolean zzbW() {
        return this.f3883b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        ActivityInfo receiverInfo;
        try {
            this.c.cancel(a());
            if (zzlS().zznf() > 0 && (receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) != null && receiverInfo.enabled) {
                zzbG("Receiver registered. Using alarm for local dispatch.");
                this.f3882a = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public boolean zznG() {
        return this.f3882a;
    }
}
