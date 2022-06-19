package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.AbstractC1293l;
import androidx.work.C1129c;
import androidx.work.C1131d;
import androidx.work.EnumC1125a;
import androidx.work.EnumC1295m;
import androidx.work.impl.p055b.C1191p;
/* renamed from: androidx.work.impl.background.systemjob.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
class C1223a {

    /* renamed from: a */
    private static final String f4118a = AbstractC1293l.m17541a("SystemJobInfoConverter");

    /* renamed from: b */
    private final ComponentName f4119b;

    /* renamed from: androidx.work.impl.background.systemjob.a$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$1.class */
    public static /* synthetic */ class C12241 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4120a = new int[EnumC1295m.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:24:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:22:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0051 -> B:18:0x0014). Please submit an issue!!! */
        static {
            try {
                f4120a[EnumC1295m.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4120a[EnumC1295m.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4120a[EnumC1295m.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4120a[EnumC1295m.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4120a[EnumC1295m.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C1223a(Context context) {
        this.f4119b = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    static int m17724a(EnumC1295m enumC1295m) {
        int i = 0;
        switch (C12241.f4120a[enumC1295m.ordinal()]) {
            case 1:
                break;
            case 2:
                i = 1;
                break;
            case 3:
                i = 2;
                break;
            case 4:
                if (Build.VERSION.SDK_INT >= 24) {
                    i = 3;
                    break;
                }
                AbstractC1293l.m17543a().mo17539b(f4118a, String.format("API version too low. Cannot convert network type value %s", enumC1295m), new Throwable[0]);
                i = 1;
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    i = 4;
                    break;
                }
                AbstractC1293l.m17543a().mo17539b(f4118a, String.format("API version too low. Cannot convert network type value %s", enumC1295m), new Throwable[0]);
                i = 1;
                break;
            default:
                AbstractC1293l.m17543a().mo17539b(f4118a, String.format("API version too low. Cannot convert network type value %s", enumC1295m), new Throwable[0]);
                i = 1;
                break;
        }
        return i;
    }

    /* renamed from: a */
    private static JobInfo.TriggerContentUri m17726a(C1131d.C1132a c1132a) {
        return new JobInfo.TriggerContentUri(c1132a.m17925a(), c1132a.m17924b() ? 1 : 0);
    }

    /* renamed from: a */
    public JobInfo m17725a(C1191p c1191p, int i) {
        C1129c c1129c = c1191p.f4022j;
        int m17724a = m17724a(c1129c.m17946a());
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", c1191p.f4013a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", c1191p.m17808a());
        JobInfo.Builder extras = new JobInfo.Builder(i, this.f4119b).setRequiredNetworkType(m17724a).setRequiresCharging(c1129c.m17941b()).setRequiresDeviceIdle(c1129c.m17938c()).setExtras(persistableBundle);
        if (!c1129c.m17938c()) {
            extras.setBackoffCriteria(c1191p.f4025m, c1191p.f4024l == EnumC1125a.LINEAR ? 0 : 1);
        }
        long max = Math.max(c1191p.m17804c() - System.currentTimeMillis(), 0L);
        if (Build.VERSION.SDK_INT <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else {
            extras.setImportantWhileForeground(true);
        }
        if (Build.VERSION.SDK_INT >= 24 && c1129c.m17930i()) {
            for (C1131d.C1132a c1132a : c1129c.m17931h().m17928a()) {
                extras.addTriggerContentUri(m17726a(c1132a));
            }
            extras.setTriggerContentUpdateDelay(c1129c.m17933f());
            extras.setTriggerContentMaxDelay(c1129c.m17932g());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(c1129c.m17936d());
            extras.setRequiresStorageNotLow(c1129c.m17934e());
        }
        return extras.build();
    }
}
