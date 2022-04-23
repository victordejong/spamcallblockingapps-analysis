package com.esotericsoftware.b;

import com.callapp.contacts.model.Constants;
import io.objectbox.model.PropertyFlags;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f18942a = true;
    private static int f = 3;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f18943b = true;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f18944c = true;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f18945d = false;
    public static boolean e = false;
    private static C0374a g = new C0374a();

    /* renamed from: com.esotericsoftware.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/b/a$a.class */
    public static final class C0374a {

        /* renamed from: a  reason: collision with root package name */
        private final long f18946a = System.currentTimeMillis();

        public final void a(int i, String str, String str2, Throwable th) {
            StringBuilder sb = new StringBuilder((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
            long currentTimeMillis = System.currentTimeMillis() - this.f18946a;
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

    private a() {
    }

    public static void a(String str) {
        if (f18943b) {
            g.a(4, null, str, null);
        }
    }

    public static void a(String str, String str2) {
        if (f18945d) {
            g.a(2, str, str2, null);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f18945d) {
            g.a(2, str, str2, th);
        }
    }

    public static void b(String str, String str2) {
        if (e) {
            g.a(1, str, str2, null);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (e) {
            g.a(1, str, str2, th);
        }
    }
}
