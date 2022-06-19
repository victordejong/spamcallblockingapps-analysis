package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {

    /* renamed from: a */
    public final String f5259a;

    /* renamed from: b */
    public final String f5260b;

    /* renamed from: c */
    public final Location f5261c;

    /* renamed from: d */
    public final EnumSet<NativeAdAsset> f5262d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f5263a;

        /* renamed from: b */
        public String f5264b;

        /* renamed from: c */
        public Location f5265c;

        /* renamed from: d */
        public EnumSet<NativeAdAsset> f5266d;

        public final RequestParameters build() {
            return new RequestParameters(this);
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f5266d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final Builder keywords(String str) {
            this.f5263a = str;
            return this;
        }

        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f5265c = location;
            return this;
        }

        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f5264b = str;
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
        public final String f5268a;

        NativeAdAsset(String str) {
            this.f5268a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f5268a;
        }
    }

    public RequestParameters(Builder builder) {
        this.f5259a = builder.f5263a;
        this.f5262d = builder.f5266d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        this.f5260b = canCollectPersonalInformation ? builder.f5264b : null;
        this.f5261c = canCollectPersonalInformation ? builder.f5265c : null;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f5262d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    public final String getKeywords() {
        return this.f5259a;
    }

    public final Location getLocation() {
        return this.f5261c;
    }

    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f5260b;
    }
}
