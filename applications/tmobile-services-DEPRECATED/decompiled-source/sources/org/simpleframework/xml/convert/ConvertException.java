package org.simpleframework.xml.convert;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/ConvertException.class */
public class ConvertException extends Exception {
    public ConvertException(String str, Object... objArr) {
        super(String.format(str, objArr));
    }
}
