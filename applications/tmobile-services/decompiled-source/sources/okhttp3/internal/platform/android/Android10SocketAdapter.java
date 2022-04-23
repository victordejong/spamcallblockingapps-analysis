package okhttp3.internal.platform.android;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.platform.android.SocketAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SuppressSignatureCheck
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/platform/android/Android10SocketAdapter;", "Lokhttp3/internal/platform/android/SocketAdapter;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "hostname", "", "Lokhttp3/Protocol;", "protocols", "", "configureTlsExtensions", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "getSelectedProtocol", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "", "isSupported", "()Z", "matchesSocket", "(Ljavax/net/ssl/SSLSocket;)Z", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@SuppressLint({"NewApi"})
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/Android10SocketAdapter.class */
public final class Android10SocketAdapter implements SocketAdapter {
    public static final Companion Companion = new Companion(null);

    @SuppressSignatureCheck
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lokhttp3/internal/platform/android/Android10SocketAdapter$Companion;", "Lokhttp3/internal/platform/android/SocketAdapter;", "buildIfSupported", "()Lokhttp3/internal/platform/android/SocketAdapter;", "", "isSupported", "()Z", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/Android10SocketAdapter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final SocketAdapter buildIfSupported() {
            return isSupported() ? new Android10SocketAdapter() : null;
        }

        public final boolean isSupported() {
            return Platform.Companion.isAndroid() && Build.VERSION.SDK_INT >= 29;
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @SuppressLint({"NewApi"})
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        Intrinsics.m1830e(protocols, "protocols");
        try {
            SSLSockets.setUseSessionTickets(sslSocket, true);
            SSLParameters sslParameters = sslSocket.getSSLParameters();
            Intrinsics.m1831d(sslParameters, "sslParameters");
            Object[] array = Platform.Companion.alpnProtocolNames(protocols).toArray(new String[0]);
            if (array != null) {
                sslParameters.setApplicationProtocols((String[]) array);
                sslSocket.setSSLParameters(sslParameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r0.equals("") != false) goto L_0x0029;
     */
    @Override // okhttp3.internal.platform.android.SocketAdapter
    @android.annotation.SuppressLint({"NewApi"})
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSelectedProtocol(@org.jetbrains.annotations.NotNull javax.net.ssl.SSLSocket r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "sslSocket"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r4
            java.lang.String r0 = r0.getApplicationProtocol()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0012
            goto L_0x0029
        L_0x0012:
            r0 = r5
            int r0 = r0.hashCode()
            if (r0 == 0) goto L_0x001e
            r0 = r5
            r4 = r0
            goto L_0x002b
        L_0x001e:
            r0 = r5
            r4 = r0
            r0 = r5
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x002b
        L_0x0029:
            r0 = 0
            r4 = r0
        L_0x002b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.android.Android10SocketAdapter.getSelectedProtocol(javax.net.ssl.SSLSocket):java.lang.String");
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return Companion.isSupported();
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        return SSLSockets.isSupportedSocket(sslSocket);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocketFactory(@NotNull SSLSocketFactory sslSocketFactory) {
        Intrinsics.m1830e(sslSocketFactory, "sslSocketFactory");
        return SocketAdapter.DefaultImpls.matchesSocketFactory(this, sslSocketFactory);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) {
        Intrinsics.m1830e(sslSocketFactory, "sslSocketFactory");
        return SocketAdapter.DefaultImpls.trustManager(this, sslSocketFactory);
    }
}
