package net.pubnative.lite.sdk.models;

import kotlin.Metadata;
import net.pubnative.lite.sdk.analytics.Reporting;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lnet/pubnative/lite/sdk/models/AdFormat;", "", "", "toString", "()Ljava/lang/String;", "adFormatValue", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "NATIVE", "BANNER", "FULL_SCREEN", "REWARDED", "hybid.sdk_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdFormat.class */
public enum AdFormat {
    NATIVE("native"),
    BANNER("banner"),
    FULL_SCREEN("fullscreen"),
    REWARDED(Reporting.AdFormat.REWARDED);
    
    private final String adFormatValue;

    AdFormat(String str) {
        this.adFormatValue = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.adFormatValue;
    }
}
