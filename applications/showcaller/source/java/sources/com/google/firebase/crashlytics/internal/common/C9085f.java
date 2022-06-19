package com.google.firebase.crashlytics.internal.common;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.firebase.crashlytics.internal.common.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/f.class */
class C9085f {

    /* renamed from: a */
    private static final AtomicLong f39290a = new AtomicLong(0);

    /* renamed from: b */
    private static String f39291b;

    public C9085f(C9125t c9125t) {
        byte[] bArr = new byte[10];
        m1919e(bArr);
        m1920d(bArr);
        m1921c(bArr);
        String m1976B = CommonUtils.m1976B(c9125t.mo1772a());
        String m1952w = CommonUtils.m1952w(bArr);
        Locale locale = Locale.US;
        f39291b = String.format(locale, "%s%s%s%s", m1952w.substring(0, 12), m1952w.substring(12, 16), m1952w.subSequence(16, 20), m1976B.substring(0, 12)).toUpperCase(locale);
    }

    /* renamed from: a */
    private static byte[] m1923a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: b */
    private static byte[] m1922b(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: c */
    private void m1921c(byte[] bArr) {
        byte[] m1922b = m1922b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = m1922b[0];
        bArr[9] = m1922b[1];
    }

    /* renamed from: d */
    private void m1920d(byte[] bArr) {
        byte[] m1922b = m1922b(f39290a.incrementAndGet());
        bArr[6] = m1922b[0];
        bArr[7] = m1922b[1];
    }

    /* renamed from: e */
    private void m1919e(byte[] bArr) {
        long time = new Date().getTime();
        byte[] m1923a = m1923a(time / 1000);
        bArr[0] = m1923a[0];
        bArr[1] = m1923a[1];
        bArr[2] = m1923a[2];
        bArr[3] = m1923a[3];
        byte[] m1922b = m1922b(time % 1000);
        bArr[4] = m1922b[0];
        bArr[5] = m1922b[1];
    }

    public String toString() {
        return f39291b;
    }
}
