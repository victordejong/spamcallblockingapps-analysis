package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.network.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/i.class */
public class C1467i<T> extends C1447c {

    /* renamed from: a */
    private String f5535a;

    /* renamed from: b */
    private boolean f5536b;

    /* renamed from: com.applovin.impl.sdk.network.i$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/i$a.class */
    public static class C1468a<T> extends C1447c.C1448a<T> {

        /* renamed from: o */
        private String f5537o;

        /* renamed from: p */
        private boolean f5538p;

        public C1468a(C1408l c1408l) {
            super(c1408l);
            this.f5454h = ((Integer) c1408l.m5511a(C1314b.f4833cJ)).intValue();
            this.f5455i = ((Integer) c1408l.m5511a(C1314b.f4832cI)).intValue();
            this.f5456j = ((Integer) c1408l.m5511a(C1314b.f4838cO)).intValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.impl.sdk.network.C1447c.C1448a
        /* renamed from: a */
        public /* synthetic */ C1447c.C1448a mo5193a(Object obj) {
            return m5186b((C1468a<T>) obj);
        }

        /* renamed from: b */
        public C1468a m5186b(T t) {
            this.f5453g = t;
            return this;
        }

        /* renamed from: b */
        public C1468a mo5190a(JSONObject jSONObject) {
            this.f5452f = jSONObject;
            return this;
        }

        /* renamed from: b */
        public C1467i<T> mo5196a() {
            return new C1467i<>(this);
        }

        /* renamed from: c */
        public C1468a mo5191a(Map<String, String> map) {
            this.f5450d = map;
            return this;
        }

        /* renamed from: d */
        public C1468a mo5195a(int i) {
            this.f5454h = i;
            return this;
        }

        /* renamed from: d */
        public C1468a mo5192a(String str) {
            this.f5448b = str;
            return this;
        }

        /* renamed from: d */
        public C1468a mo5184b(Map<String, String> map) {
            this.f5451e = map;
            return this;
        }

        /* renamed from: e */
        public C1468a mo5188b(int i) {
            this.f5455i = i;
            return this;
        }

        /* renamed from: e */
        public C1468a mo5181c(String str) {
            this.f5449c = str;
            return this;
        }

        /* renamed from: e */
        public C1468a mo5179c(boolean z) {
            this.f5459m = z;
            return this;
        }

        /* renamed from: f */
        public C1468a mo5182c(int i) {
            this.f5456j = i;
            return this;
        }

        /* renamed from: f */
        public C1468a mo5185b(String str) {
            this.f5447a = str;
            return this;
        }

        /* renamed from: f */
        public C1468a mo5175d(boolean z) {
            this.f5460n = z;
            return this;
        }

        /* renamed from: g */
        public C1468a m5168g(String str) {
            this.f5537o = str;
            return this;
        }

        /* renamed from: g */
        public C1468a m5167g(boolean z) {
            this.f5538p = z;
            return this;
        }
    }

    public C1467i(C1468a c1468a) {
        super(c1468a);
        this.f5535a = c1468a.f5537o;
        this.f5536b = c1468a.f5538p;
    }

    /* renamed from: b */
    public static C1468a m5200b(C1408l c1408l) {
        return new C1468a(c1408l);
    }

    /* renamed from: p */
    public boolean m5199p() {
        return this.f5535a != null;
    }

    /* renamed from: q */
    public String m5198q() {
        return this.f5535a;
    }

    /* renamed from: r */
    public boolean m5197r() {
        return this.f5536b;
    }
}
