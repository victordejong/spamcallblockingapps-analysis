package com.google.android.gms.common.util;

import android.os.Process;
import android.os.WorkSource;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.reflect.Method;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {

    /* renamed from: a */
    public static final Method f6142a;

    /* renamed from: b */
    public static final Method f6143b;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00c3 -> B:15:0x006d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00c7 -> B:18:0x007f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00cb -> B:21:0x009f). Please submit an issue!!! */
    static {
        Method method;
        Method method2;
        Process.myUid();
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        f6142a = method;
        try {
            method2 = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
        } catch (Exception e2) {
            method2 = null;
        }
        f6143b = method2;
        try {
            WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e3) {
        }
        try {
            WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e4) {
        }
        try {
            WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception e5) {
        }
        if (PlatformVersion.m38775b()) {
            try {
                WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e6) {
            }
        }
        if (PlatformVersion.m38775b()) {
            try {
                Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e7) {
            }
        }
        if (PlatformVersion.m38775b()) {
            try {
                WorkSource.class.getMethod("isEmpty", new Class[0]).setAccessible(true);
            } catch (Exception e8) {
            }
        }
    }

    private WorkSourceUtil() {
    }
}
