package androidx.core.net;
/* loaded from: classes-dex2jar.jar:androidx/core/net/ParseException.class */
public class ParseException extends RuntimeException {
    public final String response;

    ParseException(String str) {
        super(str);
        this.response = str;
    }
}
