package com.bytedance.sdk.openadsdk.core.p154e;

import com.appsflyer.internal.referrer.Payload;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/d.class */
public class C4548d {

    /* renamed from: a */
    private final int[] f16473a;

    /* renamed from: b */
    private final int[] f16474b;

    /* renamed from: c */
    private final int[] f16475c;

    /* renamed from: d */
    private final int[] f16476d;

    /* renamed from: e */
    private final int f16477e;

    /* renamed from: f */
    private final int f16478f;

    /* renamed from: g */
    private final int f16479g;

    /* renamed from: h */
    private final int f16480h;

    /* renamed from: i */
    private final long f16481i;

    /* renamed from: j */
    private final long f16482j;

    /* renamed from: k */
    private final int f16483k;

    /* renamed from: l */
    private final int f16484l;

    /* renamed from: m */
    private final int f16485m;

    /* renamed from: n */
    private final String f16486n;

    /* renamed from: com.bytedance.sdk.openadsdk.core.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/d$a.class */
    public static class C4550a {

        /* renamed from: a */
        private long f16487a;

        /* renamed from: b */
        private long f16488b;

        /* renamed from: c */
        private int f16489c;

        /* renamed from: d */
        private int f16490d;

        /* renamed from: e */
        private int f16491e;

        /* renamed from: f */
        private int f16492f;

        /* renamed from: g */
        private int[] f16493g;

        /* renamed from: h */
        private int[] f16494h;

        /* renamed from: i */
        private int[] f16495i;

        /* renamed from: j */
        private int[] f16496j;

        /* renamed from: k */
        private int f16497k;

        /* renamed from: l */
        private int f16498l;

        /* renamed from: m */
        private int f16499m;

        /* renamed from: n */
        private String f16500n;

        /* renamed from: a */
        public C4550a m35313a(int i) {
            this.f16489c = i;
            return this;
        }

        /* renamed from: a */
        public C4550a m35312a(long j) {
            this.f16487a = j;
            return this;
        }

        /* renamed from: a */
        public C4550a m35310a(String str) {
            this.f16500n = str;
            return this;
        }

        /* renamed from: a */
        public C4550a m35309a(int[] iArr) {
            this.f16493g = iArr;
            return this;
        }

        /* renamed from: a */
        public C4548d m35314a() {
            return new C4548d(this);
        }

        /* renamed from: b */
        public C4550a m35308b(int i) {
            this.f16490d = i;
            return this;
        }

        /* renamed from: b */
        public C4550a m35307b(long j) {
            this.f16488b = j;
            return this;
        }

        /* renamed from: b */
        public C4550a m35305b(int[] iArr) {
            this.f16494h = iArr;
            return this;
        }

        /* renamed from: c */
        public C4550a m35304c(int i) {
            this.f16491e = i;
            return this;
        }

        /* renamed from: c */
        public C4550a m35302c(int[] iArr) {
            this.f16495i = iArr;
            return this;
        }

        /* renamed from: d */
        public C4550a m35301d(int i) {
            this.f16492f = i;
            return this;
        }

        /* renamed from: d */
        public C4550a m35299d(int[] iArr) {
            this.f16496j = iArr;
            return this;
        }

        /* renamed from: e */
        public C4550a m35298e(int i) {
            this.f16497k = i;
            return this;
        }

        /* renamed from: f */
        public C4550a m35296f(int i) {
            this.f16498l = i;
            return this;
        }

        /* renamed from: g */
        public C4550a m35294g(int i) {
            this.f16499m = i;
            return this;
        }
    }

    private C4548d(C4550a c4550a) {
        this.f16473a = c4550a.f16494h;
        this.f16474b = c4550a.f16495i;
        this.f16476d = c4550a.f16496j;
        this.f16475c = c4550a.f16493g;
        this.f16477e = c4550a.f16492f;
        this.f16478f = c4550a.f16491e;
        this.f16479g = c4550a.f16490d;
        this.f16480h = c4550a.f16489c;
        this.f16481i = c4550a.f16488b;
        this.f16482j = c4550a.f16487a;
        this.f16483k = c4550a.f16497k;
        this.f16484l = c4550a.f16498l;
        this.f16485m = c4550a.f16499m;
        this.f16486n = c4550a.f16500n;
    }

    /* renamed from: a */
    public JSONObject m35315a() {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.f16473a;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.f16473a[1]));
            }
            int[] iArr2 = this.f16474b;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.f16474b[1]));
            }
            int[] iArr3 = this.f16475c;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.f16475c[1]));
            }
            int[] iArr4 = this.f16476d;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.f16476d[1]));
            }
            jSONObject.putOpt("down_x", Integer.valueOf(this.f16477e)).putOpt("down_y", Integer.valueOf(this.f16478f)).putOpt("up_x", Integer.valueOf(this.f16479g)).putOpt("up_y", Integer.valueOf(this.f16480h)).putOpt("down_time", Long.valueOf(this.f16481i)).putOpt("up_time", Long.valueOf(this.f16482j)).putOpt("toolType", Integer.valueOf(this.f16483k)).putOpt("deviceId", Integer.valueOf(this.f16484l)).putOpt(Payload.SOURCE, Integer.valueOf(this.f16485m)).putOpt("click_area_type", this.f16486n);
        } catch (Exception e) {
        }
        return jSONObject;
    }
}
