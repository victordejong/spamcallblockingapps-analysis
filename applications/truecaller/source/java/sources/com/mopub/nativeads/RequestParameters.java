package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {

    /* renamed from: a */
    public final String f9118a;

    /* renamed from: b */
    public final String f9119b;

    /* renamed from: c */
    public final Location f9120c;

    /* renamed from: d */
    public final EnumSet<NativeAdAsset> f9121d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f9122a;

        /* renamed from: b */
        public String f9123b;

        /* renamed from: c */
        public Location f9124c;

        /* renamed from: d */
        public EnumSet<NativeAdAsset> f9125d;

        public final RequestParameters build() {
            return new RequestParameters(this, null);
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f9125d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final Builder keywords(String str) {
            this.f9122a = str;
            return this;
        }

        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f9124c = location;
            return this;
        }

        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f9123b = str;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/RequestParameters$NativeAdAsset.class */
    public enum NativeAdAsset {
        TITLE("title"),
        TEXT("text"),
        ICON_IMAGE("iconimage"),
        MAIN_IMAGE("mainimage"),
        CALL_TO_ACTION_TEXT("ctatext"),
        STAR_RATING("starrating"),
        SPONSORED("sponsored");
        

        /* renamed from: a */
        public final String f9127a;

        NativeAdAsset(String str) {
            this.f9127a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f9127a;
        }
    }

    public RequestParameters(Builder builder, C2712a c2712a) {
        this.f9118a = builder.f9122a;
        this.f9121d = builder.f9125d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        this.f9119b = canCollectPersonalInformation ? builder.f9123b : null;
        this.f9120c = canCollectPersonalInformation ? builder.f9124c : null;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f9121d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    public final String getKeywords() {
        return this.f9118a;
    }

    public final Location getLocation() {
        return this.f9120c;
    }

    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f9119b;
    }
}
