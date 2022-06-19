package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a */
    public final int f9128a;

    /* renamed from: b */
    public final int f9129b;

    /* renamed from: c */
    public final int f9130c;

    /* renamed from: d */
    public final int f9131d;

    /* renamed from: e */
    public final int f9132e;

    /* renamed from: f */
    public final int f9133f;

    /* renamed from: g */
    public final int f9134g;

    /* renamed from: h */
    public final int f9135h;

    /* renamed from: i */
    public final Map<String, Integer> f9136i;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final int f9137a;

        /* renamed from: b */
        public int f9138b;

        /* renamed from: c */
        public int f9139c;

        /* renamed from: d */
        public int f9140d;

        /* renamed from: e */
        public int f9141e;

        /* renamed from: f */
        public int f9142f;

        /* renamed from: g */
        public int f9143g;

        /* renamed from: h */
        public int f9144h;

        /* renamed from: i */
        public Map<String, Integer> f9145i;

        public Builder(int i) {
            this.f9145i = Collections.emptyMap();
            this.f9137a = i;
            this.f9145i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.f9145i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f9145i = new HashMap(map);
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this, null);
        }

        public final Builder callToActionId(int i) {
            this.f9140d = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f9142f = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.f9141e = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f9143g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f9144h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f9139c = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f9138b = i;
            return this;
        }
    }

    public ViewBinder(Builder builder, C2713a c2713a) {
        this.f9128a = builder.f9137a;
        this.f9129b = builder.f9138b;
        this.f9130c = builder.f9139c;
        this.f9131d = builder.f9140d;
        this.f9132e = builder.f9141e;
        this.f9133f = builder.f9142f;
        this.f9134g = builder.f9143g;
        this.f9135h = builder.f9144h;
        this.f9136i = builder.f9145i;
    }
}
