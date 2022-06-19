package p330f.p331a.p332a;

import java.io.FileNotFoundException;
import java.io.IOException;
import p330f.p331a.p332a.p334f.C9488b;
/* renamed from: f.a.a.a */
/* loaded from: classes2-dex2jar.jar:f/a/a/a.class */
class C9477a {

    /* renamed from: a */
    private C9488b f40349a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f.a.a.a$b */
    /* loaded from: classes2-dex2jar.jar:f/a/a/a$b.class */
    public static class C9479b {

        /* renamed from: a */
        static final C9477a f40350a = new C9477a();
    }

    private C9477a() {
        this.f40349a = null;
        m505e();
    }

    /* renamed from: a */
    private String m509a(char c) {
        C9488b m485a = m506d().m485a(Integer.toHexString(c).toUpperCase());
        String str = null;
        String m483c = m485a != null ? m485a.m483c() : null;
        if (m504f(m483c)) {
            str = m483c;
        }
        return str;
    }

    /* renamed from: c */
    public static C9477a m507c() {
        return C9479b.f40350a;
    }

    /* renamed from: e */
    private void m505e() {
        try {
            m502h(new C9488b());
            m506d().m482d(C9482d.m496a("/pinyindb/unicode_to_hanyu_pinyin.txt"));
            m506d().m481e(C9482d.m496a("/pinyindb/multi_pinyin.txt"));
            m506d().m480f();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: f */
    private boolean m504f(String str) {
        return str != null && !str.equals("(none0)") && str.startsWith("(") && str.endsWith(")");
    }

    /* renamed from: h */
    private void m502h(C9488b c9488b) {
        this.f40349a = c9488b;
    }

    /* renamed from: b */
    public String[] m508b(char c) {
        return m503g(m509a(c));
    }

    /* renamed from: d */
    C9488b m506d() {
        return this.f40349a;
    }

    /* renamed from: g */
    String[] m503g(String str) {
        if (str != null) {
            return str.substring(str.indexOf("(") + 1, str.lastIndexOf(")")).split(",");
        }
        return null;
    }
}
