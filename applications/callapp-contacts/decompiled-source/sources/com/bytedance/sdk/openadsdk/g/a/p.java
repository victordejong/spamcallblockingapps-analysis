package com.bytedance.sdk.openadsdk.g.a;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/p.class */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public final int f9537a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9538b;

    /* renamed from: c  reason: collision with root package name */
    public final String f9539c;

    /* renamed from: d  reason: collision with root package name */
    public final String f9540d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f9541a;

        /* renamed from: b  reason: collision with root package name */
        private String f9542b;

        /* renamed from: c  reason: collision with root package name */
        private String f9543c;

        /* renamed from: d  reason: collision with root package name */
        private String f9544d;
        private String e;
        private String f;
        private String g;

        private a() {
        }

        public final a a(String str) {
            this.f9541a = str;
            return this;
        }

        public final p a() {
            return new p(this);
        }

        public final a b(String str) {
            this.f9542b = str;
            return this;
        }

        public final a c(String str) {
            this.f9543c = str;
            return this;
        }

        public final a d(String str) {
            this.f9544d = str;
            return this;
        }

        public final a e(String str) {
            this.e = str;
            return this;
        }

        public final a f(String str) {
            this.f = str;
            return this;
        }

        public final a g(String str) {
            this.g = str;
            return this;
        }
    }

    private p(a aVar) {
        this.f9538b = aVar.f9541a;
        this.f9539c = aVar.f9542b;
        this.f9540d = aVar.f9543c;
        this.e = aVar.f9544d;
        this.f = aVar.e;
        this.g = aVar.f;
        this.f9537a = 1;
        this.h = aVar.g;
    }

    private p(String str, int i) {
        this.f9538b = null;
        this.f9539c = null;
        this.f9540d = null;
        this.e = null;
        this.f = str;
        this.g = null;
        this.f9537a = i;
        this.h = null;
    }

    public static a a() {
        return new a();
    }

    public static p a(String str, int i) {
        return new p(str, i);
    }

    public static boolean a(p pVar) {
        return pVar == null || pVar.f9537a != 1 || TextUtils.isEmpty(pVar.f9540d) || TextUtils.isEmpty(pVar.e);
    }

    public String toString() {
        return "methodName: " + this.f9540d + ", params: " + this.e + ", callbackId: " + this.f + ", type: " + this.f9539c + ", version: " + this.f9538b + ", ";
    }
}
