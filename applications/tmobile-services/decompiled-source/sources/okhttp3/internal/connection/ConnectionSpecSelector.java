package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionSpec;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lokhttp3/internal/connection/ConnectionSpecSelector;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "Lokhttp3/ConnectionSpec;", "configureSecureSocket", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;", "Ljava/io/IOException;", "e", "", "connectionFailed", "(Ljava/io/IOException;)Z", "socket", "isFallbackPossible", "(Ljavax/net/ssl/SSLSocket;)Z", "", "connectionSpecs", "Ljava/util/List;", "isFallback", "Z", "", "nextModeIndex", "I", "<init>", "(Ljava/util/List;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/ConnectionSpecSelector.class */
public final class ConnectionSpecSelector {
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex;

    public ConnectionSpecSelector(@NotNull List<ConnectionSpec> connectionSpecs) {
        Intrinsics.m1830e(connectionSpecs, "connectionSpecs");
        this.connectionSpecs = connectionSpecs;
    }

    private final boolean isFallbackPossible(SSLSocket sSLSocket) {
        int size = this.connectionSpecs.size();
        for (int i = this.nextModeIndex; i < size; i++) {
            if (this.connectionSpecs.get(i).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final ConnectionSpec configureSecureSocket(@NotNull SSLSocket sslSocket) throws IOException {
        ConnectionSpec connectionSpec;
        Intrinsics.m1830e(sslSocket, "sslSocket");
        int i = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        while (true) {
            if (i >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = this.connectionSpecs.get(i);
            if (connectionSpec.isCompatible(sslSocket)) {
                this.nextModeIndex = i + 1;
                break;
            }
            i++;
        }
        if (connectionSpec != null) {
            this.isFallbackPossible = isFallbackPossible(sslSocket);
            connectionSpec.apply$okhttp(sslSocket, this.isFallback);
            return connectionSpec;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isFallback);
        sb.append(',');
        sb.append(" modes=");
        sb.append(this.connectionSpecs);
        sb.append(',');
        sb.append(" supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.m1832c(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        Intrinsics.m1831d(arrays, "java.util.Arrays.toString(this)");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }

    public final boolean connectionFailed(@NotNull IOException e) {
        Intrinsics.m1830e(e, "e");
        boolean z = true;
        this.isFallback = true;
        if (!this.isFallbackPossible || (e instanceof ProtocolException) || (e instanceof InterruptedIOException) || (((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException) || !(e instanceof SSLException))) {
            z = false;
        }
        return z;
    }
}
