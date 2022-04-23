package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {

    /* renamed from: a  reason: collision with root package name */
    private final String f34646a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34647b;

    /* renamed from: c  reason: collision with root package name */
    private final Location f34648c;

    /* renamed from: d  reason: collision with root package name */
    private final EnumSet<NativeAdAsset> f34649d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f34650a;

        /* renamed from: b  reason: collision with root package name */
        private String f34651b;

        /* renamed from: c  reason: collision with root package name */
        private Location f34652c;

        /* renamed from: d  reason: collision with root package name */
        private EnumSet<NativeAdAsset> f34653d;

        public final RequestParameters build() {
            return new RequestParameters(this);
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f34653d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final Builder keywords(String str) {
            this.f34650a = str;
            return this;
        }

        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f34652c = location;
            return this;
        }

        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f34651b = str;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/RequestParameters$NativeAdAsset.class */
    public enum NativeAdAsset {
        TITLE("title"),
        TEXT("text"),
        ICON_IMAGE("iconimage"),
        MAIN_IMAGE("mainimage"),
        CALL_TO_ACTION_TEXT("ctatext"),
        STAR_RATING("starrating"),
        SPONSORED("sponsored");
        
        private final String mAssetName;

        NativeAdAsset(String str) {
            this.mAssetName = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mAssetName;
        }
    }

    private RequestParameters(Builder builder) {
        this.f34646a = builder.f34650a;
        this.f34649d = builder.f34653d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        Location location = null;
        this.f34647b = canCollectPersonalInformation ? builder.f34651b : null;
        this.f34648c = canCollectPersonalInformation ? builder.f34652c : location;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f34649d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    public final String getKeywords() {
        return this.f34646a;
    }

    public final Location getLocation() {
        return this.f34648c;
    }

    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f34647b;
    }
}
