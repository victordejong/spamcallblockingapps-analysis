package p267v8;

import java.util.regex.Pattern;
import p267v8.C4655b;
/* renamed from: v8.b */
/* loaded from: classes2-dex2jar.jar:v8/b.class */
public class C4655b<QueryClass extends C4655b> implements AbstractC4654a {

    /* renamed from: b */
    public static final Pattern f14349b = Pattern.compile("`.*`");

    /* renamed from: a */
    public StringBuilder f14350a;

    public C4655b() {
        this.f14350a = new StringBuilder();
    }

    public C4655b(Object obj) {
        StringBuilder sb = new StringBuilder();
        this.f14350a = sb;
        sb.append(obj);
    }

    /* renamed from: e */
    public static String m676e(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    /* renamed from: g */
    public static String m675g(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (!f14349b.matcher(str).find()) {
                str2 = '`' + str.replace(".", "`.`") + '`';
            }
        }
        return str2;
    }

    /* renamed from: h */
    public static String m674h(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (f14349b.matcher(str).find()) {
                str2 = str.replace("`", "");
            }
        }
        return str2;
    }

    /* renamed from: a */
    public QueryClass m679a(String str, String str2) {
        if (str2 != null && str2.length() > 0) {
            this.f14350a.append((Object) str);
            m678c();
            this.f14350a.append((Object) str2);
            m678c();
        }
        return this;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        return this.f14350a.toString();
    }

    /* renamed from: c */
    public QueryClass m678c() {
        this.f14350a.append((Object) " ");
        return this;
    }

    /* renamed from: d */
    public QueryClass m677d(Object obj) {
        m678c();
        this.f14350a.append(obj);
        m678c();
        return this;
    }

    public String toString() {
        return mo238b();
    }
}
