package com.tmobile.services.nameid.p007ui.features;

import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ProxyDigits$subtitle$2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ProxyDigits$subtitle$2.class */
final class FeatureDisplayFragment$ProxyDigits$subtitle$2 extends Lambda implements Function0<String> {

    /* renamed from: f */
    final /* synthetic */ FeatureDisplayFragment.ProxyDigits f14116f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureDisplayFragment$ProxyDigits$subtitle$2(FeatureDisplayFragment.ProxyDigits proxyDigits) {
        super(0);
        this.f14116f = proxyDigits;
    }

    @NotNull
    /* renamed from: b */
    public final String invoke() {
        String string = this.f14116f.getResources().getString(C1517R.string.app_feature_proxy_subtitle);
        Intrinsics.m1831d(string, "resources.getString(R.st…p_feature_proxy_subtitle)");
        return string;
    }
}
