package com.esotericsoftware.p274b;

import com.callapp.contacts.model.Constants;
import io.objectbox.model.PropertyFlags;
import java.io.PrintWriter;
import java.io.StringWriter;
/* renamed from: com.esotericsoftware.b.a */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/b/a.class */
public final class C9366a {

    /* renamed from: a */
    public static boolean f32186a = true;

    /* renamed from: f */
    private static int f32191f = 3;

    /* renamed from: b */
    public static boolean f32187b = true;

    /* renamed from: c */
    public static boolean f32188c = true;

    /* renamed from: d */
    public static boolean f32189d = false;

    /* renamed from: e */
    public static boolean f32190e = false;

    /* renamed from: g */
    private static C9367a f32192g = new C9367a();

    /* renamed from: com.esotericsoftware.b.a$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/b/a$a.class */
    public static final class C9367a {

        /* renamed from: a */
        private final long f32193a = System.currentTimeMillis();

        /* renamed from: a */
        public final void m24492a(int i, String str, String str2, Throwable th) {
            StringBuilder sb = new StringBuilder((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
            long currentTimeMillis = System.currentTimeMillis() - this.f32193a;
            long j = currentTimeMillis / Constants.MINUTE_IN_MILLIS;
            long j2 = (currentTimeMillis / 1000) % 60;
            if (j <= 9) {
                sb.append('0');
            }
            sb.append(j);
            sb.append(':');
            if (j2 <= 9) {
                sb.append('0');
            }
            sb.append(j2);
            if (i == 1) {
                sb.append(" TRACE: ");
            } else if (i == 2) {
                sb.append(" DEBUG: ");
            } else if (i == 3) {
                sb.append("  INFO: ");
            } else if (i == 4) {
                sb.append("  WARN: ");
            } else if (i == 5) {
                sb.append(" ERROR: ");
            }
            if (str != null) {
                sb.append('[');
                sb.append(str);
                sb.append("] ");
            }
            sb.append(str2);
            if (th != null) {
                StringWriter stringWriter = new StringWriter(PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
                th.printStackTrace(new PrintWriter(stringWriter));
                sb.append('\n');
                sb.append(stringWriter.toString().trim());
            }
            System.out.println(sb.toString());
        }
    }

    private C9366a() {
    }

    /* renamed from: a */
    public static void m24497a(String str) {
        if (f32187b) {
            f32192g.m24492a(4, null, str, null);
        }
    }

    /* renamed from: a */
    public static void m24496a(String str, String str2) {
        if (f32189d) {
            f32192g.m24492a(2, str, str2, null);
        }
    }

    /* renamed from: a */
    public static void m24495a(String str, String str2, Throwable th) {
        if (f32189d) {
            f32192g.m24492a(2, str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m24494b(String str, String str2) {
        if (f32190e) {
            f32192g.m24492a(1, str, str2, null);
        }
    }

    /* renamed from: b */
    public static void m24493b(String str, String str2, Throwable th) {
        if (f32190e) {
            f32192g.m24492a(1, str, str2, th);
        }
    }
}
