package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.k;
import androidx.work.l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6066a = k.a("SystemJobInfoConverter");

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f6067b;

    /* renamed from: androidx.work.impl.background.systemjob.a$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6068a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[l.values().length];
            f6068a = iArr;
            try {
                iArr[l.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6068a[l.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6068a[l.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6068a[l.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6068a[l.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        this.f6067b = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 26) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.job.JobInfo a(androidx.work.impl.model.WorkSpec r7, int r8) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.a.a(androidx.work.impl.model.WorkSpec, int):android.app.job.JobInfo");
    }
}
