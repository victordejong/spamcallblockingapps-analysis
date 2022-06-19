package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.p008os.C0622a;
import androidx.work.AbstractC1404j;
import androidx.work.BackoffPolicy;
import androidx.work.C1234b;
import androidx.work.C1236c;
import androidx.work.NetworkType;
import androidx.work.impl.p018n.C1344p;
/* renamed from: androidx.work.impl.background.systemjob.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
class C1262a {

    /* renamed from: a */
    private static final String f5366a = AbstractC1404j.m30159f("SystemJobInfoConverter");

    /* renamed from: b */
    private final ComponentName f5367b;

    /* renamed from: androidx.work.impl.background.systemjob.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$a.class */
    public static /* synthetic */ class C1263a {

        /* renamed from: a */
        static final /* synthetic */ int[] f5368a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[NetworkType.values().length];
            f5368a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5368a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5368a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5368a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5368a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C1262a(Context context) {
        this.f5367b = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* renamed from: b */
    private static JobInfo.TriggerContentUri m30459b(C1236c.C1237a c1237a) {
        return new JobInfo.TriggerContentUri(c1237a.m30560a(), c1237a.m30559b() ? 1 : 0);
    }

    /* renamed from: c */
    static int m30458c(NetworkType networkType) {
        int i = C1263a.f5368a[networkType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                if (i == 5 && Build.VERSION.SDK_INT >= 26) {
                    return 4;
                }
            } else if (Build.VERSION.SDK_INT >= 24) {
                return 3;
            }
            AbstractC1404j.m30161c().mo30158a(f5366a, String.format("API version too low. Cannot convert network type value %s", networkType), new Throwable[0]);
            return 1;
        }
        return 0;
    }

    /* renamed from: d */
    static void m30457d(JobInfo.Builder builder, NetworkType networkType) {
        if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(m30458c(networkType));
        } else {
            builder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
    }

    /* renamed from: a */
    public JobInfo m30460a(C1344p c1344p, int i) {
        C1234b c1234b = c1344p.f5587l;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", c1344p.f5578c);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", c1344p.m30283d());
        JobInfo.Builder extras = new JobInfo.Builder(i, this.f5367b).setRequiresCharging(c1234b.m30576g()).setRequiresDeviceIdle(c1234b.m30575h()).setExtras(persistableBundle);
        m30457d(extras, c1234b.m30581b());
        boolean z = false;
        if (!c1234b.m30575h()) {
            extras.setBackoffCriteria(c1344p.f5590o, c1344p.f5589n == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long max = Math.max(c1344p.m30286a() - System.currentTimeMillis(), 0L);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!c1344p.f5594s) {
            extras.setImportantWhileForeground(true);
        }
        if (i2 >= 24 && c1234b.m30578e()) {
            for (C1236c.C1237a c1237a : c1234b.m30582a().m30562b()) {
                extras.addTriggerContentUri(m30459b(c1237a));
            }
            extras.setTriggerContentUpdateDelay(c1234b.m30580c());
            extras.setTriggerContentMaxDelay(c1234b.m30579d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(c1234b.m30577f());
            extras.setRequiresStorageNotLow(c1234b.m30574i());
        }
        boolean z2 = c1344p.f5588m > 0;
        if (max > 0) {
            z = true;
        }
        if (C0622a.m33200c() && c1344p.f5594s && !z2 && !z) {
            extras.setExpedited(true);
        }
        return extras.build();
    }
}
