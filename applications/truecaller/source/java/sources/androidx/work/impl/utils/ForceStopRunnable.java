package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.p1835c0.C26701k;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26789j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: d */
    public static final String f1586d = AbstractC26839p.m1295e("ForceStopRunnable");

    /* renamed from: e */
    public static final long f1587e = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: a */
    public final Context f1588a;

    /* renamed from: b */
    public final C26702l f1589b;

    /* renamed from: c */
    public int f1590c = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        public static final String f1591a = AbstractC26839p.m1295e("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            int i = ((AbstractC26839p.C26840a) AbstractC26839p.m1296c()).f75095b;
            ForceStopRunnable.m42600d(context);
        }
    }

    public ForceStopRunnable(Context context, C26702l c26702l) {
        this.f1588a = context.getApplicationContext();
        this.f1589b = c26702l;
    }

    /* renamed from: b */
    public static PendingIntent m42602b(Context context, int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i);
    }

    /* renamed from: d */
    public static void m42600d(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m42602b = m42602b(context, MediaSessionCompat.m43297I0() ? 167772160 : 134217728);
        long currentTimeMillis = System.currentTimeMillis();
        long j = f1587e;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis + j, m42602b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0362  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m42603a() {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.ForceStopRunnable.m42603a():void");
    }

    /* renamed from: c */
    public boolean m42601c() {
        C26678c c26678c = this.f1589b.f74724b;
        Objects.requireNonNull(c26678c);
        if (TextUtils.isEmpty(null)) {
            AbstractC26839p.m1296c().mo1294a(f1586d, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean m1329a = C26789j.m1329a(this.f1588a, c26678c);
        AbstractC26839p.m1296c().mo1294a(f1586d, String.format("Is default app process = %s", Boolean.valueOf(m1329a)), new Throwable[0]);
        return m1329a;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!m42601c()) {
                return;
            }
            while (true) {
                C26701k.m1432a(this.f1588a);
                AbstractC26839p.m1296c().mo1294a(f1586d, "Performing cleanup operations.", new Throwable[0]);
                try {
                    m42603a();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    int i = this.f1590c + 1;
                    this.f1590c = i;
                    if (i >= 3) {
                        AbstractC26839p.m1296c().mo1293b(f1586d, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        Objects.requireNonNull(this.f1589b.f74724b);
                        throw illegalStateException;
                    }
                    AbstractC26839p.m1296c().mo1294a(f1586d, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                    try {
                        Thread.sleep(this.f1590c * 300);
                    } catch (InterruptedException e2) {
                    }
                }
            }
        } finally {
            this.f1589b.m1429p();
        }
    }
}
