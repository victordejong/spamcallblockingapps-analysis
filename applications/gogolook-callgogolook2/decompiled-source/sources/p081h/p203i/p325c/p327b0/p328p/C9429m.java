package p081h.p203i.p325c.p327b0.p328p;

import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7072d;
/* renamed from: h.i.c.b0.p.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/m.class */
public class C9429m {

    /* renamed from: e */
    public static final Pattern f21518e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: f */
    public static final Pattern f21519f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a */
    public final Set<AbstractC7072d<String, C9419f>> f21520a = new HashSet();

    /* renamed from: b */
    public final Executor f21521b;

    /* renamed from: c */
    public final C9416e f21522c;

    /* renamed from: d */
    public final C9416e f21523d;

    static {
        Charset.forName("UTF-8");
    }

    public C9429m(Executor executor, C9416e eVar, C9416e eVar2) {
        this.f21521b = executor;
        this.f21522c = eVar;
        this.f21523d = eVar2;
    }

    @Nullable
    /* renamed from: a */
    public static C9419f m15211a(C9416e eVar) {
        return eVar.m15259c();
    }

    @Nullable
    /* renamed from: a */
    public static Long m15210a(C9416e eVar, String str) {
        C9419f a = m15211a(eVar);
        if (a == null) {
            return null;
        }
        try {
            return Long.valueOf(a.m15254b().getLong(str));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m15207a(String str, String str2) {
        String.format("No value of type '%s' exists for parameter key '%s'.", str2, str);
    }

    @Nullable
    /* renamed from: b */
    public static String m15206b(C9416e eVar, String str) {
        C9419f a = m15211a(eVar);
        if (a == null) {
            return null;
        }
        try {
            return a.m15254b().getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m15213a(AbstractC7072d<String, C9419f> dVar) {
        synchronized (this.f21520a) {
            this.f21520a.add(dVar);
        }
    }

    /* renamed from: a */
    public final void m15208a(String str, C9419f fVar) {
        if (fVar != null) {
            synchronized (this.f21520a) {
                for (AbstractC7072d<String, C9419f> dVar : this.f21520a) {
                    this.f21521b.execute(RunnableC9428l.m15214a(dVar, str, fVar));
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m15209a(String str) {
        String b = m15206b(this.f21522c, str);
        if (b != null) {
            if (f21518e.matcher(b).matches()) {
                m15208a(str, m15211a(this.f21522c));
                return true;
            } else if (f21519f.matcher(b).matches()) {
                m15208a(str, m15211a(this.f21522c));
                return false;
            }
        }
        String b2 = m15206b(this.f21523d, str);
        if (b2 != null) {
            if (f21518e.matcher(b2).matches()) {
                return true;
            }
            if (f21519f.matcher(b2).matches()) {
                return false;
            }
        }
        m15207a(str, "Boolean");
        return false;
    }

    /* renamed from: b */
    public long m15205b(String str) {
        Long a = m15210a(this.f21522c, str);
        if (a != null) {
            m15208a(str, m15211a(this.f21522c));
            return a.longValue();
        }
        Long a2 = m15210a(this.f21523d, str);
        if (a2 != null) {
            return a2.longValue();
        }
        m15207a(str, "Long");
        return 0L;
    }

    /* renamed from: c */
    public String m15204c(String str) {
        String b = m15206b(this.f21522c, str);
        if (b != null) {
            m15208a(str, m15211a(this.f21522c));
            return b;
        }
        String b2 = m15206b(this.f21523d, str);
        if (b2 != null) {
            return b2;
        }
        m15207a(str, "String");
        return "";
    }
}
