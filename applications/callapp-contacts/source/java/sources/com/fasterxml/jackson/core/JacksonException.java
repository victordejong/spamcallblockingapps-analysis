package com.fasterxml.jackson.core;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JacksonException.class */
public abstract class JacksonException extends IOException {
    private static final long serialVersionUID = 123;

    public JacksonException(String str) {
        super(str);
    }

    public JacksonException(String str, Throwable th) {
        super(str, th);
    }

    protected JacksonException(Throwable th) {
        super(th);
    }

    public abstract JsonLocation getLocation();

    public abstract String getOriginalMessage();

    public abstract Object getProcessor();
}
