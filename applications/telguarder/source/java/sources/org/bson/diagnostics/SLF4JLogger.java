package org.bson.diagnostics;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes-dex2jar.jar:org/bson/diagnostics/SLF4JLogger.class */
class SLF4JLogger implements Logger {
    private final Logger delegate;

    public SLF4JLogger(String str) {
        this.delegate = LoggerFactory.getLogger(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void debug(String str) {
        this.delegate.debug(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void debug(String str, Throwable th) {
        this.delegate.debug(str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public void error(String str) {
        this.delegate.error(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void error(String str, Throwable th) {
        this.delegate.error(str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public String getName() {
        return this.delegate.getName();
    }

    @Override // org.bson.diagnostics.Logger
    public void info(String str) {
        this.delegate.info(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void info(String str, Throwable th) {
        this.delegate.info(str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isDebugEnabled() {
        return this.delegate.isDebugEnabled();
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isErrorEnabled() {
        return this.delegate.isErrorEnabled();
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isInfoEnabled() {
        return this.delegate.isInfoEnabled();
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isTraceEnabled() {
        return this.delegate.isTraceEnabled();
    }

    @Override // org.bson.diagnostics.Logger
    public boolean isWarnEnabled() {
        return this.delegate.isWarnEnabled();
    }

    @Override // org.bson.diagnostics.Logger
    public void trace(String str) {
        this.delegate.trace(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void trace(String str, Throwable th) {
        this.delegate.trace(str, th);
    }

    @Override // org.bson.diagnostics.Logger
    public void warn(String str) {
        this.delegate.warn(str);
    }

    @Override // org.bson.diagnostics.Logger
    public void warn(String str, Throwable th) {
        this.delegate.warn(str, th);
    }
}
