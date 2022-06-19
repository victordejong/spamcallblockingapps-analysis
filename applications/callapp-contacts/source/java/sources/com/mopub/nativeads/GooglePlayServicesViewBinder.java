package com.mopub.nativeads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesViewBinder.class */
public class GooglePlayServicesViewBinder {

    /* renamed from: a */
    final int f59935a;

    /* renamed from: b */
    final int f59936b;

    /* renamed from: c */
    final int f59937c;

    /* renamed from: d */
    final int f59938d;

    /* renamed from: e */
    final int f59939e;

    /* renamed from: f */
    final int f59940f;

    /* renamed from: g */
    final int f59941g;

    /* renamed from: h */
    final int f59942h;

    /* renamed from: i */
    final Map<String, Integer> f59943i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final int f59944a;

        /* renamed from: b */
        private int f59945b;

        /* renamed from: c */
        private int f59946c;

        /* renamed from: d */
        private int f59947d;

        /* renamed from: e */
        private int f59948e;

        /* renamed from: f */
        private int f59949f;

        /* renamed from: g */
        private int f59950g;

        /* renamed from: h */
        private int f59951h;

        /* renamed from: i */
        private Map<String, Integer> f59952i = new HashMap();

        public Builder(int i) {
            this.f59944a = i;
        }

        public final Builder addExtra(String str, int i) {
            this.f59952i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f59952i = new HashMap(map);
            return this;
        }

        public final GooglePlayServicesViewBinder build() {
            return new GooglePlayServicesViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f59949f = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f59948e = i;
            return this;
        }

        public final Builder mediaLayoutId(int i) {
            this.f59945b = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f59950g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f59951h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f59947d = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f59946c = i;
            return this;
        }
    }

    private GooglePlayServicesViewBinder(Builder builder) {
        this.f59935a = builder.f59944a;
        this.f59936b = builder.f59945b;
        this.f59937c = builder.f59946c;
        this.f59938d = builder.f59947d;
        this.f59939e = builder.f59949f;
        this.f59940f = builder.f59948e;
        this.f59941g = builder.f59950g;
        this.f59942h = builder.f59951h;
        this.f59943i = builder.f59952i;
    }
}
