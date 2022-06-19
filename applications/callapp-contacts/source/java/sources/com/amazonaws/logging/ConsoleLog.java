package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/ConsoleLog.class */
public final class ConsoleLog implements Log {

    /* renamed from: a */
    String f12107a;

    /* renamed from: b */
    LogFactory.Level f12108b;

    public /* synthetic */ ConsoleLog() {
    }

    public ConsoleLog(String str) {
        this.f12108b = null;
        this.f12107a = str;
    }

    /* renamed from: a */
    private void m38601a(LogFactory.Level level, Object obj, Throwable th) {
        System.out.printf("%s/%s: %s\n", this.f12107a, level.name(), obj);
        if (th != null) {
            System.out.println(th.toString());
        }
    }

    /* renamed from: e */
    private boolean m38600e() {
        return m38599f() == null || m38599f().getValue() <= LogFactory.Level.WARN.getValue();
    }

    /* renamed from: f */
    private LogFactory.Level m38599f() {
        LogFactory.Level level = this.f12108b;
        return level != null ? level : LogFactory.m38585a();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final void mo38596a(Object obj) {
        if (mo38588d()) {
            m38601a(LogFactory.Level.TRACE, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final void mo38595a(Object obj, Throwable th) {
        if (mo38597a()) {
            m38601a(LogFactory.Level.DEBUG, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final boolean mo38597a() {
        return m38599f() == null || m38599f().getValue() <= LogFactory.Level.DEBUG.getValue();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final void mo38593b(Object obj) {
        if (mo38597a()) {
            m38601a(LogFactory.Level.DEBUG, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final void mo38592b(Object obj, Throwable th) {
        if (m38600e()) {
            m38601a(LogFactory.Level.WARN, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final boolean mo38594b() {
        return m38599f() == null || m38599f().getValue() <= LogFactory.Level.ERROR.getValue();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final void mo38590c(Object obj) {
        if (mo38591c()) {
            m38601a(LogFactory.Level.INFO, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final void mo38589c(Object obj, Throwable th) {
        if (mo38594b()) {
            m38601a(LogFactory.Level.ERROR, obj, th);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final boolean mo38591c() {
        return m38599f() == null || m38599f().getValue() <= LogFactory.Level.INFO.getValue();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: d */
    public final void mo38587d(Object obj) {
        if (m38600e()) {
            m38601a(LogFactory.Level.WARN, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: d */
    public final boolean mo38588d() {
        return m38599f() == null || m38599f().getValue() <= LogFactory.Level.TRACE.getValue();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: e */
    public final void mo38586e(Object obj) {
        if (mo38594b()) {
            m38601a(LogFactory.Level.ERROR, obj, null);
        }
    }
}
