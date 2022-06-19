package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a */
    final int f60117a;

    /* renamed from: b */
    final int f60118b;

    /* renamed from: c */
    final int f60119c;

    /* renamed from: d */
    final int f60120d;

    /* renamed from: e */
    final int f60121e;

    /* renamed from: f */
    final int f60122f;

    /* renamed from: g */
    final int f60123g;

    /* renamed from: h */
    final int f60124h;

    /* renamed from: i */
    final Map<String, Integer> f60125i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final int f60126a;

        /* renamed from: b */
        private int f60127b;

        /* renamed from: c */
        private int f60128c;

        /* renamed from: d */
        private int f60129d;

        /* renamed from: e */
        private int f60130e;

        /* renamed from: f */
        private int f60131f;

        /* renamed from: g */
        private int f60132g;

        /* renamed from: h */
        private int f60133h;

        /* renamed from: i */
        private Map<String, Integer> f60134i;

        public Builder(int i) {
            this.f60134i = Collections.emptyMap();
            this.f60126a = i;
            this.f60134i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.f60134i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f60134i = new HashMap(map);
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f60129d = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f60131f = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.f60130e = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f60132g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f60133h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f60128c = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f60127b = i;
            return this;
        }
    }

    private ViewBinder(Builder builder) {
        this.f60117a = builder.f60126a;
        this.f60118b = builder.f60127b;
        this.f60119c = builder.f60128c;
        this.f60120d = builder.f60129d;
        this.f60121e = builder.f60130e;
        this.f60122f = builder.f60131f;
        this.f60123g = builder.f60132g;
        this.f60124h = builder.f60133h;
        this.f60125i = builder.f60134i;
    }
}
