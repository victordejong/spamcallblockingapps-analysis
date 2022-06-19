package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {

    /* renamed from: a */
    private final String f60109a;

    /* renamed from: b */
    private final String f60110b;

    /* renamed from: c */
    private final Location f60111c;

    /* renamed from: d */
    private final EnumSet<NativeAdAsset> f60112d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private String f60113a;

        /* renamed from: b */
        private String f60114b;

        /* renamed from: c */
        private Location f60115c;

        /* renamed from: d */
        private EnumSet<NativeAdAsset> f60116d;

        public final RequestParameters build() {
            return new RequestParameters(this);
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f60116d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final Builder keywords(String str) {
            this.f60113a = str;
            return this;
        }

        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f60115c = location;
            return this;
        }

        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f60114b = str;
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
        this.f60109a = builder.f60113a;
        this.f60112d = builder.f60116d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        this.f60110b = canCollectPersonalInformation ? builder.f60114b : null;
        this.f60111c = canCollectPersonalInformation ? builder.f60115c : null;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f60112d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    public final String getKeywords() {
        return this.f60109a;
    }

    public final Location getLocation() {
        return this.f60111c;
    }

    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f60110b;
    }
}
