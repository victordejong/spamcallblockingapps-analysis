package okhttp3;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m4298d2 = {"Lokhttp3/JavaNetAuthenticator;", "Lokhttp3/Authenticator;", "()V", "authenticate", "Lokhttp3/Request;", "route", "Lokhttp3/Route;", Payload.RESPONSE, "Lokhttp3/Response;", "okhttp-urlconnection"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/JavaNetAuthenticator.class */
public final class JavaNetAuthenticator implements Authenticator {
    @Override // okhttp3.Authenticator
    public final Request authenticate(Route route, Response response) throws IOException {
        C18524p.m3840d(response, "response");
        return Authenticator.JAVA_NET_AUTHENTICATOR.authenticate(route, response);
    }
}
