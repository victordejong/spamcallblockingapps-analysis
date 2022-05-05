package com.apptentive.android.sdk.debug;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/Assert.class */
public class Assert {
    private static AssertImp imp = new AssertImp() { // from class: com.apptentive.android.sdk.debug.Assert.1
        @Override // com.apptentive.android.sdk.debug.AssertImp
        public void assertFailed(String str) {
            ApptentiveLog.m15647a("Assertion failed: " + str + "\n" + Assert.getStackTrace(6), new Object[0]);
        }
    };

    public static void assertDispatchQueue(@NonNull DispatchQueue dispatchQueue) {
        if (imp == null) {
            return;
        }
        if (dispatchQueue == null || !dispatchQueue.isCurrent()) {
            imp.assertFailed(StringUtils.format("Expected '%s' queue but was '%s'", dispatchQueue != null ? dispatchQueue.getName() : "<missing queue>", Thread.currentThread().getName()));
        }
    }

    public static void assertEquals(Object obj, Object obj2) {
        if (imp != null && !ObjectUtils.equal(obj, obj2)) {
            imp.assertFailed(StringUtils.format("Expected '%s' but was '%s'", obj, obj2));
        }
    }

    public static void assertFail(String str) {
        AssertImp assertImp = imp;
        if (assertImp != null) {
            assertImp.assertFailed(str);
        }
    }

    public static void assertFail(String str, Object... objArr) {
        assertFail(StringUtils.format(str, objArr));
    }

    public static void assertFalse(boolean z) {
        AssertImp assertImp = imp;
        if (assertImp != null && z) {
            assertImp.assertFailed("Expected 'false' but was 'true'");
        }
    }

    public static void assertFalse(boolean z, String str) {
        AssertImp assertImp = imp;
        if (assertImp != null && z) {
            assertImp.assertFailed(str);
        }
    }

    public static void assertFalse(boolean z, String str, Object... objArr) {
        AssertImp assertImp = imp;
        if (assertImp != null && z) {
            assertImp.assertFailed(StringUtils.format(str, objArr));
        }
    }

    public static void assertMainThread() {
        if (imp != null && !DispatchQueue.isMainQueue()) {
            imp.assertFailed(StringUtils.format("Expected 'main' thread but was '%s'", Thread.currentThread().getName()));
        }
    }

    public static void assertNotEquals(Object obj, Object obj2) {
        if (imp != null && ObjectUtils.equal(obj, obj2)) {
            imp.assertFailed(StringUtils.format("Expected '%s' and '%s' to differ, but they are the same.", obj, obj2));
        }
    }

    public static void assertNotNull(Object obj) {
        AssertImp assertImp = imp;
        if (assertImp != null && obj == null) {
            assertImp.assertFailed("Not-null expected");
        }
    }

    public static void assertNotNull(Object obj, String str) {
        AssertImp assertImp = imp;
        if (assertImp != null && obj == null) {
            assertImp.assertFailed(str);
        }
    }

    public static void assertNotNull(Object obj, String str, Object... objArr) {
        AssertImp assertImp = imp;
        if (assertImp != null && obj == null) {
            assertImp.assertFailed(String.format(str, objArr));
        }
    }

    public static void assertNull(Object obj, String str) {
        AssertImp assertImp = imp;
        if (assertImp != null && obj != null) {
            assertImp.assertFailed(str);
        }
    }

    public static void assertTrue(boolean z) {
        AssertImp assertImp = imp;
        if (assertImp != null && !z) {
            assertImp.assertFailed("Expected 'true' but was 'false'");
        }
    }

    public static void assertTrue(boolean z, String str) {
        AssertImp assertImp = imp;
        if (assertImp != null && !z) {
            assertImp.assertFailed(str);
        }
    }

    public static void assertTrue(boolean z, String str, Object... objArr) {
        AssertImp assertImp = imp;
        if (assertImp != null && !z) {
            assertImp.assertFailed(StringUtils.format(str, objArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getStackTrace(int i) {
        StringBuilder sb = new StringBuilder();
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                while (i < stackTrace.length) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(stackTrace[i].toString());
                    i++;
                }
            }
        } catch (Exception e) {
        }
        return sb.toString();
    }

    public static <T> T notNull(T t) {
        assertNotNull(t);
        return t;
    }
}
