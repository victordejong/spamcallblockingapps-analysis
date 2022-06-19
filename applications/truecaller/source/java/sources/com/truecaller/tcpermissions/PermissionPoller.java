package com.truecaller.tcpermissions;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
/* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/PermissionPoller.class */
public class PermissionPoller implements Runnable {

    /* renamed from: h */
    public static final long f15302h = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: a */
    public final Context f15303a;

    /* renamed from: b */
    public final Handler f15304b;

    /* renamed from: c */
    public final Intent f15305c;

    /* renamed from: d */
    public int f15306d;

    /* renamed from: e */
    public Permission f15307e;

    /* renamed from: f */
    public AbstractC19219a0 f15308f;

    /* renamed from: g */
    public Runnable f15309g;

    /* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/PermissionPoller$Permission.class */
    public enum Permission {
        DRAW_OVERLAY,
        NOTIFICATION_ACCESS,
        SYSTEM_SETTINGS,
        BATTERY_OPTIMISATIONS,
        ALARMS_AND_REMINDERS
    }

    public PermissionPoller(Context context, Handler handler, Intent intent) {
        this.f15303a = context;
        this.f15304b = handler;
        this.f15305c = intent;
        this.f15308f = ((AbstractApplicationC8442a) context.getApplicationContext()).m28541V().mo11647c();
        intent.addFlags(603979776);
    }

    /* renamed from: a */
    public void m34618a(Permission permission) {
        this.f15304b.removeCallbacks(this);
        this.f15306d = 0;
        this.f15307e = permission;
        this.f15304b.postDelayed(this, 500L);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        int i = (int) (this.f15306d + 500);
        this.f15306d = i;
        if (i > f15302h) {
            this.f15304b.removeCallbacks(this);
            return;
        }
        int ordinal = this.f15307e.ordinal();
        if (ordinal != 0) {
            z = true;
            if (ordinal == 1) {
                z = this.f15308f.mo13831b();
            } else if (ordinal != 2) {
                if (ordinal == 3) {
                    z = ((PowerManager) this.f15303a.getSystemService("power")).isIgnoringBatteryOptimizations(this.f15303a.getPackageName());
                } else if (ordinal != 4) {
                    this.f15304b.removeCallbacks(this);
                    return;
                } else {
                    z = this.f15308f.mo13827f();
                }
            } else if (!Settings.System.canWrite(this.f15303a)) {
                z = false;
            }
        } else {
            z = this.f15308f.mo13822k();
        }
        if (!z) {
            this.f15304b.postDelayed(this, 500L);
            return;
        }
        Runnable runnable = this.f15309g;
        if (runnable != null) {
            runnable.run();
        }
        this.f15304b.removeCallbacks(this);
        this.f15303a.startActivity(this.f15305c);
    }
}
