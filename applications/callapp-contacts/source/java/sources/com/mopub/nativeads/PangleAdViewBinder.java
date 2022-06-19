package com.mopub.nativeads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdViewBinder.class */
public class PangleAdViewBinder {
    public final int mCallToActionId;
    public final int mDescriptionTextId;
    public final Map<String, Integer> mExtras;
    public final int mIconImageId;
    public final int mLayoutId;
    public final int mLogoViewId;
    public final int mMediaViewId;
    public final int mSourceId;
    public final int mTitleId;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final int f60092a;

        /* renamed from: b */
        private int f60093b;

        /* renamed from: c */
        private int f60094c;

        /* renamed from: d */
        private int f60095d;

        /* renamed from: e */
        private int f60096e;

        /* renamed from: f */
        private int f60097f;

        /* renamed from: g */
        private int f60098g;

        /* renamed from: h */
        private int f60099h;

        /* renamed from: i */
        private Map<String, Integer> f60100i = new HashMap();

        public Builder(int i) {
            this.f60092a = i;
        }

        public final Builder addExtra(String str, int i) {
            this.f60100i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f60100i = new HashMap(map);
            return this;
        }

        public final PangleAdViewBinder build() {
            return new PangleAdViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f60095d = i;
            return this;
        }

        public final Builder decriptionTextId(int i) {
            this.f60094c = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f60096e = i;
            return this;
        }

        public final Builder logoViewId(int i) {
            this.f60099h = i;
            return this;
        }

        public final Builder mediaViewIdId(int i) {
            this.f60097f = i;
            return this;
        }

        public final Builder sourceId(int i) {
            this.f60098g = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f60093b = i;
            return this;
        }
    }

    private PangleAdViewBinder(Builder builder) {
        this.mLayoutId = builder.f60092a;
        this.mTitleId = builder.f60093b;
        this.mDescriptionTextId = builder.f60094c;
        this.mCallToActionId = builder.f60095d;
        this.mIconImageId = builder.f60096e;
        this.mMediaViewId = builder.f60097f;
        this.mSourceId = builder.f60098g;
        this.mExtras = builder.f60100i;
        this.mLogoViewId = builder.f60099h;
    }
}
