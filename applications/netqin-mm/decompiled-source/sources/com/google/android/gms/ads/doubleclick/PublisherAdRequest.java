package com.google.android.gms.ads.doubleclick;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzyw;
import com.google.android.gms.internal.ads.zzyz;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest.class */
public final class PublisherAdRequest {

    /* renamed from: a */
    public final zzyw f22689a;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final zzyz f22690a = new zzyz();

        @Deprecated
        /* renamed from: a */
        public final Builder m18074a(String str) {
            this.f22690a.m11037b(str);
            return this;
        }

        /* renamed from: a */
        public final PublisherAdRequest m18076a() {
            return new PublisherAdRequest(this);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    public PublisherAdRequest(Builder builder) {
        this.f22689a = new zzyw(builder.f22690a);
    }

    /* renamed from: a */
    public final zzyw m18077a() {
        return this.f22689a;
    }
}
