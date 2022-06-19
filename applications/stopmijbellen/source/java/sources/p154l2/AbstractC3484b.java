package p154l2;

import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* renamed from: l2.b */
/* loaded from: classes-dex2jar.jar:l2/b.class */
public interface AbstractC3484b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    void destroy();

    @RecentlyNonNull
    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    Class<SERVER_PARAMETERS> getServerParametersType();
}
