package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock.class */
public class FileLock {

    /* renamed from: a */
    private static final Map<String, Integer> f18951a = new HashMap();

    /* renamed from: b */
    private final int f18952b;

    /* renamed from: c */
    private final String f18953c;

    static {
        C5423g.m32349a("file_lock_pg");
    }

    private FileLock(String str, int i) {
        this.f18953c = str;
        this.f18952b = i;
    }

    /* renamed from: a */
    public static FileLock m32370a(String str) {
        try {
            int m32365d = m32365d(str);
            nLockFile(m32365d);
            return new FileLock(str, m32365d);
        } catch (Exception e) {
            throw new RuntimeException("lock failed, file:" + str + ", pid:" + Process.myPid() + " caused by:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public static FileLock m32369a(String str, int i) {
        try {
            int m32365d = m32365d(str);
            nLockFileSegment(m32365d, i);
            return new FileLock(str, m32365d);
        } catch (Exception e) {
            throw new RuntimeException("lock segment failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    /* renamed from: b */
    public static FileLock m32367b(String str) {
        try {
            int m32365d = m32365d(str);
            if (nTryLock(m32365d)) {
                return new FileLock(str, m32365d);
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    /* renamed from: c */
    public static FileLock m32366c(String str) throws Exception {
        try {
            int m32365d = m32365d(str);
            if (nTryLock(m32365d)) {
                return new FileLock(str, m32365d);
            }
            new FileLock(str, m32365d).m32368b();
            return null;
        } catch (Exception e) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e.getMessage());
        }
    }

    /* renamed from: d */
    private static int m32365d(String str) throws Exception {
        Integer num;
        Map<String, Integer> map = f18951a;
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

    /* renamed from: a */
    public void m32371a() {
        try {
            nUnlockFile(this.f18952b);
        } catch (Exception e) {
            throw new RuntimeException("release lock failed，path:" + this.f18953c);
        }
    }

    /* renamed from: b */
    public void m32368b() {
        Integer remove;
        Map<String, Integer> map = f18951a;
        synchronized (map) {
            remove = map.remove(this.f18953c);
        }
        try {
            nRelease(remove.intValue());
        } catch (Exception e) {
            throw new RuntimeException("release lock failed, file:" + this.f18953c + " caused by:" + e.getMessage());
        }
    }
}
