package com.applovin.mediation.adapter.parameters;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/parameters/MaxAdapterParameters.class */
public interface MaxAdapterParameters {
    Bundle getServerParameters();

    boolean hasUserConsent();

    boolean isAgeRestrictedUser();

    boolean isDoNotSell();

    boolean isTesting();
}
