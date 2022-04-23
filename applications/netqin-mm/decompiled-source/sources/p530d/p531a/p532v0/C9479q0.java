package p530d.p531a.p532v0;

import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p354f.p361v.C6240a;
/* renamed from: d.a.v0.q0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/q0.class */
public final class C9479q0 {

    /* renamed from: a */
    public static final Logger f36296a = Logger.getLogger(C9479q0.class.getName());

    /* renamed from: d.a.v0.q0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q0$a.class */
    public static /* synthetic */ class C9480a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36297a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f36297a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36297a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f36297a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f36297a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f36297a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f36297a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: a */
    public static Object m2651a(String str) throws IOException {
        C6240a aVar = new C6240a(new StringReader(str));
        try {
            return m2648d(aVar);
        } finally {
            try {
                aVar.close();
            } catch (IOException e) {
                f36296a.log(Level.WARNING, "Failed to close", (Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public static List<?> m2652a(C6240a aVar) throws IOException {
        aVar.mo21830a();
        ArrayList arrayList = new ArrayList();
        while (aVar.mo21813i()) {
            arrayList.add(m2648d(aVar));
        }
        boolean z = aVar.mo21802u() == JsonToken.END_ARRAY;
        C4933n.m24775b(z, "Bad token: " + aVar.mo21814h());
        aVar.mo21816f();
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public static Void m2650b(C6240a aVar) throws IOException {
        aVar.mo21805r();
        return null;
    }

    /* renamed from: c */
    public static Map<String, ?> m2649c(C6240a aVar) throws IOException {
        aVar.mo21825b();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (aVar.mo21813i()) {
            linkedHashMap.put(aVar.mo21806q(), m2648d(aVar));
        }
        boolean z = aVar.mo21802u() == JsonToken.END_OBJECT;
        C4933n.m24775b(z, "Bad token: " + aVar.mo21814h());
        aVar.mo21815g();
        return Collections.unmodifiableMap(linkedHashMap);
    }

    /* renamed from: d */
    public static Object m2648d(C6240a aVar) throws IOException {
        C4933n.m24775b(aVar.mo21813i(), "unexpected end of JSON");
        switch (C9480a.f36297a[aVar.mo21802u().ordinal()]) {
            case 1:
                return m2652a(aVar);
            case 2:
                return m2649c(aVar);
            case 3:
                return aVar.mo21804s();
            case 4:
                return Double.valueOf(aVar.mo21809m());
            case 5:
                return Boolean.valueOf(aVar.mo21810l());
            case 6:
                return m2650b(aVar);
            default:
                throw new IllegalStateException("Bad token: " + aVar.mo21814h());
        }
    }
}
