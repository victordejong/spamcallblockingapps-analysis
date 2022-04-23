package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.j.l.n6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n6.class */
public class C8261n6 {

    /* renamed from: b */
    public static final C6999k f19092b = new C6999k("LibraryVersion", "");

    /* renamed from: c */
    public static C8261n6 f19093c = new C8261n6();

    /* renamed from: a */
    public final ConcurrentHashMap<String, String> f19094a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static C8261n6 m18258a() {
        return f19093c;
    }

    /* renamed from: a */
    public final String m18257a(@NonNull String str) {
        C7021t.m21287a(str, (Object) "Please provide a valid libraryName");
        if (this.f19094a.containsKey(str)) {
            return this.f19094a.get(str);
        }
        Properties properties = new Properties();
        r12 = null;
        String str2 = null;
        try {
            InputStream resourceAsStream = C8261n6.class.getResourceAsStream(String.format("/%s.properties", str));
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                String property = properties.getProperty("version", null);
                C6999k kVar = f19092b;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length());
                sb.append(str);
                sb.append(" version is ");
                sb.append(property);
                kVar.m21334d("LibraryVersion", sb.toString());
                str2 = property;
            } else {
                C6999k kVar2 = f19092b;
                String valueOf = String.valueOf(str);
                kVar2.m21337b("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
            }
        } catch (IOException e) {
            C6999k kVar3 = f19092b;
            String valueOf2 = String.valueOf(str);
            kVar3.m21338a("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
        }
        String str3 = str2;
        if (str2 == null) {
            f19092b.m21339a("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            str3 = "UNKNOWN";
        }
        this.f19094a.put(str, str3);
        return str3;
    }
}
