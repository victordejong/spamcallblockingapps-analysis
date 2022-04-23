package org.apache.commons.lang3.exception;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f39180a = {"getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable"};

    public static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }
}
