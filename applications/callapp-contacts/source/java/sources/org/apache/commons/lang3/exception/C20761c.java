package org.apache.commons.lang3.exception;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
/* renamed from: org.apache.commons.lang3.exception.c */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/c.class */
public final class C20761c {

    /* renamed from: a */
    private static final String[] f67258a = {"getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable"};

    /* renamed from: a */
    public static String m519a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }
}
