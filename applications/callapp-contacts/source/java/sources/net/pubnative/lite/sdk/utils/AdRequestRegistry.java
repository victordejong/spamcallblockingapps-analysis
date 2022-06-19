package net.pubnative.lite.sdk.utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/AdRequestRegistry.class */
public class AdRequestRegistry {
    private static AdRequestRegistry sInstance;
    private RequestItem mLastAdRequest;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem.class */
    public final class RequestItem {
        private long mLatency;
        private String mPostParams;
        private String mResponse;
        private String mUrl;

        public RequestItem(AdRequestRegistry adRequestRegistry, String str, String str2, long j) {
            this(str, null, str2, j);
        }

        public RequestItem(String str, String str2, String str3, long j) {
            AdRequestRegistry.this = r5;
            this.mUrl = str;
            this.mPostParams = str2;
            this.mResponse = str3;
            this.mLatency = j;
        }

        public final long getLatency() {
            return this.mLatency;
        }

        public final String getPostParams() {
            return this.mPostParams;
        }

        public final String getResponse() {
            return this.mResponse;
        }

        public final String getUrl() {
            return this.mUrl;
        }
    }

    private AdRequestRegistry() {
    }

    public static AdRequestRegistry getInstance() {
        if (sInstance == null) {
            synchronized (AdRequestRegistry.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new AdRequestRegistry();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    public RequestItem getLastAdRequest() {
        return this.mLastAdRequest;
    }

    public void setLastAdRequest(String str, String str2, long j) {
        this.mLastAdRequest = new RequestItem(this, str, str2, j);
    }
}
