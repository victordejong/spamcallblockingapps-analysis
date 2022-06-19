package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonParseException.class */
public class JsonParseException extends RuntimeException {
    private static final long serialVersionUID = -6722022620020198727L;

    public JsonParseException() {
    }

    public JsonParseException(String str) {
        super(str);
    }

    public JsonParseException(String str, Object... objArr) {
        super(String.format(str, objArr));
    }

    public JsonParseException(Throwable th) {
        super(th);
    }
}
