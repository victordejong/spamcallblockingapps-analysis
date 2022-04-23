package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.AbstractC0555f;
import androidx.work.BackoffPolicy;
import androidx.work.C0548b;
import androidx.work.C0550c;
import androidx.work.NetworkType;
import androidx.work.impl.p009l.C0589j;
/* renamed from: androidx.work.impl.background.systemjob.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
class C0568a {

    /* renamed from: b */
    private static final String f3017b = AbstractC0555f.m11738f("SystemJobInfoConverter");

    /* renamed from: a */
    private final ComponentName f3018a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.background.systemjob.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$a.class */
    public static /* synthetic */ class C0569a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3019a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[NetworkType.values().length];
            f3019a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3019a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3019a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3019a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3019a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    C0568a(Context context) {
        this.f3018a = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* renamed from: b */
    private static JobInfo.TriggerContentUri m11721b(C0550c.C0551a aVar) {
        return new JobInfo.TriggerContentUri(aVar.m11763a(), aVar.m11762b() ? 1 : 0);
    }

    /* renamed from: c */
    static int m11720c(NetworkType networkType) {
        int i = C0569a.f3019a[networkType.ordinal()];
        if (i == 1) {
            return 0;
        }
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
        AbstractC0555f.m11741c().m11743a(f3017b, String.format("API version too low. Cannot convert network type value %s", networkType), new Throwable[0]);
        return 1;
    }

    /* renamed from: a */
    JobInfo m11722a(C0589j jVar, int i) {
        C0548b bVar = jVar.f3094j;
        int c = m11720c(bVar.m11784b());
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", jVar.f3085a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", jVar.m11665d());
        JobInfo.Builder extras = new JobInfo.Builder(i, this.f3018a).setRequiredNetworkType(c).setRequiresCharging(bVar.m11779g()).setRequiresDeviceIdle(bVar.m11778h()).setExtras(persistableBundle);
        if (!bVar.m11778h()) {
            extras.setBackoffCriteria(jVar.f3097m, jVar.f3096l == BackoffPolicy.LINEAR ? 0 : 1);
        }
        extras.setMinimumLatency(Math.max(jVar.m11668a() - System.currentTimeMillis(), 0L));
        if (Build.VERSION.SDK_INT >= 24 && bVar.m11781e()) {
            for (C0550c.C0551a aVar : bVar.m11785a().m11765b()) {
                extras.addTriggerContentUri(m11721b(aVar));
            }
            extras.setTriggerContentUpdateDelay(bVar.m11783c());
            extras.setTriggerContentMaxDelay(bVar.m11782d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(bVar.m11780f());
            extras.setRequiresStorageNotLow(bVar.m11777i());
        }
        return extras.build();
    }
}
