package com.fasterxml.jackson.core.p049io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
/* renamed from: com.fasterxml.jackson.core.io.OutputDecorator */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/OutputDecorator.class */
public abstract class OutputDecorator implements Serializable {
    public abstract OutputStream decorate(IOContext iOContext, OutputStream outputStream) throws IOException;

    public abstract Writer decorate(IOContext iOContext, Writer writer) throws IOException;
}
