package com.sinch.metadata.collector;

import android.content.Context;
import android.net.ConnectivityManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Landroid/net/ConnectivityManager;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicNetworkInfoCollector$connectivityManager$2.class */
public final class BasicNetworkInfoCollector$connectivityManager$2 extends AbstractC18526r implements Function0<ConnectivityManager> {
    final /* synthetic */ BasicNetworkInfoCollector this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicNetworkInfoCollector$connectivityManager$2(BasicNetworkInfoCollector basicNetworkInfoCollector) {
        super(0);
        this.this$0 = basicNetworkInfoCollector;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ConnectivityManager invoke() {
        Context context;
        context = this.this$0.context;
        Object systemService = context.getSystemService("connectivity");
        if (systemService != null) {
            return (ConnectivityManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
    }
}
