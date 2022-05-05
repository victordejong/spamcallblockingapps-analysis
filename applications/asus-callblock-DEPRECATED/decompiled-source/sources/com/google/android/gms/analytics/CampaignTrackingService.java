package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/CampaignTrackingService.class */
public class CampaignTrackingService extends Service {

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f3770b;

    /* renamed from: a  reason: collision with root package name */
    private Handler f3771a;

    public static boolean zzV(Context context) {
        boolean zzj;
        b.a(context);
        if (f3770b != null) {
            zzj = f3770b.booleanValue();
        } else {
            zzj = zzao.zzj(context, "com.google.android.gms.analytics.CampaignTrackingService");
            f3770b = Boolean.valueOf(zzj);
        }
        return zzj;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzf.zzX(this).zzlR().zzbG("CampaignTrackingService is starting up");
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzf.zzX(this).zzlR().zzbG("CampaignTrackingService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, final int i2) {
        try {
            synchronized (CampaignTrackingReceiver.f3768a) {
                bp bpVar = CampaignTrackingReceiver.f3769b;
                if (bpVar != null && bpVar.f4170a.isHeld()) {
                    bpVar.b();
                }
            }
        } catch (SecurityException e) {
        }
        zzf zzX = zzf.zzX(this);
        final zzaf zzlR = zzX.zzlR();
        String stringExtra = null;
        if (zzX.zzlS().zzmW()) {
            zzlR.zzbK("Unexpected installation campaign (package side)");
        } else {
            stringExtra = intent.getStringExtra("referrer");
        }
        Handler handler = this.f3771a;
        final Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(getMainLooper());
            this.f3771a = handler2;
        }
        if (TextUtils.isEmpty(stringExtra)) {
            if (!zzX.zzlS().zzmW()) {
                zzlR.zzbJ("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
            }
            zzX.zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.1
                @Override // java.lang.Runnable
                public final void run() {
                    CampaignTrackingService.this.zza(zzlR, handler2, i2);
                }
            });
            return 2;
        }
        int zzna = zzX.zzlS().zzna();
        String str = stringExtra;
        if (stringExtra.length() > zzna) {
            zzlR.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzna));
            str = stringExtra.substring(0, zzna);
        }
        zzlR.zza("CampaignTrackingService called. startId, campaign", Integer.valueOf(i2), str);
        zzX.zzkw().zza(str, new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.2
            @Override // java.lang.Runnable
            public final void run() {
                CampaignTrackingService.this.zza(zzlR, handler2, i2);
            }
        });
        return 2;
    }

    protected void zza(final zzaf zzafVar, Handler handler, final int i) {
        handler.post(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.3
            @Override // java.lang.Runnable
            public final void run() {
                boolean stopSelfResult = CampaignTrackingService.this.stopSelfResult(i);
                if (stopSelfResult) {
                    zzafVar.zza("Install campaign broadcast processed", Boolean.valueOf(stopSelfResult));
                }
            }
        });
    }
}
