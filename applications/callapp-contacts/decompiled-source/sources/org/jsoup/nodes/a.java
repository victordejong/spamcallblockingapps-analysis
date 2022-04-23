package org.jsoup.nodes;

import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.jsoup.SerializationException;
import org.jsoup.a.c;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/a.class */
public final class a implements Cloneable, Map.Entry<String, String> {

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f39255d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: a  reason: collision with root package name */
    public String f39256a;

    /* renamed from: b  reason: collision with root package name */
    String f39257b;

    /* renamed from: c  reason: collision with root package name */
    b f39258c;

    public a(String str, String str2) {
        this(str, str2, null);
    }

    public a(String str, String str2, b bVar) {
        c.a((Object) str);
        String trim = str.trim();
        c.a(trim);
        this.f39256a = trim;
        this.f39257b = str2;
        this.f39258c = bVar;
    }

    private String a() {
        StringBuilder a2 = org.jsoup.b.c.a();
        try {
            a(a2, new f("").f39265a);
            return org.jsoup.b.c.a(a2);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    private static void a(String str, String str2, Appendable appendable, f.a aVar) throws IOException {
        appendable.append(str);
        if (!a(str, str2, aVar)) {
            appendable.append("=\"");
            i.a(appendable, b.c(str2), aVar, true, false, false);
            appendable.append('\"');
        }
    }

    private static boolean a(String str) {
        return Arrays.binarySearch(f39255d, str) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(String str, String str2, f.a aVar) {
        if (aVar.h != f.a.EnumC0751a.f39273a) {
            return false;
        }
        if (str2 != null) {
            return ("".equals(str2) || str2.equalsIgnoreCase(str)) && a(str);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Appendable appendable, f.a aVar) throws IOException {
        a(this.f39256a, this.f39257b, appendable, aVar);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f39256a;
        if (str != null) {
            if (!str.equals(aVar.f39256a)) {
                return false;
            }
        } else if (aVar.f39256a != null) {
            return false;
        }
        String str2 = this.f39257b;
        String str3 = aVar.f39257b;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ String getKey() {
        return this.f39256a;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String getValue() {
        return b.c(this.f39257b);
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        String str = this.f39256a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f39257b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String setValue(String str) {
        String str2 = str;
        String str3 = this.f39257b;
        b bVar = this.f39258c;
        if (bVar != null) {
            String d2 = bVar.d(this.f39256a);
            int a2 = this.f39258c.a(this.f39256a);
            str3 = d2;
            if (a2 != -1) {
                this.f39258c.f39262c[a2] = str2;
                str3 = d2;
            }
        }
        this.f39257b = str2;
        return b.c(str3);
    }

    public final String toString() {
        return a();
    }
}
