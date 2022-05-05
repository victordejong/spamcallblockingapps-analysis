package p081h.p093b.p113e;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.ads.ExtraHints;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p081h.p093b.p113e.p114n.C5709a;
import p081h.p093b.p113e.p114n.C5710b;
import p081h.p093b.p113e.p114n.C5711c;
import p081h.p093b.p113e.p114n.C5712d;
import p081h.p093b.p113e.p114n.C5715g;
/* renamed from: h.b.e.f */
/* loaded from: classes-dex2jar.jar:h/b/e/f.class */
public class C5696f {

    /* renamed from: c */
    public boolean f14279c;

    /* renamed from: d */
    public String f14280d;

    /* renamed from: e */
    public C5697a f14281e;

    /* renamed from: b */
    public final List<AbstractC5694d> f14278b = new ArrayList();

    /* renamed from: f */
    public final Set<String> f14282f = new HashSet();

    /* renamed from: g */
    public final Set<String> f14283g = new HashSet();

    /* renamed from: a */
    public final String f14277a = "ISO-8859-1";

    /* renamed from: h.b.e.f$a */
    /* loaded from: classes-dex2jar.jar:h/b/e/f$a.class */
    public static final class C5697a extends BufferedReader {

        /* renamed from: a */
        public long f14284a;

        /* renamed from: b */
        public boolean f14285b;

        /* renamed from: c */
        public String f14286c;

        public C5697a(Reader reader) {
            super(reader);
        }

        /* renamed from: a */
        public String m24714a() throws IOException {
            if (!this.f14285b) {
                long currentTimeMillis = System.currentTimeMillis();
                String readLine = super.readLine();
                this.f14284a += System.currentTimeMillis() - currentTimeMillis;
                this.f14286c = readLine;
                this.f14285b = true;
            }
            return this.f14286c;
        }

        @Override // java.io.BufferedReader
        public String readLine() throws IOException {
            if (this.f14285b) {
                String str = this.f14286c;
                this.f14286c = null;
                this.f14285b = false;
                return str;
            }
            long currentTimeMillis = System.currentTimeMillis();
            String readLine = super.readLine();
            this.f14284a += System.currentTimeMillis() - currentTimeMillis;
            return readLine;
        }
    }

    public C5696f(int i) {
    }

    /* renamed from: b */
    public static String m24731b(char c) {
        if (c == '\\' || c == ';' || c == ':' || c == ',') {
            return String.valueOf(c);
        }
        return null;
    }

    /* renamed from: a */
    public C5702k m24732a(String str) throws C5710b {
        C5702k kVar = new C5702k();
        int length = str.length();
        if (length <= 0 || str.charAt(0) != '#') {
            char c = 0;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                String str2 = "";
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            i = i;
                        } else {
                            i = i;
                            if (charAt == '\"') {
                                "2.1".equalsIgnoreCase(mo24699h());
                                c = 1;
                            }
                        }
                    } else if (charAt == '\"') {
                        "2.1".equalsIgnoreCase(mo24699h());
                        c = 2;
                        i = i;
                    } else if (charAt == ';') {
                        mo24704e(kVar, str.substring(i, i2));
                        i = i2 + 1;
                    } else {
                        i = i;
                        if (charAt == ':') {
                            mo24704e(kVar, str.substring(i, i2));
                            if (i2 < length - 1) {
                                str2 = str.substring(i2 + 1);
                            }
                            kVar.m24680d(str2);
                            return kVar;
                        }
                    }
                } else if (charAt == ':') {
                    kVar.m24682c(str.substring(i, i2));
                    if (i2 < length - 1) {
                        str2 = str.substring(i2 + 1);
                    }
                    kVar.m24680d(str2);
                    return kVar;
                } else if (charAt == '.') {
                    String substring = str.substring(i, i2);
                    if (substring.length() != 0) {
                        kVar.m24690a(substring);
                    }
                    i = i2 + 1;
                } else {
                    i = i;
                    if (charAt == ';') {
                        kVar.m24682c(str.substring(i, i2));
                        i = i2 + 1;
                        c = 1;
                    }
                }
            }
            throw new C5712d("Invalid line: \"" + str + "\"");
        }
        throw new C5711c();
    }

    /* renamed from: a */
    public Set<String> m24738a() {
        return C5700i.f14292e;
    }

    /* renamed from: a */
    public void m24736a(AbstractC5694d dVar) {
        this.f14278b.add(dVar);
    }

    /* renamed from: a */
    public void mo24713a(C5702k kVar) throws C5710b {
        if (!kVar.m24681d().toUpperCase().contains("BEGIN:VCARD")) {
            for (AbstractC5694d dVar : this.f14278b) {
                dVar.mo8701a(kVar);
            }
            return;
        }
        throw new C5709a("AGENT Property is not supported now.");
    }

    /* renamed from: a */
    public void m24735a(C5702k kVar, String str) {
        kVar.m24689a("CHARSET", str);
    }

    /* renamed from: a */
    public void mo24712a(C5702k kVar, String str, String str2) {
        kVar.m24689a(str, str2);
    }

    /* renamed from: a */
    public final void m24734a(C5702k kVar, String str, String str2, String str3) throws C5710b, IOException {
        ArrayList arrayList = new ArrayList();
        if (this.f14280d.equals("QUOTED-PRINTABLE")) {
            String e = m24724e(str);
            kVar.m24680d(e);
            for (String str4 : C5704m.m24673a(e, mo24702g())) {
                arrayList.add(C5704m.m24671a(str4, false, str2, str3));
            }
        } else {
            for (String str5 : C5704m.m24673a(m24727c(str), mo24702g())) {
                arrayList.add(C5704m.m24672a(str5, str2, str3));
            }
        }
        kVar.m24688a(arrayList);
        for (AbstractC5694d dVar : this.f14278b) {
            dVar.mo8701a(kVar);
        }
    }

    /* renamed from: a */
    public void m24733a(InputStream inputStream) throws IOException, C5710b {
        if (inputStream != null) {
            this.f14281e = new C5697a(new InputStreamReader(inputStream, this.f14277a));
            System.currentTimeMillis();
            for (AbstractC5694d dVar : this.f14278b) {
                dVar.mo8702a();
            }
            while (true) {
                synchronized (this) {
                    if (!this.f14279c) {
                        if (!m24716l()) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            for (AbstractC5694d dVar2 : this.f14278b) {
                dVar2.mo8698c();
            }
            return;
        }
        throw new NullPointerException("InputStream must not be null.");
    }

    /* renamed from: a */
    public final boolean m24737a(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: a */
    public boolean mo24711a(boolean z) throws IOException, C5710b {
        while (true) {
            String e = mo24705e();
            if (e == null) {
                return false;
            }
            if (e.trim().length() > 0) {
                String[] split = e.split(":", 2);
                if (split.length == 2 && split[0].trim().equalsIgnoreCase("BEGIN") && split[1].trim().equalsIgnoreCase("VCARD")) {
                    return true;
                }
                if (!z) {
                    throw new C5710b("Expected String \"BEGIN:VCARD\" did not come (Instead, \"" + e + "\" came)");
                } else if (!z) {
                    throw new C5710b("Reached where must not be reached.");
                }
            }
        }
    }

    /* renamed from: b */
    public String mo24707b(String str) throws IOException, C5710b {
        String m;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        while (true) {
            m = m24715m();
            if (m != null) {
                String d = m24725d(m);
                if (mo24710b().contains(d) || "X-ANDROID-CUSTOM".equals(d)) {
                    break;
                }
                mo24705e();
                if (m.length() == 0) {
                    break;
                }
                sb.append(m.trim());
            } else {
                throw new C5710b("File ended during parsing BASE64 binary");
            }
        }
        String str2 = "Problematic line: " + m.trim();
        return sb.toString();
    }

    /* renamed from: b */
    public Set<String> mo24710b() {
        return C5700i.f14289b;
    }

    /* renamed from: b */
    public void m24730b(C5702k kVar, String str) throws C5710b {
        if (m24738a().contains(str) || str.startsWith("X-")) {
            kVar.m24689a("ENCODING", str);
            this.f14280d = str.toUpperCase();
            return;
        }
        throw new C5710b("Unknown encoding \"" + str + "\"");
    }

    /* renamed from: c */
    public final String m24727c(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        while (true) {
            String m = m24715m();
            if (m == null || m.length() == 0 || m24725d(m) != null) {
                break;
            }
            mo24705e();
            sb.append(" ");
            sb.append(m);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public Set<String> m24729c() {
        return C5700i.f14290c;
    }

    /* renamed from: c */
    public void m24728c(C5702k kVar, String str) throws C5710b {
        String[] split = str.split("-");
        if (split.length == 2) {
            String str2 = split[0];
            int length = str2.length();
            for (int i = 0; i < length; i++) {
                if (!m24737a(str2.charAt(i))) {
                    throw new C5710b("Invalid Language: \"" + str + "\"");
                }
            }
            String str3 = split[1];
            int length2 = str3.length();
            for (int i2 = 0; i2 < length2; i2++) {
                if (!m24737a(str3.charAt(i2))) {
                    throw new C5710b("Invalid Language: \"" + str + "\"");
                }
            }
            kVar.m24689a("LANGUAGE", str);
            return;
        }
        throw new C5710b("Invalid Language: \"" + str + "\"");
    }

    /* renamed from: d */
    public final String m24725d(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf <= -1) {
            return null;
        }
        int indexOf2 = str.indexOf(ExtraHints.KEYWORD_SEPARATOR);
        if (indexOf != -1) {
            indexOf2 = indexOf2 == -1 ? indexOf : Math.min(indexOf, indexOf2);
        }
        return str.substring(0, indexOf2).toUpperCase();
    }

    /* renamed from: d */
    public Set<String> m24726d() {
        return C5700i.f14291d;
    }

    /* renamed from: d */
    public void mo24706d(C5702k kVar, String str) {
        mo24701g(kVar, str);
    }

    /* renamed from: e */
    public String mo24705e() throws IOException {
        return this.f14281e.readLine();
    }

    /* renamed from: e */
    public final String m24724e(String str) throws IOException, C5710b {
        if (!str.trim().endsWith("=")) {
            return str;
        }
        int length = str.length() - 1;
        do {
        } while (str.charAt(length) != '=');
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, length + 1));
        sb.append("\r\n");
        while (true) {
            String e = mo24705e();
            if (e == null) {
                throw new C5710b("File ended during parsing a Quoted-Printable String");
            } else if (e.trim().endsWith("=")) {
                int length2 = e.length() - 1;
                do {
                } while (e.charAt(length2) != '=');
                sb.append(e.substring(0, length2 + 1));
                sb.append("\r\n");
            } else {
                sb.append(e);
                return sb.toString();
            }
        }
    }

    /* renamed from: e */
    public void mo24704e(C5702k kVar, String str) throws C5710b {
        String[] split = str.split("=", 2);
        if (split.length == 2) {
            String upperCase = split[0].trim().toUpperCase();
            String trim = split[1].trim();
            if (upperCase.equals("TYPE")) {
                mo24701g(kVar, trim);
            } else if (upperCase.equals("VALUE")) {
                m24721h(kVar, trim);
            } else if (upperCase.equals("ENCODING")) {
                m24730b(kVar, trim.toUpperCase());
            } else if (upperCase.equals("CHARSET")) {
                m24735a(kVar, trim);
            } else if (upperCase.equals("LANGUAGE")) {
                m24728c(kVar, trim);
            } else if (upperCase.startsWith("X-")) {
                mo24712a(kVar, upperCase, trim);
            } else {
                throw new C5710b("Unknown type \"" + upperCase + "\"");
            }
        } else {
            mo24706d(kVar, split[0]);
        }
    }

    /* renamed from: f */
    public String mo24703f() throws IOException, C5710b {
        String e;
        do {
            e = mo24705e();
            if (e == null) {
                throw new C5710b("Reached end of buffer.");
            }
        } while (e.trim().length() <= 0);
        return e;
    }

    /* renamed from: f */
    public void m24723f(C5702k kVar, String str) throws IOException, C5710b {
        String upperCase = kVar.m24685b().toUpperCase();
        String d = kVar.m24681d();
        Collection<String> b = kVar.m24684b("CHARSET");
        StringBuilder sb = null;
        String next = b != null ? b.iterator().next() : null;
        String str2 = next;
        if (TextUtils.isEmpty(next)) {
            str2 = "UTF-8";
        }
        if (upperCase.equals("ADR") || upperCase.equals("ORG") || upperCase.equals("N")) {
            m24734a(kVar, d, "ISO-8859-1", str2);
        } else if (this.f14280d.equals("QUOTED-PRINTABLE") || (upperCase.equals("FN") && kVar.m24684b("ENCODING") == null && C5704m.m24674a(d))) {
            String e = m24724e(d);
            String a = C5704m.m24671a(e, false, "ISO-8859-1", str2);
            kVar.m24680d(e);
            kVar.m24686a(a);
            for (AbstractC5694d dVar : this.f14278b) {
                dVar.mo8701a(kVar);
            }
        } else if (this.f14280d.equals("BASE64") || this.f14280d.equals("B")) {
            try {
                try {
                    kVar.m24687a(Base64.decode(mo24707b(d), 0));
                    for (AbstractC5694d dVar2 : this.f14278b) {
                        dVar2.mo8701a(kVar);
                    }
                } catch (IllegalArgumentException e2) {
                    throw new C5710b("Decode error on base64 photo: " + d);
                }
            } catch (OutOfMemoryError e3) {
                Log.e("vCard", "OutOfMemoryError happened during parsing BASE64 data!");
                for (AbstractC5694d dVar3 : this.f14278b) {
                    dVar3.mo8701a(kVar);
                }
            }
        } else {
            if (!this.f14280d.equals("7BIT") && !this.f14280d.equals("8BIT") && !this.f14280d.startsWith("X-")) {
                String.format("The encoding \"%s\" is unsupported by vCard %s", this.f14280d, mo24699h());
            }
            String str3 = d;
            if (mo24702g() == 0) {
                while (true) {
                    String m = m24715m();
                    if (TextUtils.isEmpty(m) || m.charAt(0) != ' ' || "END:VCARD".contains(m.toUpperCase())) {
                        break;
                    }
                    mo24705e();
                    StringBuilder sb2 = sb;
                    if (sb == null) {
                        sb2 = new StringBuilder();
                        sb2.append(d);
                    }
                    sb2.append(m.substring(1));
                    sb = sb2;
                }
                str3 = d;
                if (sb != null) {
                    str3 = sb.toString();
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(C5704m.m24672a(mo24700g(str3), "ISO-8859-1", str2));
            kVar.m24688a(arrayList);
            for (AbstractC5694d dVar4 : this.f14278b) {
                dVar4.mo8701a(kVar);
            }
        }
    }

    /* renamed from: f */
    public boolean m24722f(String str) {
        if (mo24710b().contains(str.toUpperCase()) || str.startsWith("X-") || this.f14282f.contains(str)) {
            return true;
        }
        this.f14282f.add(str);
        String str2 = "Property name unsupported by vCard 2.1: " + str;
        return true;
    }

    /* renamed from: g */
    public int mo24702g() {
        return 0;
    }

    /* renamed from: g */
    public String mo24700g(String str) {
        return str;
    }

    /* renamed from: g */
    public void mo24701g(C5702k kVar, String str) {
        if (!m24729c().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.f14282f.contains(str)) {
            this.f14282f.add(str);
            String.format("TYPE unsupported by %s: ", Integer.valueOf(mo24702g()), str);
        }
        kVar.m24689a("TYPE", str);
    }

    /* renamed from: h */
    public String mo24699h() {
        return "2.1";
    }

    /* renamed from: h */
    public void m24721h(C5702k kVar, String str) {
        if (!m24726d().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.f14283g.contains(str)) {
            this.f14283g.add(str);
            String.format("The value unsupported by TYPE of %s: ", Integer.valueOf(mo24702g()), str);
        }
        kVar.m24689a("VALUE", str);
    }

    /* renamed from: i */
    public final void m24720i() throws IOException, C5710b {
        for (AbstractC5694d dVar : this.f14278b) {
            dVar.mo8697d();
        }
        m24717k();
        for (AbstractC5694d dVar2 : this.f14278b) {
            dVar2.mo8699b();
        }
    }

    /* renamed from: i */
    public final void m24719i(C5702k kVar, String str) throws IOException, C5710b {
        String d = kVar.m24681d();
        if (str.equals("AGENT")) {
            mo24713a(kVar);
        } else if (!m24722f(str)) {
            throw new C5710b("Unknown property name: \"" + str + "\"");
        } else if (!str.equals("VERSION") || d.equals(mo24699h())) {
            m24723f(kVar, str);
        } else {
            throw new C5715g("Incompatible version: " + d + " != " + mo24699h());
        }
    }

    /* renamed from: j */
    public boolean m24718j() throws IOException, C5710b {
        this.f14280d = "8BIT";
        C5702k a = m24732a(mo24703f());
        String upperCase = a.m24685b().toUpperCase();
        String d = a.m24681d();
        if (upperCase.equals("BEGIN")) {
            if (d.equalsIgnoreCase("VCARD")) {
                m24720i();
                return false;
            }
            throw new C5710b("Unknown BEGIN type: " + d);
        } else if (!upperCase.equals("END")) {
            m24719i(a, upperCase);
            return false;
        } else if (d.equalsIgnoreCase("VCARD")) {
            return true;
        } else {
            throw new C5710b("Unknown END type: " + d);
        }
    }

    /* renamed from: k */
    public void m24717k() throws IOException, C5710b {
        boolean z;
        try {
            z = m24718j();
        } catch (C5711c e) {
            Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
            z = false;
        }
        while (!z) {
            try {
                z = m24718j();
            } catch (C5711c e2) {
                Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
            }
        }
    }

    /* renamed from: l */
    public final boolean m24716l() throws IOException, C5710b {
        this.f14280d = "8BIT";
        if (!mo24711a(false)) {
            return false;
        }
        for (AbstractC5694d dVar : this.f14278b) {
            dVar.mo8697d();
        }
        m24717k();
        for (AbstractC5694d dVar2 : this.f14278b) {
            dVar2.mo8699b();
        }
        return true;
    }

    /* renamed from: m */
    public String m24715m() throws IOException {
        return this.f14281e.m24714a();
    }
}
