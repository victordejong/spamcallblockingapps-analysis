package org.jsoup.nodes;

import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.jsoup.SerializationException;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
/* renamed from: org.jsoup.nodes.a */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/a.class */
public final class C20900a implements Cloneable, Map.Entry<String, String> {

    /* renamed from: d */
    private static final String[] f67447d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: a */
    public String f67448a;

    /* renamed from: b */
    String f67449b;

    /* renamed from: c */
    C20901b f67450c;

    public C20900a(String str, String str2) {
        this(str, str2, null);
    }

    public C20900a(String str, String str2, C20901b c20901b) {
        C20779c.m507a((Object) str);
        String trim = str.trim();
        C20779c.m505a(trim);
        this.f67448a = trim;
        this.f67449b = str2;
        this.f67450c = c20901b;
    }

    /* renamed from: a */
    private String m319a() {
        StringBuilder m496a = C20782c.m496a();
        try {
            m318a(m496a, new C20906f("").f67457a);
            return C20782c.m491a(m496a);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* renamed from: a */
    private static void m316a(String str, String str2, Appendable appendable, C20906f.C20907a c20907a) throws IOException {
        appendable.append(str);
        if (!m315a(str, str2, c20907a)) {
            appendable.append("=\"");
            C20914i.m257a(appendable, C20901b.m297c(str2), c20907a, true, false, false);
            appendable.append('\"');
        }
    }

    /* renamed from: a */
    private static boolean m317a(String str) {
        return Arrays.binarySearch(f67447d, str) >= 0;
    }

    /* renamed from: a */
    public static boolean m315a(String str, String str2, C20906f.C20907a c20907a) {
        if (c20907a.f67469h == C20906f.C20907a.EnumC20908a.f67470a) {
            if (str2 == null) {
                return true;
            }
            return ("".equals(str2) || str2.equalsIgnoreCase(str)) && m317a(str);
        }
        return false;
    }

    /* renamed from: b */
    public C20900a clone() {
        try {
            return (C20900a) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public final void m318a(Appendable appendable, C20906f.C20907a c20907a) throws IOException {
        m316a(this.f67448a, this.f67449b, appendable, c20907a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C20900a c20900a = (C20900a) obj;
        String str = this.f67448a;
        if (str != null) {
            if (!str.equals(c20900a.f67448a)) {
                return false;
            }
        } else if (c20900a.f67448a != null) {
            return false;
        }
        String str2 = this.f67449b;
        String str3 = c20900a.f67449b;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ String getKey() {
        return this.f67448a;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String getValue() {
        return C20901b.m297c(this.f67449b);
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        String str = this.f67448a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f67449b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String setValue(String str) {
        String str2 = str;
        String str3 = this.f67449b;
        C20901b c20901b = this.f67450c;
        if (c20901b != null) {
            String m295d = c20901b.m295d(this.f67448a);
            int m310a = this.f67450c.m310a(this.f67448a);
            str3 = m295d;
            if (m310a != -1) {
                this.f67450c.f67454c[m310a] = str2;
                str3 = m295d;
            }
        }
        this.f67449b = str2;
        return C20901b.m297c(str3);
    }

    public final String toString() {
        return m319a();
    }
}
