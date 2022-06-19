package org.slf4j.impl;

import android.util.Log;
import org.slf4j.helpers.C9610a;
import org.slf4j.helpers.C9611b;
import org.slf4j.helpers.MarkerIgnoringBase;
/* loaded from: classes2-dex2jar.jar:org/slf4j/impl/AndroidLoggerAdapter.class */
class AndroidLoggerAdapter extends MarkerIgnoringBase {
    private static final long serialVersionUID = -1227274521521287937L;

    public AndroidLoggerAdapter(String str) {
        this.name = str;
    }

    /* renamed from: a */
    private void m296a(int i, String str, Object... objArr) {
        if (m295b(i)) {
            C9610a m329a = C9611b.m329a(str, objArr);
            m293d(i, m329a.m331a(), m329a.m330b());
        }
    }

    /* renamed from: b */
    private boolean m295b(int i) {
        return Log.isLoggable(this.name, i);
    }

    /* renamed from: c */
    private void m294c(int i, String str, Throwable th) {
        if (m295b(i)) {
            m293d(i, str, th);
        }
    }

    /* renamed from: d */
    private void m293d(int i, String str, Throwable th) {
        String str2 = str;
        if (th != null) {
            str2 = str + '\n' + Log.getStackTraceString(th);
        }
        Log.println(i, this.name, str2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void debug(String str) {
        m294c(3, str, null);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void debug(String str, Object obj) {
        m296a(3, str, obj);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void debug(String str, Object obj, Object obj2) {
        m296a(3, str, obj, obj2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void debug(String str, Throwable th) {
        m294c(2, str, th);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void debug(String str, Object... objArr) {
        m296a(3, str, objArr);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void error(String str) {
        m294c(6, str, null);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void error(String str, Object obj) {
        m296a(6, str, obj);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void error(String str, Object obj, Object obj2) {
        m296a(6, str, obj, obj2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void error(String str, Throwable th) {
        m294c(6, str, th);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void error(String str, Object... objArr) {
        m296a(6, str, objArr);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void info(String str) {
        m294c(4, str, null);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void info(String str, Object obj) {
        m296a(4, str, obj);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void info(String str, Object obj, Object obj2) {
        m296a(4, str, obj, obj2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void info(String str, Throwable th) {
        m294c(4, str, th);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void info(String str, Object... objArr) {
        m296a(4, str, objArr);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public boolean isDebugEnabled() {
        return m295b(3);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public boolean isErrorEnabled() {
        return m295b(6);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public boolean isInfoEnabled() {
        return m295b(4);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public boolean isTraceEnabled() {
        return m295b(2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public boolean isWarnEnabled() {
        return m295b(5);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void trace(String str) {
        m294c(2, str, null);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void trace(String str, Object obj) {
        m296a(2, str, obj);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void trace(String str, Object obj, Object obj2) {
        m296a(2, str, obj, obj2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void trace(String str, Throwable th) {
        m294c(2, str, th);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void trace(String str, Object... objArr) {
        m296a(2, str, objArr);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void warn(String str) {
        m294c(5, str, null);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void warn(String str, Object obj) {
        m296a(5, str, obj);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.AbstractC9605b
    public void warn(String str, Object obj, Object obj2) {
        m296a(5, str, obj, obj2);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void warn(String str, Throwable th) {
        m294c(5, str, th);
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase
    public void warn(String str, Object... objArr) {
        m296a(5, str, objArr);
    }
}
