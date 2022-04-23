package okhttp3.internal.connection;

import java.net.Proxy;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"selectProxies", "", "Ljava/net/Proxy;", "invoke"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RouteSelector$resetNextProxy$1.class */
public final class RouteSelector$resetNextProxy$1 extends r implements Function0<List<? extends Proxy>> {
    final /* synthetic */ Proxy $proxy;
    final /* synthetic */ HttpUrl $url;
    final /* synthetic */ RouteSelector this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteSelector$resetNextProxy$1(RouteSelector routeSelector, Proxy proxy, HttpUrl httpUrl) {
        super(0);
        this.this$0 = routeSelector;
        this.$proxy = proxy;
        this.$url = httpUrl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Proxy> invoke() {
        Address address;
        Proxy proxy = this.$proxy;
        if (proxy != null) {
            return n.a(proxy);
        }
        URI uri = this.$url.uri();
        if (uri.getHost() == null) {
            return Util.immutableListOf(Proxy.NO_PROXY);
        }
        address = this.this$0.address;
        List<Proxy> select = address.proxySelector().select(uri);
        List<Proxy> list = select;
        return list == null || list.isEmpty() ? Util.immutableListOf(Proxy.NO_PROXY) : Util.toImmutableList(select);
    }
}
