package p033i.p034a.p046d.p055f;

import java.util.Iterator;
import java.util.Objects;
import java.util.Properties;
import java.util.ServiceLoader;
import p033i.p034a.p035a.p036f.AbstractC0296h;
import p033i.p034a.p035a.p036f.AbstractC0299l;
import p033i.p034a.p035a.p036f.AbstractC0300m;
import p033i.p034a.p035a.p036f.C0298k;
import p033i.p034a.p035a.p037g.C0305b;
import p033i.p034a.p035a.p037g.C0306c;
import p033i.p034a.p046d.p055f.AbstractC0410k;
import p033i.p034a.p046d.p055f.C0406g;
/* renamed from: i.a.d.f.h */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/h.class */
public abstract class AbstractC0407h {

    /* renamed from: a */
    private static final AbstractC0407h f946a = m231b(C0298k.m459b());

    /* renamed from: b */
    private static final AbstractC0407h f947b;

    /* renamed from: c */
    private static final AbstractC0407h f948c;

    static {
        AbstractC0300m a = C0298k.m460a();
        a.m455b(C0408i.f964P, "opentelemetry");
        a.m455b(C0408i.f965Q, "java");
        a.m455b(C0408i.f966R, m223j());
        AbstractC0407h b = m231b(a.m454c());
        f947b = b;
        f948c = ((C0406g.a) ((C0406g.a) new C0406g.a().m327g()).m325i()).j().m225h(b).m225h(m224i());
    }

    AbstractC0407h() {
    }

    /* renamed from: a */
    private static void m232a(AbstractC0299l lVar) {
        lVar.forEach(C0403b.f943f);
    }

    /* renamed from: b */
    public static AbstractC0407h m231b(AbstractC0299l lVar) {
        Objects.requireNonNull(lVar, "attributes");
        m232a(lVar);
        return new e(lVar);
    }

    /* renamed from: d */
    public static AbstractC0407h m229d() {
        return f948c;
    }

    /* renamed from: e */
    private static boolean m228e(String str) {
        return str.length() <= 255 && C0305b.m438b(str);
    }

    /* renamed from: f */
    private static boolean m227f(AbstractC0296h<?> hVar) {
        return !hVar.getKey().isEmpty() && m228e(hVar.getKey());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m226g(AbstractC0296h hVar, Object obj) {
        C0306c.m436a(m227f(hVar), "Attribute key should be a ASCII string with a length greater than 0 and not exceed 255 characters.");
        Objects.requireNonNull(obj, "Attribute value should be a ASCII string with a length not exceed 255 characters.");
    }

    /* renamed from: i */
    private static AbstractC0407h m224i() {
        AbstractC0410k k = ((AbstractC0410k.a) ((AbstractC0410k.a) AbstractC0410k.m220a().m327g()).m325i()).k();
        AbstractC0407h hVar = f946a;
        Iterator it = ServiceLoader.load(AbstractC0409j.class).iterator();
        while (it.hasNext()) {
            AbstractC0409j jVar = (AbstractC0409j) it.next();
            if (!k.m219b().contains(jVar.getClass().getName())) {
                hVar = hVar.m225h(jVar.m222a());
            }
        }
        return hVar;
    }

    /* renamed from: j */
    private static String m223j() {
        Properties properties = new Properties();
        properties.load(AbstractC0407h.class.getResourceAsStream("/io/opentelemetry/sdk/version.properties"));
        return properties.getProperty("sdk.version");
    }

    /* renamed from: c */
    public abstract AbstractC0299l m230c();

    /* renamed from: h */
    public AbstractC0407h m225h(AbstractC0407h hVar) {
        if (hVar == null) {
            return this;
        }
        AbstractC0300m a = C0298k.m460a();
        a.m456a(hVar.m230c());
        a.m456a(m230c());
        return new e(a.m454c());
    }

    public abstract int hashCode();
}
