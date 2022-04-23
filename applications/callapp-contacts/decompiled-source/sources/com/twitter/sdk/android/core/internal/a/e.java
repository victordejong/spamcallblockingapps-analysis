package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.l;
import okhttp3.CertificatePinner;
import okhttp3.OkHttpClient;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/e.class */
public final class e {
    public static CertificatePinner a() {
        return new CertificatePinner.Builder().add("*.twitter.com", "sha1/I0PRSKJViZuUfUYaeX7ATP7RcLc=").add("*.twitter.com", "sha1/VRmyeKyygdftp6vBg5nDu2kEJLU=").add("*.twitter.com", "sha1/Eje6RRfurSkm/cHN/r7t8t7ZFFw=").add("*.twitter.com", "sha1/Wr7Fddyu87COJxlD/H8lDD32YeM=").add("*.twitter.com", "sha1/GiG0lStik84Ys2XsnA6TTLOB5tQ=").add("*.twitter.com", "sha1/IvGeLsbqzPxdI0b0wuj2xVTdXgc=").add("*.twitter.com", "sha1/7WYxNdMb1OymFMQp4xkGn5TBJlA=").add("*.twitter.com", "sha1/sYEIGhmkwJQf+uiVKMEkyZs0rMc=").add("*.twitter.com", "sha1/PANDaGiVHPNpKri0Jtq6j+ki5b0=").add("*.twitter.com", "sha1/u8I+KQuzKHcdrT6iTb30I70GsD0=").add("*.twitter.com", "sha1/wHqYaI2J+6sFZAwRfap9ZbjKzE4=").add("*.twitter.com", "sha1/cTg28gIxU0crbrplRqkQFVggBQk=").add("*.twitter.com", "sha1/sBmJ5+/7Sq/LFI9YRjl2IkFQ4bo=").add("*.twitter.com", "sha1/vb6nG6txV/nkddlU0rcngBqCJoI=").add("*.twitter.com", "sha1/nKmNAK90Dd2BgNITRaWLjy6UONY=").add("*.twitter.com", "sha1/h+hbY1PGI6MSjLD/u/VR/lmADiI=").add("*.twitter.com", "sha1/Xk9ThoXdT57KX9wNRW99UbHcm3s=").add("*.twitter.com", "sha1/1S4TwavjSdrotJWU73w4Q2BkZr0=").add("*.twitter.com", "sha1/gzF+YoVCU9bXeDGQ7JGQVumRueM=").add("*.twitter.com", "sha1/aDMOYTWFIVkpg6PI0tLhQG56s8E=").add("*.twitter.com", "sha1/Vv7zwhR9TtOIN/29MFI4cgHld40=").build();
    }

    public static OkHttpClient.Builder a(OkHttpClient.Builder builder, com.twitter.sdk.android.core.e eVar) {
        return builder.certificatePinner(a()).authenticator(new c(eVar)).addInterceptor(new a(eVar)).addNetworkInterceptor(new b());
    }

    public static OkHttpClient.Builder a(OkHttpClient.Builder builder, l<? extends TwitterAuthToken> lVar, TwitterAuthConfig twitterAuthConfig) {
        return builder.certificatePinner(a()).addInterceptor(new d(lVar, twitterAuthConfig));
    }
}
