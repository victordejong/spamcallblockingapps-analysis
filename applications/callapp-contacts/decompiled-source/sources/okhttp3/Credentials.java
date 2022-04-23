package okhttp3;

import c.i;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lokhttp3/Credentials;", "", "()V", "basic", "", "username", "password", "charset", "Ljava/nio/charset/Charset;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/Credentials.class */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String str, String str2) {
        return basic$default(str, str2, null, 4, null);
    }

    public static final String basic(String username, String password, Charset charset) {
        p.d(username, "username");
        p.d(password, "password");
        p.d(charset, "charset");
        String encode = username + ':' + password;
        i.a aVar = i.f6297d;
        p.d(encode, "$this$encode");
        p.d(charset, "charset");
        byte[] bytes = encode.getBytes(charset);
        p.b(bytes, "(this as java.lang.String).getBytes(charset)");
        return "Basic ".concat(String.valueOf(new i(bytes).c()));
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset ISO_8859_1, int i, Object obj) {
        if ((i & 4) != 0) {
            ISO_8859_1 = StandardCharsets.ISO_8859_1;
            p.b(ISO_8859_1, "ISO_8859_1");
        }
        return basic(str, str2, ISO_8859_1);
    }
}
