package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock.class */
public class FileLock {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Integer> f10252a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f10253b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10254c;

    static {
        g.a("file_lock_pg");
    }

    private FileLock(String str, int i) {
        this.f10254c = str;
        this.f10253b = i;
    }

    public static FileLock a(String str) {
        try {
            int d2 = d(str);
            nLockFile(d2);
            return new FileLock(str, d2);
        } catch (Exception e) {
            throw new RuntimeException("lock failed, file:" + str + ", pid:" + Process.myPid() + " caused by:" + e.getMessage());
        }
    }

    public static FileLock a(String str, int i) {
        try {
            int d2 = d(str);
            nLockFileSegment(d2, i);
            return new FileLock(str, d2);
        } catch (Exception e) {
            throw new RuntimeException("lock segment failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    public static FileLock b(String str) {
        try {
            int d2 = d(str);
            if (!nTryLock(d2)) {
                return null;
            }
            return new FileLock(str, d2);
        } catch (Exception e) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    public static FileLock c(String str) throws Exception {
        try {
            int d2 = d(str);
            if (nTryLock(d2)) {
                return new FileLock(str, d2);
            }
            new FileLock(str, d2).b();
            return null;
        } catch (Exception e) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    private static int d(String str) throws Exception {
        Integer num;
        Map<String, Integer> map = f10252a;
        synchronized (map) {
            Integer num2 = map.get(str);
            num = num2;
            if (num2 == null) {
                new File(str).getParentFile().mkdirs();
                num = Integer.valueOf(nGetFD(str));
                map.put(str, num);
            }
        }
        return num.intValue();
    }

    private static native int nGetFD(String str) throws Exception;

    private static native void nLockFile(int i) throws Exception;

    private static native void nLockFileSegment(int i, int i2) throws Exception;

    private static native void nRelease(int i) throws Exception;

    private static native boolean nTryLock(int i) throws Exception;

    private static native void nUnlockFile(int i) throws Exception;

    public void a() {
        try {
            nUnlockFile(this.f10253b);
        } catch (Exception e) {
            throw new RuntimeException("release lock failed，path:" + this.f10254c);
        }
    }

    public void b() {
        Integer remove;
        Map<String, Integer> map = f10252a;
        synchronized (map) {
            remove = map.remove(this.f10254c);
        }
        try {
            nRelease(remove.intValue());
        } catch (Exception e) {
            throw new RuntimeException("release lock failed, file:" + this.f10254c + " caused by:" + e.getMessage());
        }
    }
}
