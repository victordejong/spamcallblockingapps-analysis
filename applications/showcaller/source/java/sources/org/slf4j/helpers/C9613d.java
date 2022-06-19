package org.slf4j.helpers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;
import org.slf4j.AbstractC9605b;
import org.slf4j.event.AbstractC9608b;
import org.slf4j.event.C9607a;
import org.slf4j.event.C9609c;
/* renamed from: org.slf4j.helpers.d */
/* loaded from: classes2-dex2jar.jar:org/slf4j/helpers/d.class */
public class C9613d implements AbstractC9605b {

    /* renamed from: d */
    private final String f40517d;

    /* renamed from: e */
    private volatile AbstractC9605b f40518e;

    /* renamed from: f */
    private Boolean f40519f;

    /* renamed from: g */
    private Method f40520g;

    /* renamed from: h */
    private C9607a f40521h;

    /* renamed from: i */
    private Queue<C9609c> f40522i;

    /* renamed from: j */
    private final boolean f40523j;

    public C9613d(String str, Queue<C9609c> queue, boolean z) {
        this.f40517d = str;
        this.f40522i = queue;
        this.f40523j = z;
    }

    /* renamed from: b */
    private AbstractC9605b m311b() {
        if (this.f40521h == null) {
            this.f40521h = new C9607a(this, this.f40522i);
        }
        return this.f40521h;
    }

    /* renamed from: a */
    AbstractC9605b m312a() {
        return this.f40518e != null ? this.f40518e : this.f40523j ? NOPLogger.f40512d : m311b();
    }

    /* renamed from: c */
    public String m310c() {
        return this.f40517d;
    }

    /* renamed from: d */
    public boolean m309d() {
        Boolean bool = this.f40519f;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f40520g = this.f40518e.getClass().getMethod("log", AbstractC9608b.class);
            this.f40519f = Boolean.TRUE;
        } catch (NoSuchMethodException e) {
            this.f40519f = Boolean.FALSE;
        }
        return this.f40519f.booleanValue();
    }

    @Override // org.slf4j.AbstractC9605b
    public void debug(String str) {
        m312a().debug(str);
    }

    /* renamed from: e */
    public boolean m308e() {
        return this.f40518e instanceof NOPLogger;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C9613d.class == obj.getClass() && this.f40517d.equals(((C9613d) obj).f40517d);
    }

    @Override // org.slf4j.AbstractC9605b
    public void error(String str) {
        m312a().error(str);
    }

    @Override // org.slf4j.AbstractC9605b
    public void error(String str, Throwable th) {
        m312a().error(str, th);
    }

    /* renamed from: f */
    public boolean m307f() {
        return this.f40518e == null;
    }

    /* renamed from: g */
    public void m306g(AbstractC9608b abstractC9608b) {
        if (m309d()) {
            try {
                this.f40520g.invoke(this.f40518e, abstractC9608b);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            }
        }
    }

    /* renamed from: h */
    public void m305h(AbstractC9605b abstractC9605b) {
        this.f40518e = abstractC9605b;
    }

    public int hashCode() {
        return this.f40517d.hashCode();
    }

    @Override // org.slf4j.AbstractC9605b
    public void info(String str) {
        m312a().info(str);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str) {
        m312a().warn(str);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str, Object obj) {
        m312a().warn(str, obj);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str, Object obj, Object obj2) {
        m312a().warn(str, obj, obj2);
    }
}
