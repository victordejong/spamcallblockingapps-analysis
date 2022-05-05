package com.taiwanmobile.p055pt.adp.view.p056a;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.taiwanmobile.pt.adp.view.a.a */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a.class */
public class C4117a {

    /* renamed from: a */
    public static volatile C4117a f9808a;

    /* renamed from: b */
    public ConcurrentHashMap<String, Object> f9809b = new ConcurrentHashMap<>();

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$a.class */
    public class C4118a extends AbstractC4119b {
        public C4118a(String str) {
            super(str);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$b.class */
    public abstract class AbstractC4119b {

        /* renamed from: b */
        public HashMap<String, Object> f9811b;

        public AbstractC4119b(String str) {
            this.f9811b = null;
            this.f9811b = new HashMap<>();
            this.f9811b.put("adunitId", str);
        }

        /* renamed from: a */
        public Object m29659a(String str) {
            return this.f9811b.get(str);
        }

        /* renamed from: a */
        public void m29660a() {
            this.f9811b.remove("lam");
        }

        /* renamed from: a */
        public void m29658a(String str, Object obj) {
            this.f9811b.put(str, obj);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$c.class */
    public class C4120c extends AbstractC4119b {
        public C4120c(String str) {
            super(str);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$d.class */
    public class C4121d extends AbstractC4119b {
        public C4121d(String str) {
            super(str);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$e */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$e.class */
    public class C4122e extends AbstractC4119b {

        /* renamed from: a */
        public final String f9815a = C4143f.m29551a() + "rmadp/g/ads";

        public C4122e(String str) {
            super(str);
            m29658a("showAdUrl", this.f9815a);
            m29658a("kbnpm", false);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a$f */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a$f.class */
    public class C4123f extends AbstractC4119b {
        public C4123f(String str) {
            super(str);
        }
    }

    /* renamed from: b */
    public static C4117a m29671b() {
        if (f9808a == null) {
            synchronized (new Object()) {
                if (f9808a == null) {
                    f9808a = new C4117a();
                }
            }
        }
        return f9808a;
    }

    /* renamed from: a */
    public Object m29673a(String str) {
        return this.f9809b.get(str);
    }

    /* renamed from: a */
    public void m29672a(String str, Object obj) {
        this.f9809b.put(str, obj);
    }

    /* renamed from: a */
    public boolean m29674a() {
        m29671b().m29672a("adsing", Boolean.FALSE);
        Object a = m29673a("bcr");
        if (a != null) {
            return ((Boolean) a).booleanValue();
        }
        return false;
    }

    /* renamed from: b */
    public boolean m29670b(String str) {
        return this.f9809b.containsKey(str);
    }

    /* renamed from: c */
    public void m29669c(String str) {
        this.f9809b.remove(str);
    }
}
