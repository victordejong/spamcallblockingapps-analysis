package p193e.p1545k.p1546a.p1556c.p1563f0;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23834k;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.f0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/f0/g.class */
public class C23631g implements Serializable {

    /* renamed from: c */
    public static final Class<?> f65493c = Node.class;

    /* renamed from: d */
    public static final Class<?> f65494d = Document.class;

    /* renamed from: e */
    public static final AbstractC23625a f65495e;

    /* renamed from: f */
    public static final C23631g f65496f;

    /* renamed from: a */
    public final Map<String, String> f65497a;

    /* renamed from: b */
    public final Map<String, Object> f65498b;

    static {
        AbstractC23625a abstractC23625a = null;
        try {
            abstractC23625a = AbstractC23625a.f65489a;
        } catch (Throwable th) {
        }
        f65495e = abstractC23625a;
        f65496f = new C23631g();
    }

    public C23631g() {
        HashMap hashMap = new HashMap();
        this.f65497a = hashMap;
        hashMap.put("java.sql.Date", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$SqlDateDeserializer");
        hashMap.put("java.sql.Timestamp", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$TimestampDeserializer");
        HashMap hashMap2 = new HashMap();
        this.f65498b = hashMap2;
        hashMap2.put("java.sql.Timestamp", C23834k.f65971f);
        hashMap2.put("java.sql.Date", "com.fasterxml.jackson.databind.ser.std.SqlDateSerializer");
        hashMap2.put("java.sql.Time", "com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer");
        hashMap2.put("java.sql.Blob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
        hashMap2.put("javax.sql.rowset.serial.SerialBlob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
    }

    /* renamed from: a */
    public final boolean m6509a(Class<?> cls, Class<?> cls2) {
        return cls2 != null && cls2.isAssignableFrom(cls);
    }

    /* renamed from: b */
    public final boolean m6508b(Class<?> cls, String str) {
        Class<? super Object> superclass;
        do {
            superclass = cls.getSuperclass();
            if (superclass == null || superclass == Object.class) {
                return false;
            }
            cls = superclass;
        } while (!superclass.getName().startsWith(str));
        return true;
    }

    /* renamed from: c */
    public final Object m6507c(Class<?> cls, AbstractC23698i abstractC23698i) {
        try {
            return C23914g.m5758i(cls, false);
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("Failed to create instance of `");
            m8728C.append(cls.getName());
            m8728C.append("` for handling values of type ");
            m8728C.append(C23914g.m5747t(abstractC23698i));
            m8728C.append(", problem: (");
            m8728C.append(th.getClass().getName());
            m8728C.append(") ");
            m8728C.append(th.getMessage());
            throw new IllegalStateException(m8728C.toString());
        }
    }

    /* renamed from: d */
    public final Object m6506d(String str, AbstractC23698i abstractC23698i) {
        try {
            return m6507c(Class.forName(str), abstractC23698i);
        } catch (Throwable th) {
            StringBuilder m8692L = C22128a.m8692L("Failed to find class `", str, "` for handling values of type ");
            m8692L.append(C23914g.m5747t(abstractC23698i));
            m8692L.append(", problem: (");
            m8692L.append(th.getClass().getName());
            m8692L.append(") ");
            m8692L.append(th.getMessage());
            throw new IllegalStateException(m8692L.toString());
        }
    }
}
