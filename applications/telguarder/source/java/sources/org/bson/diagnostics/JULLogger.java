package org.bson.diagnostics;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:org/bson/diagnostics/JULLogger.class */
class JULLogger implements Logger {
    private final Logger delegate;

    public JULLogger(String str) {
        this.delegate = Logger.getLogger(str);
    }

    private boolean isEnabled(Level level) {
        return this.delegate.isLoggable(level);
    }

    private void log(Level level, String str) {
        this.delegate.log(level, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void debug(String str) {
        log(Level.FINE, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void debug(String str, Throwable th) {
        log(Level.FINE, str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public void error(String str) {
        log(Level.SEVERE, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void error(String str, Throwable th) {
        log(Level.SEVERE, str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public String getName() {
        return this.delegate.getName();
    }

    @Override // org.bson.diagnostics.Logger
    public void info(String str) {
        log(Level.INFO, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void info(String str, Throwable th) {
        log(Level.INFO, str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isDebugEnabled() {
        return isEnabled(Level.FINE);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isErrorEnabled() {
        return this.delegate.isLoggable(Level.SEVERE);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isInfoEnabled() {
        return this.delegate.isLoggable(Level.INFO);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isTraceEnabled() {
        return isEnabled(Level.FINER);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isWarnEnabled() {
        return this.delegate.isLoggable(Level.WARNING);
    }

    public void log(Level level, String str, Throwable th) {
        this.delegate.log(level, str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public void trace(String str) {
        log(Level.FINER, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void trace(String str, Throwable th) {
        log(Level.FINER, str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public void warn(String str) {
        log(Level.WARNING, str);
    }

    @Override // org.bson.diagnostics.Logger
    public void warn(String str, Throwable th) {
        log(Level.WARNING, str, th);
    }
}
