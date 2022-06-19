package org.slf4j.event;

import java.util.Queue;
import org.slf4j.AbstractC9605b;
import org.slf4j.Marker;
import org.slf4j.helpers.C9613d;
/* renamed from: org.slf4j.event.a */
/* loaded from: classes2-dex2jar.jar:org/slf4j/event/a.class */
public class C9607a implements AbstractC9605b {

    /* renamed from: d */
    String f40501d;

    /* renamed from: e */
    C9613d f40502e;

    /* renamed from: f */
    Queue<C9609c> f40503f;

    public C9607a(C9613d c9613d, Queue<C9609c> queue) {
        this.f40502e = c9613d;
        this.f40501d = c9613d.m310c();
        this.f40503f = queue;
    }

    /* renamed from: a */
    private void m342a(Level level, String str, Object[] objArr, Throwable th) {
        m341b(level, null, str, objArr, th);
    }

    /* renamed from: b */
    private void m341b(Level level, Marker marker, String str, Object[] objArr, Throwable th) {
        C9609c c9609c = new C9609c();
        c9609c.m332i(System.currentTimeMillis());
        c9609c.m338c(level);
        c9609c.m337d(this.f40502e);
        c9609c.m336e(this.f40501d);
        c9609c.m335f(str);
        c9609c.m339b(objArr);
        c9609c.m333h(th);
        c9609c.m334g(Thread.currentThread().getName());
        this.f40503f.add(c9609c);
    }

    @Override // org.slf4j.AbstractC9605b
    public void debug(String str) {
        m342a(Level.TRACE, str, null, null);
    }

    @Override // org.slf4j.AbstractC9605b
    public void error(String str) {
        m342a(Level.ERROR, str, null, null);
    }

    @Override // org.slf4j.AbstractC9605b
    public void error(String str, Throwable th) {
        m342a(Level.ERROR, str, null, th);
    }

    @Override // org.slf4j.AbstractC9605b
    public void info(String str) {
        m342a(Level.INFO, str, null, null);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str) {
        m342a(Level.WARN, str, null, null);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str, Object obj) {
        m342a(Level.WARN, str, new Object[]{obj}, null);
    }

    @Override // org.slf4j.AbstractC9605b
    public void warn(String str, Object obj, Object obj2) {
        m342a(Level.WARN, str, new Object[]{obj, obj2}, null);
    }
}
