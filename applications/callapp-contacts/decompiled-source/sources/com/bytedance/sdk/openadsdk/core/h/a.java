package com.bytedance.sdk.openadsdk.core.h;

import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f8963a;
    public List<String> y;

    /* renamed from: b  reason: collision with root package name */
    public int f8964b = 1;

    /* renamed from: c  reason: collision with root package name */
    public int f8965c = 1;

    /* renamed from: d  reason: collision with root package name */
    public int f8966d = 2;
    public int e = 1;
    public int f = 100;
    public int g = 0;
    public int h = 2;
    public int i = 1;
    public int j = 3;
    public int k = -1;
    public int l = -1;
    public int m = -1;
    public int n = 2;
    public int o = 1;
    public int p = 0;
    public int q = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
    public int r = 2;
    public int s = -1;
    public int t = 20;
    public int u = -1;
    public int v = 0;
    public int w = 5;
    public int x = 0;
    public int z = 2;

    private a() {
    }

    public static a a() {
        return new a();
    }

    public a a(int i) {
        this.u = i;
        return this;
    }

    public a a(String str) {
        this.f8963a = str;
        return this;
    }

    public a a(JSONArray jSONArray) {
        if (!(jSONArray == null || jSONArray.length() == 0)) {
            this.y = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    this.y.add(jSONArray.get(i).toString());
                } catch (Exception e) {
                }
            }
        }
        return this;
    }

    public a b(int i) {
        this.v = i;
        return this;
    }

    public a c(int i) {
        this.x = i;
        return this;
    }

    public a d(int i) {
        this.t = i;
        return this;
    }

    public a e(int i) {
        this.s = i;
        return this;
    }

    public a f(int i) {
        this.p = i;
        return this;
    }

    public a g(int i) {
        this.q = i;
        return this;
    }

    public a h(int i) {
        this.r = i;
        return this;
    }

    public a i(int i) {
        this.n = i;
        return this;
    }

    public a j(int i) {
        this.l = i;
        return this;
    }

    public a k(int i) {
        this.m = i;
        return this;
    }

    public a l(int i) {
        this.k = i;
        return this;
    }

    public a m(int i) {
        this.j = i;
        return this;
    }

    public a n(int i) {
        this.f8964b = i;
        return this;
    }

    public a o(int i) {
        this.f8965c = i;
        return this;
    }

    public a p(int i) {
        this.f8966d = i;
        return this;
    }

    public a q(int i) {
        this.e = i;
        return this;
    }

    public a r(int i) {
        this.f = i;
        return this;
    }

    public a s(int i) {
        this.g = i;
        return this;
    }

    public a t(int i) {
        this.h = i;
        return this;
    }

    public a u(int i) {
        this.i = i;
        return this;
    }

    public a v(int i) {
        this.o = i;
        return this;
    }

    public a w(int i) {
        this.z = i;
        return this;
    }

    public a x(int i) {
        this.w = i;
        return this;
    }
}
