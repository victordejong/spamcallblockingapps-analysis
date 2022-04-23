package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.authenticator.JavaNetAuthenticator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018�� \t2\u00020\u0001:\u0001\tJ#\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lokhttp3/Authenticator;", "Lkotlin/Any;", "Lokhttp3/Route;", "route", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", "authenticate", "(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Authenticator.class */
public interface Authenticator {
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Authenticator NONE = new Companion.AuthenticatorNone();
    @JvmField
    @NotNull
    public static final Authenticator JAVA_NET_AUTHENTICATOR = new JavaNetAuthenticator(null, 1, null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��:\u0001\u0007B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0001R\u001c\u0010\u0004\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\b"}, d2 = {"Lokhttp3/Authenticator$Companion;", "Lokhttp3/Authenticator;", "JAVA_NET_AUTHENTICATOR", "Lokhttp3/Authenticator;", "NONE", "<init>", "()V", "AuthenticatorNone", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Authenticator$Companion.class */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lokhttp3/Authenticator$Companion$AuthenticatorNone;", "Lokhttp3/Authenticator;", "Lokhttp3/Route;", "route", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", "authenticate", "(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/Authenticator$Companion$AuthenticatorNone.class */
        private static final class AuthenticatorNone implements Authenticator {
            @Override // okhttp3.Authenticator
            @Nullable
            public Request authenticate(@Nullable Route route, @NotNull Response response) {
                Intrinsics.m1830e(response, "response");
                return null;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    Request authenticate(@Nullable Route route, @NotNull Response response) throws IOException;
}
