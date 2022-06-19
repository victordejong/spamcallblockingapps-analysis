package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationServerParameters;
import p143k2.C3321b;
import p154l2.AbstractC3484b;
import p154l2.AbstractC3485c;
import p154l2.AbstractC3487e;
import p154l2.C3483a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends AbstractC3487e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC3484b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // p154l2.AbstractC3484b
    /* synthetic */ void destroy();

    @Override // p154l2.AbstractC3484b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    View getBannerView();

    @Override // p154l2.AbstractC3484b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestBannerAd(@RecentlyNonNull AbstractC3485c abstractC3485c, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C3321b c3321b, @RecentlyNonNull C3483a c3483a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);
}
