package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018�� \f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, m400d2 = {"Lokhttp3/Protocol;", "", "protocol", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "HTTP_1_0", "HTTP_1_1", "SPDY_3", "HTTP_2", "H2_PRIOR_KNOWLEDGE", "QUIC", "Companion", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/Protocol.class */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    
    public static final Companion Companion = new Companion(null);
    private final String protocol;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m400d2 = {"Lokhttp3/Protocol$Companion;", "", "()V", "get", "Lokhttp3/Protocol;", "protocol", "", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okhttp3/Protocol$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final Protocol get(String protocol) throws IOException {
            Protocol protocol2;
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            if (Intrinsics.areEqual(protocol, Protocol.HTTP_1_0.protocol)) {
                protocol2 = Protocol.HTTP_1_0;
            } else if (Intrinsics.areEqual(protocol, Protocol.HTTP_1_1.protocol)) {
                protocol2 = Protocol.HTTP_1_1;
            } else if (Intrinsics.areEqual(protocol, Protocol.H2_PRIOR_KNOWLEDGE.protocol)) {
                protocol2 = Protocol.H2_PRIOR_KNOWLEDGE;
            } else if (Intrinsics.areEqual(protocol, Protocol.HTTP_2.protocol)) {
                protocol2 = Protocol.HTTP_2;
            } else if (Intrinsics.areEqual(protocol, Protocol.SPDY_3.protocol)) {
                protocol2 = Protocol.SPDY_3;
            } else if (!Intrinsics.areEqual(protocol, Protocol.QUIC.protocol)) {
                throw new IOException("Unexpected protocol: " + protocol);
            } else {
                protocol2 = Protocol.QUIC;
            }
            return protocol2;
        }
    }

    Protocol(String str) {
        this.protocol = str;
    }

    @JvmStatic
    public static final Protocol get(String str) throws IOException {
        return Companion.get(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
