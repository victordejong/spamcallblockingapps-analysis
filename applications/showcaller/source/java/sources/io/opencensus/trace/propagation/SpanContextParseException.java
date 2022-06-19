package io.opencensus.trace.propagation;
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/propagation/SpanContextParseException.class */
public final class SpanContextParseException extends Exception {
    private static final long serialVersionUID = 0;

    public SpanContextParseException(String str) {
        super(str);
    }

    public SpanContextParseException(String str, Throwable th) {
        super(str, th);
    }
}
