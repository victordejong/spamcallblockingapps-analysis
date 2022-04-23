package com.bytedance.sdk.openadsdk.core.e;

import com.appsflyer.internal.referrer.Payload;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f8874a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f8875b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f8876c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f8877d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final long i;
    private final long j;
    private final int k;
    private final int l;
    private final int m;
    private final String n;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/d$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f8878a;

        /* renamed from: b  reason: collision with root package name */
        private long f8879b;

        /* renamed from: c  reason: collision with root package name */
        private int f8880c;

        /* renamed from: d  reason: collision with root package name */
        private int f8881d;
        private int e;
        private int f;
        private int[] g;
        private int[] h;
        private int[] i;
        private int[] j;
        private int k;
        private int l;
        private int m;
        private String n;

        public a a(int i) {
            this.f8880c = i;
            return this;
        }

        public a a(long j) {
            this.f8878a = j;
            return this;
        }

        public a a(String str) {
            this.n = str;
            return this;
        }

        public a a(int[] iArr) {
            this.g = iArr;
            return this;
        }

        public d a() {
            return new d(this);
        }

        public a b(int i) {
            this.f8881d = i;
            return this;
        }

        public a b(long j) {
            this.f8879b = j;
            return this;
        }

        public a b(int[] iArr) {
            this.h = iArr;
            return this;
        }

        public a c(int i) {
            this.e = i;
            return this;
        }

        public a c(int[] iArr) {
            this.i = iArr;
            return this;
        }

        public a d(int i) {
            this.f = i;
            return this;
        }

        public a d(int[] iArr) {
            this.j = iArr;
            return this;
        }

        public a e(int i) {
            this.k = i;
            return this;
        }

        public a f(int i) {
            this.l = i;
            return this;
        }

        public a g(int i) {
            this.m = i;
            return this;
        }
    }

    private d(a aVar) {
        this.f8874a = aVar.h;
        this.f8875b = aVar.i;
        this.f8877d = aVar.j;
        this.f8876c = aVar.g;
        this.e = aVar.f;
        this.f = aVar.e;
        this.g = aVar.f8881d;
        this.h = aVar.f8880c;
        this.i = aVar.f8879b;
        this.j = aVar.f8878a;
        this.k = aVar.k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.f8874a;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.f8874a[1]));
            }
            int[] iArr2 = this.f8875b;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.f8875b[1]));
            }
            int[] iArr3 = this.f8876c;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.f8876c[1]));
            }
            int[] iArr4 = this.f8877d;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.f8877d[1]));
            }
            jSONObject.putOpt("down_x", Integer.valueOf(this.e)).putOpt("down_y", Integer.valueOf(this.f)).putOpt("up_x", Integer.valueOf(this.g)).putOpt("up_y", Integer.valueOf(this.h)).putOpt("down_time", Long.valueOf(this.i)).putOpt("up_time", Long.valueOf(this.j)).putOpt("toolType", Integer.valueOf(this.k)).putOpt("deviceId", Integer.valueOf(this.l)).putOpt(Payload.SOURCE, Integer.valueOf(this.m)).putOpt("click_area_type", this.n);
        } catch (Exception e) {
        }
        return jSONObject;
    }
}
