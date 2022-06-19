package com.appnext.nativeads;

import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0529c;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdRequest.class */
public class NativeAdRequest extends AbstractC0529c {
    private String categories;
    private CreativeType creativeType;

    /* renamed from: fS */
    private CachingPolicy f1961fS;

    /* renamed from: fT */
    private VideoLength f1962fT;

    /* renamed from: fU */
    private VideoQuality f1963fU;
    private String mSpecificCategories;
    private int maxVideoLength;
    private int minVideoLength;
    private String postback;

    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdRequest$CachingPolicy.class */
    public enum CachingPolicy {
        NOTHING(0),
        STATIC_ONLY(1),
        VIDEO_ONLY(2),
        ALL(3);
        
        private int value;

        CachingPolicy(int i) {
            this.value = i;
        }

        public static CachingPolicy fromInt(int i) {
            CachingPolicy[] values = values();
            for (int i2 = 0; i2 < 4; i2++) {
                CachingPolicy cachingPolicy = values[i2];
                if (cachingPolicy.getValue() == i) {
                    return cachingPolicy;
                }
            }
            return null;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdRequest$CreativeType.class */
    public enum CreativeType {
        STATIC_ONLY,
        VIDEO_ONLY,
        ALL
    }

    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdRequest$VideoLength.class */
    public enum VideoLength {
        DEFAULT(0),
        LONG(1),
        SHORT(2);
        
        private int value;

        VideoLength(int i) {
            this.value = i;
        }

        public static VideoLength fromInt(int i) {
            try {
                VideoLength[] values = values();
                for (int i2 = 0; i2 < 3; i2++) {
                    VideoLength videoLength = values[i2];
                    if (videoLength.getValue() == i) {
                        return videoLength;
                    }
                }
                return null;
            } catch (Throwable th) {
                C0472a.m42577a("NativeAdRequest$VideoLength", th);
                return null;
            }
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdRequest$VideoQuality.class */
    public enum VideoQuality {
        DEFAULT(0),
        HIGH(1),
        LOW(2);
        
        private int value;

        VideoQuality(int i) {
            this.value = i;
        }

        public static VideoQuality fromInt(int i) {
            VideoQuality[] values = values();
            for (int i2 = 0; i2 < 3; i2++) {
                VideoQuality videoQuality = values[i2];
                if (videoQuality.getValue() == i) {
                    return videoQuality;
                }
            }
            return null;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public NativeAdRequest() {
        this.categories = "";
        this.mSpecificCategories = "";
        this.postback = "";
        this.f1961fS = CachingPolicy.ALL;
        this.creativeType = CreativeType.ALL;
        this.f1962fT = VideoLength.DEFAULT;
        this.f1963fU = VideoQuality.DEFAULT;
        this.minVideoLength = 0;
        this.maxVideoLength = 0;
    }

    public NativeAdRequest(NativeAdRequest nativeAdRequest) {
        this.categories = "";
        this.mSpecificCategories = "";
        this.postback = "";
        this.f1961fS = CachingPolicy.ALL;
        this.creativeType = CreativeType.ALL;
        this.f1962fT = VideoLength.DEFAULT;
        this.f1963fU = VideoQuality.DEFAULT;
        this.minVideoLength = 0;
        this.maxVideoLength = 0;
        this.categories = nativeAdRequest.categories;
        this.mSpecificCategories = nativeAdRequest.mSpecificCategories;
        this.postback = nativeAdRequest.postback;
        this.f1961fS = nativeAdRequest.f1961fS;
        this.creativeType = nativeAdRequest.creativeType;
        this.f1962fT = nativeAdRequest.f1962fT;
        this.f1963fU = nativeAdRequest.f1963fU;
    }

    public CachingPolicy getCachingPolicy() {
        return this.f1961fS;
    }

    public String getCategories() {
        return this.categories;
    }

    public CreativeType getCreativeType() {
        return this.creativeType;
    }

    public int getMaxVideoLength() {
        return this.maxVideoLength;
    }

    public int getMinVideoLength() {
        return this.minVideoLength;
    }

    public String getPostback() {
        return this.postback;
    }

    public String getSpecificCategories() {
        return this.mSpecificCategories;
    }

    public VideoLength getVideoLength() {
        return this.f1962fT;
    }

    public VideoQuality getVideoQuality() {
        return this.f1963fU;
    }

    public NativeAdRequest setCachingPolicy(CachingPolicy cachingPolicy) {
        this.f1961fS = cachingPolicy;
        return this;
    }

    public NativeAdRequest setCategories(String str) {
        this.categories = str;
        return this;
    }

    public NativeAdRequest setCreativeType(CreativeType creativeType) {
        this.creativeType = creativeType;
        return this;
    }

    public NativeAdRequest setMaxVideoLength(int i) {
        if (i >= 0) {
            if (i > 0 && getMinVideoLength() > 0 && i < getMinVideoLength()) {
                throw new IllegalArgumentException("Max Length cannot be lower than min length");
            }
            this.maxVideoLength = i;
            return this;
        }
        throw new IllegalArgumentException("Max Length must be higher than 0");
    }

    public NativeAdRequest setMinVideoLength(int i) {
        if (i < 0 || (i > 0 && getMaxVideoLength() > 0 && i > getMaxVideoLength())) {
            this.minVideoLength = 0;
        } else {
            this.minVideoLength = i;
        }
        return this;
    }

    public NativeAdRequest setPostback(String str) {
        this.postback = str;
        return this;
    }

    public NativeAdRequest setSpecificCategories(String str) {
        this.mSpecificCategories = str;
        return this;
    }

    public NativeAdRequest setVideoLength(VideoLength videoLength) {
        this.f1962fT = videoLength;
        return this;
    }

    public NativeAdRequest setVideoQuality(VideoQuality videoQuality) {
        this.f1963fU = videoQuality;
        return this;
    }
}
