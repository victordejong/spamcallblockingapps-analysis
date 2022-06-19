package com.mglab.scm.telephony;

import android.annotation.SuppressLint;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.telecom.CallScreeningService;
import p095f8.C2779g;
import p160l8.C3540w;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/telephony/ForegroundService.class */
public class ForegroundService extends Service {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: k */
    public static CallScreeningService f7322k;

    /* renamed from: a */
    public C3540w f7324a;

    /* renamed from: b */
    public Context f7325b;

    /* renamed from: c */
    public boolean f7326c = false;

    /* renamed from: d */
    public int f7327d = -1;

    /* renamed from: e */
    public int f7328e = -1;

    /* renamed from: f */
    public int f7329f = -1;

    /* renamed from: g */
    public int f7330g = -1;

    /* renamed from: h */
    public static String f7319h = "";

    /* renamed from: i */
    public static String f7320i = "";

    /* renamed from: j */
    public static String f7321j = "";

    /* renamed from: l */
    public static boolean f7323l = false;

    /* renamed from: a */
    public final void m3961a() {
        try {
            if (this.f7327d != -1) {
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                if (Build.VERSION.SDK_INT >= 23) {
                    notificationManager.getCurrentInterruptionFilter();
                    notificationManager.setInterruptionFilter(this.f7327d);
                    this.f7327d = -1;
                }
            }
        } catch (Exception e) {
        }
        try {
            if (this.f7328e != -1) {
                AudioManager audioManager = (AudioManager) getBaseContext().getSystemService("audio");
                audioManager.getRingerMode();
                audioManager.setRingerMode(this.f7328e);
                this.f7328e = -1;
            }
        } catch (Exception e2) {
        }
        try {
            if (this.f7329f != -1) {
                AudioManager audioManager2 = (AudioManager) getBaseContext().getSystemService("audio");
                audioManager2.getVibrateSetting(0);
                audioManager2.setVibrateSetting(0, this.f7329f);
                this.f7329f = -1;
            }
        } catch (Exception e3) {
        }
        try {
            if (this.f7330g == -1 || Build.VERSION.SDK_INT < 23) {
                return;
            }
            Settings.System.getInt(getContentResolver(), "vibrate_when_ringing", 1);
            Settings.System.putInt(getContentResolver(), "vibrate_when_ringing", this.f7330g);
            this.f7330g = -1;
        } catch (Exception e4) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C2779g.m3119N(this.f7325b);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        stopForeground(true);
        super.onDestroy();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:172|(8:174|(2:176|310)|182|183|306|(2:185|(1:189))(2:190|(1:192))|193|194)|180|181|183|306|(0)(0)|193|194) */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0489, code lost:
        if (r15.f7324a.m2217a(r18) != false) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:166:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x089a  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0916  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x09c6  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0b8b  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0bae  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0bc1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:301:0x0cb6 -> B:193:0x06ba). Please submit an issue!!! */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(android.content.Intent r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 3259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.telephony.ForegroundService.onStartCommand(android.content.Intent, int, int):int");
    }
}
