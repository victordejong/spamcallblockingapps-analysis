package com.mopub.nativeads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesViewBinder.class */
public class GooglePlayServicesViewBinder {

    /* renamed from: a  reason: collision with root package name */
    final int f34535a;

    /* renamed from: b  reason: collision with root package name */
    final int f34536b;

    /* renamed from: c  reason: collision with root package name */
    final int f34537c;

    /* renamed from: d  reason: collision with root package name */
    final int f34538d;
    final int e;
    final int f;
    final int g;
    final int h;
    final Map<String, Integer> i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final int f34539a;

        /* renamed from: b  reason: collision with root package name */
        private int f34540b;

        /* renamed from: c  reason: collision with root package name */
        private int f34541c;

        /* renamed from: d  reason: collision with root package name */
        private int f34542d;
        private int e;
        private int f;
        private int g;
        private int h;
        private Map<String, Integer> i = new HashMap();

        public Builder(int i) {
            this.f34539a = i;
        }

        public final Builder addExtra(String str, int i) {
            this.i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.i = new HashMap(map);
            return this;
        }

        public final GooglePlayServicesViewBinder build() {
            return new GooglePlayServicesViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.e = i;
            return this;
        }

        public final Builder mediaLayoutId(int i) {
            this.f34540b = i;
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
            this.f34542d = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f34541c = i;
            return this;
        }
    }

    private GooglePlayServicesViewBinder(Builder builder) {
        this.f34535a = builder.f34539a;
        this.f34536b = builder.f34540b;
        this.f34537c = builder.f34541c;
        this.f34538d = builder.f34542d;
        this.e = builder.f;
        this.f = builder.e;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
    }
}
