package com.mopub.mobileads;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubErrorCode.class */
public enum MoPubErrorCode implements MoPubError {
    AD_SUCCESS("ad successfully loaded."),
    DO_NOT_TRACK("Do not track is enabled."),
    UNSPECIFIED("Unspecified error."),
    NO_FILL("No ads found."),
    WARMUP("Ad unit is warming up. Try again in a few minutes."),
    SERVER_ERROR("Unable to connect to MoPub adserver."),
    TOO_MANY_REQUESTS("Too many failed requests have been made. Please try again later."),
    INTERNAL_ERROR("Unable to serve ad due to invalid internal state."),
    RENDER_PROCESS_GONE_WITH_CRASH("Render process for this WebView has crashed."),
    RENDER_PROCESS_GONE_UNSPECIFIED("Render process is gone for this WebView. Unspecified cause."),
    CANCELLED("Ad request was cancelled."),
    MISSING_AD_UNIT_ID("Unable to serve ad due to missing or empty ad unit ID."),
    NO_CONNECTION("No internet connection detected."),
    ADAPTER_NOT_FOUND("Unable to find Native Network or ad adapter."),
    ADAPTER_CONFIGURATION_ERROR("Native Network or ad adapter was configured incorrectly."),
    ADAPTER_INITIALIZATION_SUCCESS("AdapterConfiguration initialization success."),
    EXPIRED("Ad expired since it was not shown within 4 hours."),
    NETWORK_TIMEOUT("Third-party network failed to respond in a timely manner."),
    NETWORK_NO_FILL("Third-party network failed to provide an ad."),
    NETWORK_INVALID_STATE("Third-party network failed due to invalid internal state."),
    MRAID_LOAD_ERROR("Error loading MRAID ad."),
    HTML_LOAD_ERROR("Error loading MRAID ad."),
    INLINE_LOAD_ERROR("Error loading INLINE ad."),
    FULLSCREEN_LOAD_ERROR("Error loading FULLSCREEN ad."),
    INLINE_SHOW_ERROR("Error showing INLINE ad."),
    FULLSCREEN_SHOW_ERROR("Error showing FULLSCREEN ad."),
    VIDEO_CACHE_ERROR("Error creating a cache to store downloaded videos."),
    VIDEO_DOWNLOAD_ERROR("Error downloading video."),
    GDPR_DOES_NOT_APPLY("GDPR does not apply. Ignoring consent-related actions."),
    REWARDED_CURRENCIES_PARSING_ERROR("Error parsing rewarded currencies JSON header."),
    REWARD_NOT_SELECTED("Reward not selected for rewarded ad."),
    AD_NOT_AVAILABLE("No ad loaded for ad unit."),
    AD_SHOW_ERROR("Error showing an ad."),
    VIDEO_NOT_AVAILABLE("No video loaded for ad unit."),
    VIDEO_PLAYBACK_ERROR("Error playing a video."),
    MIN_FLOOR_PRICE_REACHED("Minimum floor price reached");
    
    private final String message;

    /* renamed from: com.mopub.mobileads.MoPubErrorCode$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubErrorCode$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34103a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f34103a = iArr;
            try {
                iArr[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34103a[MoPubErrorCode.ADAPTER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34103a[MoPubErrorCode.AD_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    MoPubErrorCode(String str) {
        this.message = str;
    }

    @Override // com.mopub.mobileads.MoPubError
    public final int getIntCode() {
        int i = AnonymousClass1.f34103a[ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 10000 : 0;
        }
        return 1;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.message;
    }
}
