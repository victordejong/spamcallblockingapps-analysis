package com.applovin.mediation.adapter.parameters;

import android.os.Bundle;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/parameters/MaxAdapterParameters.class */
public interface MaxAdapterParameters {
    String getAdUnitId();

    Bundle getCustomParameters();

    Map<String, Object> getLocalExtraParameters();

    Bundle getServerParameters();

    Boolean hasUserConsent();

    Boolean isAgeRestrictedUser();

    Boolean isDoNotSell();

    boolean isTesting();
}
