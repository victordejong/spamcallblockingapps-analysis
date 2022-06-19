package com.monet.bidder;
/* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetConfiguration.class */
public class AppMonetConfiguration {
    String applicationId;
    boolean disableBannerListener;

    /* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetConfiguration$Builder.class */
    public static class Builder {
        private String applicationId;
        private boolean disableBannerListener = false;

        public Builder applicationId(String str) {
            this.applicationId = str;
            return this;
        }

        public AppMonetConfiguration build() {
            return new AppMonetConfiguration(this);
        }

        public Builder disableBannerListener(boolean z) {
            this.disableBannerListener = z;
            return this;
        }
    }

    private AppMonetConfiguration(Builder builder) {
        this.applicationId = builder.applicationId;
        this.disableBannerListener = builder.disableBannerListener;
    }
}
