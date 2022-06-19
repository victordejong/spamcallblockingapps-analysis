package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.AbstractC3145k;
import androidx.work.EnumC3147l;
/* renamed from: androidx.work.impl.background.systemjob.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
final class C3042a {

    /* renamed from: a */
    private static final String f11273a = AbstractC3145k.m39275a("SystemJobInfoConverter");

    /* renamed from: b */
    private final ComponentName f11274b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.background.systemjob.a$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$1.class */
    public static final /* synthetic */ class C30431 {

        /* renamed from: a */
        static final /* synthetic */ int[] f11275a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC3147l.values().length];
            f11275a = iArr;
            try {
                iArr[EnumC3147l.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11275a[EnumC3147l.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11275a[EnumC3147l.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11275a[EnumC3147l.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11275a[EnumC3147l.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C3042a(Context context) {
        this.f11274b = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 26) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.job.JobInfo m39408a(androidx.work.impl.model.WorkSpec r7, int r8) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.C3042a.m39408a(androidx.work.impl.model.WorkSpec, int):android.app.job.JobInfo");
    }
}
