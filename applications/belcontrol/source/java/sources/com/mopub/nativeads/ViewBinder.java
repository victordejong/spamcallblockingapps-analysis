package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a */
    public final int f5284a;

    /* renamed from: b */
    public final int f5285b;

    /* renamed from: c */
    public final int f5286c;

    /* renamed from: d */
    public final int f5287d;

    /* renamed from: e */
    public final int f5288e;

    /* renamed from: f */
    public final int f5289f;

    /* renamed from: g */
    public final int f5290g;

    /* renamed from: h */
    public final int f5291h;

    /* renamed from: i */
    public final Map<String, Integer> f5292i;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final int f5293a;

        /* renamed from: b */
        public int f5294b;

        /* renamed from: c */
        public int f5295c;

        /* renamed from: d */
        public int f5296d;

        /* renamed from: e */
        public int f5297e;

        /* renamed from: f */
        public int f5298f;

        /* renamed from: g */
        public int f5299g;

        /* renamed from: h */
        public int f5300h;

        /* renamed from: i */
        public Map<String, Integer> f5301i;

        public Builder(int i) {
            this.f5301i = Collections.emptyMap();
            this.f5293a = i;
            this.f5301i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.f5301i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f5301i = new HashMap(map);
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f5296d = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f5298f = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.f5297e = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f5299g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f5300h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f5295c = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f5294b = i;
            return this;
        }
    }

    public ViewBinder(Builder builder) {
        this.f5284a = builder.f5293a;
        this.f5285b = builder.f5294b;
        this.f5286c = builder.f5295c;
        this.f5287d = builder.f5296d;
        this.f5288e = builder.f5297e;
        this.f5289f = builder.f5298f;
        this.f5290g = builder.f5299g;
        this.f5291h = builder.f5300h;
        this.f5292i = builder.f5301i;
    }
}
