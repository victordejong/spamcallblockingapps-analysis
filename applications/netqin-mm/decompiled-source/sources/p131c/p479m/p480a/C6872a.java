package p131c.p479m.p480a;

import com.android.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import okio.ByteString;
/* renamed from: c.m.a.a */
/* loaded from: classes2-dex2jar.jar:c/m/a/a.class */
public final class C6872a {
    /* renamed from: a */
    public static String m19504a(String str, String str2) {
        try {
            String base64 = ByteString.m3of((str + ":" + str2).getBytes(HttpHeaderParser.DEFAULT_CONTENT_CHARSET)).base64();
            return "Basic " + base64;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }
}
