package com.truecaller.log;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* loaded from: classes10-dex2jar.jar:com/truecaller/log/AssertionUtil.class */
public final class AssertionUtil {
    private static final String NOT_ON_MAIN_EXPLANATION = "Should be executing on main thread, but isn't!";
    private static final String ON_MAIN_EXPLANATION = "Should NOT be executing on main thread, but is! Naughty naughty!!";
    private static boolean sDisableAsserts = false;
    private static boolean sIsDebugBuild;

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/AssertionUtil$AlwaysFatal.class */
    public static class AlwaysFatal {
        private AlwaysFatal() {
        }

        public static void fail(String... strArr) {
            AssertionUtil.reportMessages(strArr);
            TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
            AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
            AssertionUtil.throwHard(tcAssertionError);
        }

        public static void isFalse(boolean z, String... strArr) {
            if (z) {
                AssertionUtil.reportMessages(strArr);
                TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void isNotNull(Object obj, String... strArr) {
            if (obj == null) {
                AssertionUtil.reportMessages(strArr);
                TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void isNull(Object obj, String... strArr) {
            if (obj != null) {
                AssertionUtil.reportMessages(strArr);
                TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void isTrue(boolean z, String... strArr) {
            if (!z) {
                AssertionUtil.reportMessages(strArr);
                TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void notOnMainThread(String... strArr) {
            if (AssertionUtil.isOnMainThread()) {
                AssertionUtil.reportMessages(strArr);
                StringBuilder m8728C = C22128a.m8728C("Should NOT be executing on main thread, but is! Naughty naughty!! ");
                m8728C.append(AssertionUtil.summarize(strArr));
                TcAssertionError tcAssertionError = new TcAssertionError(m8728C.toString());
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void onMainThread(String... strArr) {
            if (!AssertionUtil.isOnMainThread()) {
                AssertionUtil.reportMessages(strArr);
                StringBuilder m8728C = C22128a.m8728C("Should be executing on main thread, but isn't! ");
                m8728C.append(AssertionUtil.summarize(strArr));
                TcAssertionError tcAssertionError = new TcAssertionError(m8728C.toString());
                AssertionUtil.reportThrowableButNeverCrash(tcAssertionError);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }

        public static void shouldNeverHappen(Throwable th, String... strArr) {
            AssertionUtil.reportMessages(strArr);
            TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
            tcAssertionError.initCause(th);
            AssertionUtil.throwHard(tcAssertionError);
        }
    }

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/AssertionUtil$OnlyInDebug.class */
    public static class OnlyInDebug {
        private OnlyInDebug() {
        }

        public static void fail(String... strArr) {
            if (AssertionUtil.sIsDebugBuild) {
                AssertionUtil.throwHard(new TcAssertionError(AssertionUtil.summarize(strArr)));
            }
        }

        public static void isTrue(boolean z, String... strArr) {
            if (!AssertionUtil.sIsDebugBuild || z) {
                return;
            }
            AssertionUtil.reportMessages(strArr);
            AssertionUtil.throwHard(new TcAssertionError(AssertionUtil.summarize(strArr)));
        }

        public static void notOnMainThread(String... strArr) {
            if (!AssertionUtil.sIsDebugBuild || !AssertionUtil.isOnMainThread()) {
                return;
            }
            AssertionUtil.reportMessages(strArr);
            StringBuilder m8728C = C22128a.m8728C("Should NOT be executing on main thread, but is! Naughty naughty!! ");
            m8728C.append(AssertionUtil.summarize(strArr));
            AssertionUtil.throwHard(new TcAssertionError(m8728C.toString()));
        }

        public static void onMainThread(String... strArr) {
            if (!AssertionUtil.sIsDebugBuild || AssertionUtil.isOnMainThread()) {
                return;
            }
            AssertionUtil.reportMessages(strArr);
            StringBuilder m8728C = C22128a.m8728C("Should be executing on main thread, but isn't! ");
            m8728C.append(AssertionUtil.summarize(strArr));
            AssertionUtil.throwHard(new TcAssertionError(m8728C.toString()));
        }

        public static void shouldNeverHappen(Throwable th, String... strArr) {
            if (AssertionUtil.sIsDebugBuild) {
                AssertionUtil.reportMessages(strArr);
                TcAssertionError tcAssertionError = new TcAssertionError(AssertionUtil.summarize(strArr));
                tcAssertionError.initCause(th);
                AssertionUtil.throwHard(tcAssertionError);
            }
        }
    }

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/AssertionUtil$TcAssertionError.class */
    public static class TcAssertionError extends AssertionError {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private TcAssertionError(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.String r0 = "Failed test assertion (fatal)"
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L10
                java.lang.String r0 = "."
                r4 = r0
                goto L24
            L10:
                java.lang.String r0 = ": "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r6 = r0
                r0 = r6
                r1 = r4
                java.lang.String r1 = r1.toString()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                java.lang.String r0 = r0.toString()
                r4 = r0
            L24:
                r0 = r5
                r1 = r4
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r3
                r1 = r5
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r3
                com.truecaller.log.AssertionUtil.access$700(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.log.AssertionUtil.TcAssertionError.<init>(java.lang.Object):void");
        }
    }

    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/AssertionUtil$TcDryAssertionError.class */
    public static class TcDryAssertionError extends AssertionError {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private TcDryAssertionError(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.String r0 = "Failed test assertion (non-fatal)"
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L10
                java.lang.String r0 = "."
                r4 = r0
                goto L24
            L10:
                java.lang.String r0 = ": "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r6 = r0
                r0 = r6
                r1 = r4
                java.lang.String r1 = r1.toString()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                java.lang.String r0 = r0.toString()
                r4 = r0
            L24:
                r0 = r5
                r1 = r4
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r3
                r1 = r5
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r3
                com.truecaller.log.AssertionUtil.access$700(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.log.AssertionUtil.TcDryAssertionError.<init>(java.lang.Object):void");
        }
    }

    private AssertionUtil() {
    }

    public static void isFalse(boolean z, String... strArr) {
        if (sDisableAsserts || !z) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            throwHard(new TcAssertionError(summarize(strArr)));
        } else {
            reportThrowableButNeverCrash(new TcDryAssertionError(summarize(strArr)));
        }
    }

    public static void isNotNull(Object obj, String... strArr) {
        if (sDisableAsserts || obj != null) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            throwHard(new TcAssertionError(summarize(strArr)));
        } else {
            reportThrowableButNeverCrash(new TcDryAssertionError(summarize(strArr)));
        }
    }

    public static void isNull(Object obj, String... strArr) {
        if (sDisableAsserts || obj == null) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            throwHard(new TcAssertionError(summarize(strArr)));
        } else {
            reportThrowableButNeverCrash(new TcDryAssertionError(summarize(strArr)));
        }
    }

    public static boolean isOnMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static void isTrue(boolean z, String... strArr) {
        if (sDisableAsserts || z) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            throwHard(new TcAssertionError(summarize(strArr)));
        } else {
            reportThrowableButNeverCrash(new TcDryAssertionError(summarize(strArr)));
        }
    }

    public static void notOnMainThread(String... strArr) {
        if (sDisableAsserts || !isOnMainThread()) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            StringBuilder m8728C = C22128a.m8728C("Should NOT be executing on main thread, but is! Naughty naughty!! ");
            m8728C.append(summarize(strArr));
            throwHard(new TcAssertionError(m8728C.toString()));
            return;
        }
        StringBuilder m8728C2 = C22128a.m8728C("Should NOT be executing on main thread, but is! Naughty naughty!! ");
        m8728C2.append(summarize(strArr));
        reportThrowableButNeverCrash(new TcDryAssertionError(m8728C2.toString()));
    }

    public static void onMainThread(String... strArr) {
        if (sDisableAsserts || isOnMainThread()) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            StringBuilder m8728C = C22128a.m8728C("Should be executing on main thread, but isn't! ");
            m8728C.append(summarize(strArr));
            throwHard(new TcAssertionError(m8728C.toString()));
            return;
        }
        StringBuilder m8728C2 = C22128a.m8728C("Should be executing on main thread, but isn't! ");
        m8728C2.append(summarize(strArr));
        reportThrowableButNeverCrash(new TcDryAssertionError(m8728C2.toString()));
    }

    public static void onSameThread(Thread thread, String... strArr) {
        if (sDisableAsserts || Thread.currentThread() == thread) {
            return;
        }
        reportMessages(strArr);
        if (!sIsDebugBuild) {
            StringBuilder m8728C = C22128a.m8728C("Should NOT be executing on main thread, but is! Naughty naughty!! ");
            m8728C.append(summarize(strArr));
            reportThrowableButNeverCrash(new TcDryAssertionError(m8728C.toString()));
            return;
        }
        StringBuilder m8728C2 = C22128a.m8728C("Must be executed on thread [");
        m8728C2.append(thread.getName());
        m8728C2.append("] but was on thread [");
        m8728C2.append(Thread.currentThread().getName());
        m8728C2.append("] ");
        m8728C2.append(summarize(strArr));
        throwHard(new TcAssertionError(m8728C2.toString()));
    }

    public static void removeMyselfFromTopOfStacktrace(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        String canonicalName = AssertionUtil.class.getCanonicalName();
        int i = 0;
        while (i < stackTrace.length - 1 && stackTrace[i].getClassName().startsWith(canonicalName)) {
            i++;
        }
        if (i > 0) {
            int length = stackTrace.length - i;
            StackTraceElement[] stackTraceElementArr = new StackTraceElement[length];
            System.arraycopy(stackTrace, i, stackTraceElementArr, 0, length);
            th.setStackTrace(stackTraceElementArr);
        }
    }

    public static void report(String... strArr) {
        if (sDisableAsserts) {
            return;
        }
        reportWithSummary(summarize(strArr), strArr);
    }

    public static void reportMessages(String... strArr) {
        for (String str : strArr) {
            if (!sIsDebugBuild && !Debug.isDebuggerConnected()) {
                l.e(str, RemoteMessageConst.MessageBody.MSG);
            }
        }
    }

    public static void reportThrowableButNeverCrash(Throwable th) {
        if (sDisableAsserts) {
            return;
        }
        if (sIsDebugBuild || Debug.isDebuggerConnected()) {
            th.printStackTrace();
        } else {
            C10480a.m26061I1(th);
        }
    }

    public static void reportWeirdnessButNeverCrash(String str) {
        shouldNeverHappen(new TcDryAssertionError(str), new String[0]);
    }

    public static void reportWithSummary(String str, String... strArr) {
        if (sDisableAsserts) {
            return;
        }
        reportMessages(strArr);
        reportThrowableButNeverCrash(new TcDryAssertionError(str));
    }

    public static void setDisableAsserts(boolean z) {
        sDisableAsserts = z;
    }

    public static void setIsDebugBuild(boolean z) {
        sIsDebugBuild = z;
    }

    public static void shouldNeverHappen(Throwable th, String... strArr) {
        if (sDisableAsserts) {
            return;
        }
        reportMessages(strArr);
        if (sIsDebugBuild) {
            TcAssertionError tcAssertionError = new TcAssertionError(summarize(strArr));
            tcAssertionError.initCause(th);
            throwHard(tcAssertionError);
            return;
        }
        TcDryAssertionError tcDryAssertionError = new TcDryAssertionError(summarize(strArr));
        tcDryAssertionError.initCause(th);
        reportThrowableButNeverCrash(tcDryAssertionError);
    }

    public static String summarize(String[] strArr) {
        return (strArr == null || strArr.length <= 0 || strArr[0] == null) ? "" : strArr[0];
    }

    public static void throwHard(final TcAssertionError tcAssertionError) {
        if (sDisableAsserts) {
            return;
        }
        reportThrowableButNeverCrash(tcAssertionError);
        try {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.truecaller.log.AssertionUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    throw tcAssertionError;
                }
            });
        } catch (Throwable th) {
        }
        throw tcAssertionError;
    }
}
