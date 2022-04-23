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

        /* renamed from: a  reason: collision with root package name */
        private final int f34638a;

        /* renamed from: b  reason: collision with root package name */
        private int f34639b;

        /* renamed from: c  reason: collision with root package name */
        private int f34640c;

        /* renamed from: d  reason: collision with root package name */
        private int f34641d;
        private int e;
        private int f;
        private int g;
        private int h;
        private Map<String, Integer> i = new HashMap();

        public Builder(int i) {
            this.f34638a = i;
        }

        public final Builder addExtra(String str, int i) {
            this.i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.i = new HashMap(map);
            return this;
        }

        public final PangleAdViewBinder build() {
            return new PangleAdViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f34641d = i;
            return this;
        }

        public final Builder decriptionTextId(int i) {
            this.f34640c = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.e = i;
            return this;
        }

        public final Builder logoViewId(int i) {
            this.h = i;
            return this;
        }

        public final Builder mediaViewIdId(int i) {
            this.f = i;
            return this;
        }

        public final Builder sourceId(int i) {
            this.g = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f34639b = i;
            return this;
        }
    }

    private PangleAdViewBinder(Builder builder) {
        this.mLayoutId = builder.f34638a;
        this.mTitleId = builder.f34639b;
        this.mDescriptionTextId = builder.f34640c;
        this.mCallToActionId = builder.f34641d;
        this.mIconImageId = builder.e;
        this.mMediaViewId = builder.f;
        this.mSourceId = builder.g;
        this.mExtras = builder.i;
        this.mLogoViewId = builder.h;
    }
}
