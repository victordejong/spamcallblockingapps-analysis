package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ConfigurationProvider.class */
public interface ConfigurationProvider {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/ConfigurationProvider$UpdateListener.class */
    public interface UpdateListener {
        void onComplete(ConfigurationProvider configurationProvider, ErrorInfo errorInfo);
    }

    String getId();

    void update(UpdateListener updateListener);
}
