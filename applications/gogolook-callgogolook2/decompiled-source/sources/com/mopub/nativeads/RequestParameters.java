package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.MoPub;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/RequestParameters.class */
public class RequestParameters {
    @Nullable

    /* renamed from: a */
    public final String f9261a;
    @Nullable

    /* renamed from: b */
    public final String f9262b;
    @Nullable

    /* renamed from: c */
    public final Location f9263c;
    @Nullable

    /* renamed from: d */
    public final EnumSet<NativeAdAsset> f9264d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/RequestParameters$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f9265a;

        /* renamed from: b */
        public String f9266b;

        /* renamed from: c */
        public Location f9267c;

        /* renamed from: d */
        public EnumSet<NativeAdAsset> f9268d;

        @NonNull
        public final RequestParameters build() {
            return new RequestParameters(this);
        }

        @NonNull
        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.f9268d = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        @NonNull
        public final Builder keywords(String str) {
            this.f9265a = str;
            return this;
        }

        @NonNull
        public final Builder location(Location location) {
            if (!MoPub.canCollectPersonalInformation()) {
                location = null;
            }
            this.f9267c = location;
            return this;
        }

        @NonNull
        public final Builder userDataKeywords(String str) {
            if (!MoPub.canCollectPersonalInformation()) {
                str = null;
            }
            this.f9266b = str;
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
        

        /* renamed from: a */
        public final String f9270a;

        NativeAdAsset(@NonNull String str) {
            this.f9270a = str;
        }

        @Override // java.lang.Enum
        @NonNull
        public String toString() {
            return this.f9270a;
        }
    }

    public RequestParameters(@NonNull Builder builder) {
        this.f9261a = builder.f9265a;
        this.f9264d = builder.f9268d;
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        Location location = null;
        this.f9262b = canCollectPersonalInformation ? builder.f9266b : null;
        this.f9263c = canCollectPersonalInformation ? builder.f9267c : location;
    }

    public final String getDesiredAssets() {
        EnumSet<NativeAdAsset> enumSet = this.f9264d;
        return enumSet != null ? TextUtils.join(",", enumSet.toArray()) : "";
    }

    @Nullable
    public final String getKeywords() {
        return this.f9261a;
    }

    @Nullable
    public final Location getLocation() {
        return this.f9263c;
    }

    @Nullable
    public final String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f9262b;
    }
}
