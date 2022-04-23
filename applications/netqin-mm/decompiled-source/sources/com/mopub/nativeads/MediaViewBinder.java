package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaViewBinder.class */
public class MediaViewBinder {

    /* renamed from: a */
    public final int f34677a;

    /* renamed from: b */
    public final int f34678b;

    /* renamed from: c */
    public final int f34679c;

    /* renamed from: d */
    public final int f34680d;

    /* renamed from: e */
    public final int f34681e;

    /* renamed from: f */
    public final int f34682f;

    /* renamed from: g */
    public final int f34683g;

    /* renamed from: h */
    public final int f34684h;

    /* renamed from: i */
    public final Map<String, Integer> f34685i;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final int f34686a;

        /* renamed from: b */
        public int f34687b;

        /* renamed from: c */
        public int f34688c;

        /* renamed from: d */
        public int f34689d;

        /* renamed from: e */
        public int f34690e;

        /* renamed from: f */
        public int f34691f;

        /* renamed from: g */
        public int f34692g;

        /* renamed from: h */
        public int f34693h;

        /* renamed from: i */
        public Map<String, Integer> f34694i;

        public Builder(int i) {
            this.f34694i = Collections.emptyMap();
            this.f34686a = i;
            this.f34694i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.f34694i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f34694i = new HashMap(map);
            return this;
        }

        public final MediaViewBinder build() {
            return new MediaViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f34691f = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f34690e = i;
            return this;
        }

        public final Builder mediaLayoutId(int i) {
            this.f34687b = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f34692g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f34693h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f34689d = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f34688c = i;
            return this;
        }
    }

    public MediaViewBinder(Builder builder) {
        this.f34677a = builder.f34686a;
        this.f34678b = builder.f34687b;
        this.f34679c = builder.f34688c;
        this.f34680d = builder.f34689d;
        this.f34681e = builder.f34691f;
        this.f34682f = builder.f34690e;
        this.f34683g = builder.f34692g;
        this.f34684h = builder.f34693h;
        this.f34685i = builder.f34694i;
    }
}
