package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.text.TextUtils;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.p */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/p.class */
public class C4894p {

    /* renamed from: a */
    public final int f17864a;

    /* renamed from: b */
    public final String f17865b;

    /* renamed from: c */
    public final String f17866c;

    /* renamed from: d */
    public final String f17867d;

    /* renamed from: e */
    public final String f17868e;

    /* renamed from: f */
    public final String f17869f;

    /* renamed from: g */
    public final String f17870g;

    /* renamed from: h */
    public final String f17871h;

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.p$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/p$a.class */
    public static final class C4896a {

        /* renamed from: a */
        private String f17872a;

        /* renamed from: b */
        private String f17873b;

        /* renamed from: c */
        private String f17874c;

        /* renamed from: d */
        private String f17875d;

        /* renamed from: e */
        private String f17876e;

        /* renamed from: f */
        private String f17877f;

        /* renamed from: g */
        private String f17878g;

        private C4896a() {
        }

        /* renamed from: a */
        public final C4896a m33628a(String str) {
            this.f17872a = str;
            return this;
        }

        /* renamed from: a */
        public final C4894p m33630a() {
            return new C4894p(this);
        }

        /* renamed from: b */
        public final C4896a m33626b(String str) {
            this.f17873b = str;
            return this;
        }

        /* renamed from: c */
        public final C4896a m33624c(String str) {
            this.f17874c = str;
            return this;
        }

        /* renamed from: d */
        public final C4896a m33622d(String str) {
            this.f17875d = str;
            return this;
        }

        /* renamed from: e */
        public final C4896a m33620e(String str) {
            this.f17876e = str;
            return this;
        }

        /* renamed from: f */
        public final C4896a m33618f(String str) {
            this.f17877f = str;
            return this;
        }

        /* renamed from: g */
        public final C4896a m33616g(String str) {
            this.f17878g = str;
            return this;
        }
    }

    private C4894p(C4896a c4896a) {
        this.f17865b = c4896a.f17872a;
        this.f17866c = c4896a.f17873b;
        this.f17867d = c4896a.f17874c;
        this.f17868e = c4896a.f17875d;
        this.f17869f = c4896a.f17876e;
        this.f17870g = c4896a.f17877f;
        this.f17864a = 1;
        this.f17871h = c4896a.f17878g;
    }

    private C4894p(String str, int i) {
        this.f17865b = null;
        this.f17866c = null;
        this.f17867d = null;
        this.f17868e = null;
        this.f17869f = str;
        this.f17870g = null;
        this.f17864a = i;
        this.f17871h = null;
    }

    /* renamed from: a */
    public static C4896a m33633a() {
        return new C4896a();
    }

    /* renamed from: a */
    public static C4894p m33631a(String str, int i) {
        return new C4894p(str, i);
    }

    /* renamed from: a */
    public static boolean m33632a(C4894p c4894p) {
        return c4894p == null || c4894p.f17864a != 1 || TextUtils.isEmpty(c4894p.f17867d) || TextUtils.isEmpty(c4894p.f17868e);
    }

    public String toString() {
        return "methodName: " + this.f17867d + ", params: " + this.f17868e + ", callbackId: " + this.f17869f + ", type: " + this.f17866c + ", version: " + this.f17865b + ", ";
    }
}
