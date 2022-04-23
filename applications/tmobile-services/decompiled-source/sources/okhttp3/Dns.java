package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018�� \b2\u00020\u0001:\u0001\bJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lokhttp3/Dns;", "Lkotlin/Any;", "", "hostname", "", "Ljava/net/InetAddress;", "lookup", "(Ljava/lang/String;)Ljava/util/List;", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Dns.class */
public interface Dns {
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Dns SYSTEM = new Companion.DnsSystem();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u0007"}, d2 = {"Lokhttp3/Dns$Companion;", "Lokhttp3/Dns;", "SYSTEM", "Lokhttp3/Dns;", "<init>", "()V", "DnsSystem", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Dns$Companion.class */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/Dns$Companion$DnsSystem;", "Lokhttp3/Dns;", "", "hostname", "", "Ljava/net/InetAddress;", "lookup", "(Ljava/lang/String;)Ljava/util/List;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/Dns$Companion$DnsSystem.class */
        private static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            @NotNull
            public List<InetAddress> lookup(@NotNull String hostname) {
                List<InetAddress> T;
                Intrinsics.m1830e(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    Intrinsics.m1831d(allByName, "InetAddress.getAllByName(hostname)");
                    T = ArraysKt___ArraysKt.m2241T(allByName);
                    return T;
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + hostname);
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @NotNull
    List<InetAddress> lookup(@NotNull String str) throws UnknownHostException;
}
