package p081h.p451q.p453b;

import android.os.Build;
import android.util.Log;
import androidx.media2.exoplayer.external.audio.Sonic;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import p081h.p451q.p455d.C10862d;
/* renamed from: h.q.b.a */
/* loaded from: classes2-dex2jar.jar:h/q/b/a.class */
public class C10845a {

    /* renamed from: a */
    public static final TimeZone f24803a = TimeZone.getTimeZone("UTC");

    /* renamed from: b */
    public static final List<AbstractC10848c> f24804b = new ArrayList();

    /* renamed from: c */
    public static AbstractC10848c f24805c;

    /* renamed from: d */
    public static boolean f24806d;

    /* renamed from: h.q.b.a$a */
    /* loaded from: classes2-dex2jar.jar:h/q/b/a$a.class */
    public static class C10846a implements AbstractC10848c {
        @Override // p081h.p451q.p453b.C10845a.AbstractC10848c
        /* renamed from: a */
        public void mo10415a(EnumC10849d dVar, String str, String str2, Throwable th) {
            SimpleDateFormat simpleDateFormat;
            String a = C10850b.m10412a(str);
            if (m10416a(str) && EnumC10849d.ERROR == dVar) {
                new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).setTimeZone(C10845a.f24803a);
                Log.println(EnumC10849d.ERROR.f24813a, a, "Time in UTC: " + simpleDateFormat.format(new Date()));
            }
            String str3 = str2;
            if (th != null) {
                str3 = str2 + C10862d.f24821b + Log.getStackTraceString(th);
            }
            for (String str4 : C10850b.m10411a(str3, Sonic.AMDF_FREQUENCY)) {
                Log.println(dVar == null ? EnumC10849d.INFO.f24813a : dVar.f24813a, a, str4);
            }
        }

        /* renamed from: a */
        public final boolean m10416a(String str) {
            return C10862d.m10390b(str) && (str.endsWith("Provider") || str.endsWith("Service"));
        }
    }

    /* renamed from: h.q.b.a$b */
    /* loaded from: classes2-dex2jar.jar:h/q/b/a$b.class */
    public static class C10847b implements AbstractC10848c {
        @Override // p081h.p451q.p453b.C10845a.AbstractC10848c
        /* renamed from: a */
        public void mo10415a(EnumC10849d dVar, String str, String str2, Throwable th) {
            StringBuilder sb = new StringBuilder(100);
            sb.append("[");
            sb.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).format(new Date()));
            sb.append("]");
            sb.append(" ");
            sb.append(dVar == null ? C10850b.m10413a(EnumC10849d.INFO.f24813a) : C10850b.m10413a(dVar.f24813a));
            sb.append("/");
            if (!C10862d.m10390b(str)) {
                str = "UNKNOWN";
            }
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            System.out.println(sb.toString());
            if (th != null) {
                th.printStackTrace(System.out);
            }
        }
    }

    /* renamed from: h.q.b.a$c */
    /* loaded from: classes2-dex2jar.jar:h/q/b/a$c.class */
    public interface AbstractC10848c {
        /* renamed from: a */
        void mo10415a(EnumC10849d dVar, String str, String str2, Throwable th);
    }

    /* renamed from: h.q.b.a$d */
    /* loaded from: classes2-dex2jar.jar:h/q/b/a$d.class */
    public enum EnumC10849d {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        

        /* renamed from: a */
        public final int f24813a;

        EnumC10849d(int i) {
            this.f24813a = i;
        }
    }

    static {
        C10847b bVar;
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                f24805c = new C10846a();
            }
        } catch (ClassNotFoundException e) {
            if (f24805c == null) {
                bVar = new C10847b();
            }
        } catch (Throwable th) {
            if (f24805c == null) {
                f24805c = new C10847b();
            }
            throw th;
        }
        if (f24805c == null) {
            bVar = new C10847b();
            f24805c = bVar;
        }
        f24806d = false;
    }

    /* renamed from: a */
    public static void m10424a(EnumC10849d dVar, String str, String str2, Throwable th, Object... objArr) {
        String str3 = str2;
        if (objArr != null) {
            str3 = str2;
            if (objArr.length > 0) {
                str3 = String.format(Locale.US, str2, objArr);
            }
        }
        if (f24806d) {
            f24805c.mo10415a(dVar, str, str3, th);
            for (AbstractC10848c cVar : f24804b) {
                cVar.mo10415a(dVar, str, str3, th);
            }
        }
    }

    /* renamed from: a */
    public static void m10423a(String str, String str2, Throwable th, Object... objArr) {
        m10424a(EnumC10849d.ERROR, str, str2, th, objArr);
    }

    /* renamed from: a */
    public static void m10422a(String str, String str2, Object... objArr) {
        m10424a(EnumC10849d.DEBUG, str, str2, null, objArr);
    }

    /* renamed from: b */
    public static void m10420b(String str, String str2, Throwable th, Object... objArr) {
        m10424a(EnumC10849d.WARN, str, str2, th, objArr);
    }

    /* renamed from: b */
    public static void m10419b(String str, String str2, Object... objArr) {
        m10424a(EnumC10849d.ERROR, str, str2, null, objArr);
    }

    /* renamed from: b */
    public static boolean m10421b() {
        return f24806d;
    }

    /* renamed from: c */
    public static void m10418c(String str, String str2, Object... objArr) {
        m10424a(EnumC10849d.INFO, str, str2, null, objArr);
    }

    /* renamed from: d */
    public static void m10417d(String str, String str2, Object... objArr) {
        m10424a(EnumC10849d.WARN, str, str2, null, objArr);
    }
}
