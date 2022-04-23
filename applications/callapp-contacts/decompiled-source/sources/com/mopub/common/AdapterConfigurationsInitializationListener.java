package com.mopub.common;

import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/AdapterConfigurationsInitializationListener.class */
interface AdapterConfigurationsInitializationListener extends OnNetworkInitializationFinishedListener {
    void onAdapterConfigurationsInitialized(Map<String, AdapterConfiguration> map);
}
