package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a  reason: collision with root package name */
    final int f34654a;

    /* renamed from: b  reason: collision with root package name */
    final int f34655b;

    /* renamed from: c  reason: collision with root package name */
    final int f34656c;

    /* renamed from: d  reason: collision with root package name */
    final int f34657d;
    final int e;
    final int f;
    final int g;
    final int h;
    final Map<String, Integer> i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final int f34658a;

        /* renamed from: b  reason: collision with root package name */
        private int f34659b;

        /* renamed from: c  reason: collision with root package name */
        private int f34660c;

        /* renamed from: d  reason: collision with root package name */
        private int f34661d;
        private int e;
        private int f;
        private int g;
        private int h;
        private Map<String, Integer> i;

        public Builder(int i) {
            this.i = Collections.emptyMap();
            this.f34658a = i;
            this.i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.i = new HashMap(map);
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f34661d = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.e = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f34660c = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f34659b = i;
            return this;
        }
    }

    private ViewBinder(Builder builder) {
        this.f34654a = builder.f34658a;
        this.f34655b = builder.f34659b;
        this.f34656c = builder.f34660c;
        this.f34657d = builder.f34661d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
    }
}
