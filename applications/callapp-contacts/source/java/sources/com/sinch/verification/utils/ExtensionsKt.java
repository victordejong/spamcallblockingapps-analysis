package com.sinch.verification.utils;

import android.net.ConnectivityManager;
import android.net.Network;
import com.mopub.mobileads.VastIconXmlManager;
import com.sinch.verification.utils.api.ApiLevelUtils;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.LongCompanionObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n��\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t\u001a\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0010\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0011"}, m4298d2 = {"MAX_TIMEOUT", "", "Lkotlin/Long$Companion;", "getMAX_TIMEOUT", "(Lkotlin/jvm/internal/LongCompanionObject;)J", "changeProcessNetworkTo", "", "Landroid/net/ConnectivityManager;", "network", "Landroid/net/Network;", "prefixed", "", "prefix", "toMillisOrNull", "Ljava/util/concurrent/TimeUnit;", VastIconXmlManager.DURATION, "(Ljava/util/concurrent/TimeUnit;Ljava/lang/Long;)Ljava/lang/Long;", "utils_productionRelease"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/ExtensionsKt.class */
public final class ExtensionsKt {
    public static final void changeProcessNetworkTo(ConnectivityManager changeProcessNetworkTo, Network network) {
        C18524p.m3841c(changeProcessNetworkTo, "$this$changeProcessNetworkTo");
        if (ApiLevelUtils.INSTANCE.isApi23OrLater()) {
            changeProcessNetworkTo.bindProcessToNetwork(network);
        } else {
            ConnectivityManager.setProcessDefaultNetwork(network);
        }
    }

    public static final long getMAX_TIMEOUT(LongCompanionObject MAX_TIMEOUT) {
        C18524p.m3841c(MAX_TIMEOUT, "$this$MAX_TIMEOUT");
        return 4611686018427387903L;
    }

    public static final String prefixed(String prefixed, String prefix) {
        C18524p.m3841c(prefixed, "$this$prefixed");
        C18524p.m3841c(prefix, "prefix");
        return prefix + prefixed;
    }

    public static final Long toMillisOrNull(TimeUnit toMillisOrNull, Long l) {
        C18524p.m3841c(toMillisOrNull, "$this$toMillisOrNull");
        if (l != null) {
            return Long.valueOf(toMillisOrNull.toMillis(l.longValue()));
        }
        return null;
    }
}
