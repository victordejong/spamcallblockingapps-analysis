package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {

    /* renamed from: a */
    public final String f34918a;

    /* renamed from: b */
    public final String f34919b;

    /* renamed from: c */
    public final Location f34920c;

    /* renamed from: d */
    public final EnumSet<NativeAdAsset> f34921d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f34922a;

        /* renamed from: b */
        public String f34923b;

        /* renamed from: c */
        public Location f34924c;

        /* renamed from: d */
        public EnumSet<NativeAdAsset> f34925d;

        public final RequestParameters build() {
            return new RequestParameters(this);
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f34925d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final Builder keywords(String str) {
            this.f34922a = str;
            return this;
        }

        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f34924c = location;
            return this;
        }

        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f34923b = str;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/RequestParameters$NativeAdAsset.class */
    public enum NativeAdAsset {
        TITLE("title"),
        TEXT("text"),
        ICON_IMAGE("iconimage"),
        MAIN_IMAGE("mainimage"),
        CALL_TO_ACTION_TEXT("ctatext"),
        STAR_RATING("starrating"),
        SPONSORED("sponsored");
        
        public final String mAssetName;

        NativeAdAsset(String str) {
            this.mAssetName = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mAssetName;
        }
    }

    public RequestParameters(Builder builder) {
        this.f34918a = builder.f34922a;
        this.f34921d = builder.f34925d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        Location location = null;
        this.f34919b = canCollectPersonalInformation ? builder.f34923b : null;
        this.f34920c = canCollectPersonalInformation ? builder.f34924c : location;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f34921d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    public final String getKeywords() {
        return this.f34918a;
    }

    public final Location getLocation() {
        return this.f34920c;
    }

    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f34919b;
    }
}
