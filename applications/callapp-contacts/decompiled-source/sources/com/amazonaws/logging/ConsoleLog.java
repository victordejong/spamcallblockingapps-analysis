package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/ConsoleLog.class */
public final class ConsoleLog implements Log {

    /* renamed from: a  reason: collision with root package name */
    String f6653a;

    /* renamed from: b  reason: collision with root package name */
    LogFactory.Level f6654b;

    public /* synthetic */ ConsoleLog() {
    }

    public ConsoleLog(String str) {
        this.f6654b = null;
        this.f6653a = str;
    }

    private void a(LogFactory.Level level, Object obj, Throwable th) {
        System.out.printf("%s/%s: %s\n", this.f6653a, level.name(), obj);
        if (th != null) {
            System.out.println(th.toString());
        }
    }

    private boolean e() {
        return f() == null || f().getValue() <= LogFactory.Level.WARN.getValue();
    }

    private LogFactory.Level f() {
        LogFactory.Level level = this.f6654b;
        return level != null ? level : LogFactory.a();
    }

    @Override // com.amazonaws.logging.Log
    public final void a(Object obj) {
        if (d()) {
            a(LogFactory.Level.TRACE, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void a(Object obj, Throwable th) {
        if (a()) {
            a(LogFactory.Level.DEBUG, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean a() {
        return f() == null || f().getValue() <= LogFactory.Level.DEBUG.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public final void b(Object obj) {
        if (a()) {
            a(LogFactory.Level.DEBUG, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void b(Object obj, Throwable th) {
        if (e()) {
            a(LogFactory.Level.WARN, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean b() {
        return f() == null || f().getValue() <= LogFactory.Level.ERROR.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public final void c(Object obj) {
        if (c()) {
            a(LogFactory.Level.INFO, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void c(Object obj, Throwable th) {
        if (b()) {
            a(LogFactory.Level.ERROR, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean c() {
        return f() == null || f().getValue() <= LogFactory.Level.INFO.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public final void d(Object obj) {
        if (e()) {
            a(LogFactory.Level.WARN, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean d() {
        return f() == null || f().getValue() <= LogFactory.Level.TRACE.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public final void e(Object obj) {
        if (b()) {
            a(LogFactory.Level.ERROR, obj, null);
        }
    }
}
