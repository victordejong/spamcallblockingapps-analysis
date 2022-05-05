package p010g.p026l.p028b;

import android.os.Build;
import com.zendesk.service.AbstractC0217a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import p010g.p026l.p030d.C0286f;
/* renamed from: g.l.b.a */
/* loaded from: classes2-dex2jar.jar:g/l/b/a.class */
public class C0266a {

    /* renamed from: a */
    private static final TimeZone f536a = TimeZone.getTimeZone("UTC");

    /* renamed from: b */
    private static final List<AbstractC0267c> f537b = new ArrayList();

    /* renamed from: c */
    private static AbstractC0267c f538c;

    /* renamed from: d */
    private static boolean f539d;

    /* renamed from: g.l.b.a$c */
    /* loaded from: classes2-dex2jar.jar:g/l/b/a$c.class */
    public interface AbstractC0267c {
        /* renamed from: a */
        void m507a(EnumC0268d dVar, String str, String str2, Throwable th);
    }

    /* renamed from: g.l.b.a$d */
    /* loaded from: classes2-dex2jar.jar:g/l/b/a$d.class */
    public enum EnumC0268d {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        
        private final int priority;

        EnumC0268d(int i) {
            this.priority = i;
        }
    }

    static {
        Class.forName("android.os.Build");
        if (Build.VERSION.SDK_INT != 0) {
            f538c = new a();
        }
        if (f538c == null) {
            f538c = new b();
        }
        f539d = false;
    }

    /* renamed from: b */
    public static void m517b(String str, String str2, Object... objArr) {
        m510i(EnumC0268d.DEBUG, str, str2, null, objArr);
    }

    /* renamed from: c */
    public static void m516c(String str, AbstractC0217a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar != null) {
            sb.append("Network Error: ");
            sb.append(aVar.m677e());
            sb.append(", Status Code: ");
            sb.append(aVar.m680b());
            if (C0286f.m479b(aVar.m678d())) {
                sb.append(", Reason: ");
                sb.append(aVar.m678d());
            }
        }
        String sb2 = sb.toString();
        EnumC0268d dVar = EnumC0268d.ERROR;
        if (!C0286f.m479b(sb2)) {
            sb2 = "Unknown error";
        }
        m510i(dVar, str, sb2, null, new Object[0]);
    }

    /* renamed from: d */
    public static void m515d(String str, String str2, Throwable th, Object... objArr) {
        m510i(EnumC0268d.ERROR, str, str2, th, objArr);
    }

    /* renamed from: e */
    public static void m514e(String str, String str2, Object... objArr) {
        m510i(EnumC0268d.ERROR, str, str2, null, objArr);
    }

    /* renamed from: f */
    public static void m513f(String str, String str2, Throwable th, Object... objArr) {
        m510i(EnumC0268d.INFO, str, str2, th, objArr);
    }

    /* renamed from: g */
    public static void m512g(String str, String str2, Object... objArr) {
        m510i(EnumC0268d.INFO, str, str2, null, objArr);
    }

    /* renamed from: h */
    public static boolean m511h() {
        return f539d;
    }

    /* renamed from: i */
    private static void m510i(EnumC0268d dVar, String str, String str2, Throwable th, Object... objArr) {
        String str3 = str2;
        if (objArr != null) {
            str3 = str2;
            if (objArr.length > 0) {
                str3 = String.format(Locale.US, str2, objArr);
            }
        }
        if (f539d) {
            f538c.m507a(dVar, str, str3, th);
            for (AbstractC0267c cVar : f537b) {
                cVar.m507a(dVar, str, str3, th);
            }
        }
    }

    /* renamed from: j */
    public static void m509j(String str, String str2, Throwable th, Object... objArr) {
        m510i(EnumC0268d.WARN, str, str2, th, objArr);
    }

    /* renamed from: k */
    public static void m508k(String str, String str2, Object... objArr) {
        m510i(EnumC0268d.WARN, str, str2, null, objArr);
    }
}
