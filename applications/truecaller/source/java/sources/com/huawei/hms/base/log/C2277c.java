package com.huawei.hms.base.log;

import android.os.Process;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* renamed from: com.huawei.hms.base.log.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/base/log/c.class */
public class C2277c {

    /* renamed from: b */
    public String f7350b;

    /* renamed from: c */
    public String f7351c;

    /* renamed from: d */
    public int f7352d;

    /* renamed from: g */
    public String f7355g;

    /* renamed from: h */
    public int f7356h;

    /* renamed from: i */
    public int f7357i;

    /* renamed from: j */
    public int f7358j;

    /* renamed from: a */
    public final StringBuilder f7349a = new StringBuilder();

    /* renamed from: e */
    public long f7353e = 0;

    /* renamed from: f */
    public long f7354f = 0;

    public C2277c(int i, String str, int i2, String str2) {
        this.f7350b = null;
        this.f7351c = "HMS";
        this.f7352d = 0;
        this.f7358j = 0;
        this.f7358j = i;
        this.f7350b = str;
        this.f7352d = i2;
        if (str2 != null) {
            this.f7351c = str2;
        }
        m38102b();
    }

    /* renamed from: a */
    public static String m38106a(int i) {
        return i != 3 ? i != 4 ? i != 5 ? i != 6 ? String.valueOf(i) : "E" : "W" : "I" : "D";
    }

    /* renamed from: a */
    public <T> C2277c m38105a(T t) {
        this.f7349a.append(t);
        return this;
    }

    /* renamed from: a */
    public C2277c m38103a(Throwable th) {
        m38105a((C2277c) '\n').m38105a((C2277c) Log.getStackTraceString(th));
        return this;
    }

    /* renamed from: a */
    public String m38107a() {
        StringBuilder sb = new StringBuilder();
        m38104a(sb);
        return sb.toString();
    }

    /* renamed from: a */
    public final StringBuilder m38104a(StringBuilder sb) {
        sb.append(' ');
        sb.append(this.f7349a.toString());
        return sb;
    }

    /* renamed from: b */
    public final C2277c m38102b() {
        this.f7353e = System.currentTimeMillis();
        Thread currentThread = Thread.currentThread();
        this.f7354f = currentThread.getId();
        this.f7356h = Process.myPid();
        StackTraceElement[] stackTrace = currentThread.getStackTrace();
        int length = stackTrace.length;
        int i = this.f7358j;
        if (length > i) {
            StackTraceElement stackTraceElement = stackTrace[i];
            this.f7355g = stackTraceElement.getFileName();
            this.f7357i = stackTraceElement.getLineNumber();
        }
        return this;
    }

    /* renamed from: b */
    public final StringBuilder m38101b(StringBuilder sb) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        sb.append('[');
        sb.append(simpleDateFormat.format(Long.valueOf(this.f7353e)));
        String m38106a = m38106a(this.f7352d);
        sb.append(' ');
        sb.append(m38106a);
        sb.append('/');
        sb.append(this.f7351c);
        sb.append('/');
        sb.append(this.f7350b);
        sb.append(' ');
        sb.append(this.f7356h);
        sb.append(':');
        sb.append(this.f7354f);
        sb.append(' ');
        sb.append(this.f7355g);
        sb.append(':');
        sb.append(this.f7357i);
        sb.append(']');
        return sb;
    }

    /* renamed from: c */
    public String m38100c() {
        StringBuilder sb = new StringBuilder();
        m38101b(sb);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        m38101b(sb);
        m38104a(sb);
        return sb.toString();
    }
}
