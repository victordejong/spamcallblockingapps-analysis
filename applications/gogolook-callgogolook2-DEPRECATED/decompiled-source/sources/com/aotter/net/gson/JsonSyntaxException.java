package com.aotter.net.gson;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonSyntaxException.class */
public final class JsonSyntaxException extends JsonParseException {
    public static final long serialVersionUID = 1;

    public JsonSyntaxException(String str) {
        super(str);
    }

    public JsonSyntaxException(String str, Throwable th) {
        super(str, th);
    }

    public JsonSyntaxException(Throwable th) {
        super(th);
    }
}
