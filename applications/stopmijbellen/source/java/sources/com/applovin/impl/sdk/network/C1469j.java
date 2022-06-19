package com.applovin.impl.sdk.network;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
/* renamed from: com.applovin.impl.sdk.network.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/j.class */
public class C1469j {

    /* renamed from: a */
    private final Bundle f5539a;

    /* renamed from: b */
    private final String f5540b;

    /* renamed from: com.applovin.impl.sdk.network.j$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/j$a.class */
    public static class C1471a {

        /* renamed from: a */
        private final Bundle f5541a;

        /* renamed from: b */
        private String f5542b;

        public C1471a() {
            this(null);
        }

        public C1471a(C1469j c1469j) {
            this.f5541a = new Bundle();
            if (c1469j != null) {
                for (String str : c1469j.m5166a().keySet()) {
                    m5161a(str, c1469j.m5166a().getString(str));
                }
                this.f5542b = c1469j.m5165b();
            }
        }

        /* renamed from: a */
        public C1471a m5162a(String str) {
            this.f5542b = str;
            return this;
        }

        /* renamed from: a */
        public C1471a m5161a(String str, String str2) {
            if (str != null) {
                this.f5541a.putString(str, str2);
                return this;
            }
            throw new IllegalArgumentException("No key specified");
        }

        /* renamed from: a */
        public C1469j m5164a() {
            return new C1469j(this);
        }

        /* renamed from: b */
        public C1471a m5159b(String str) {
            if (str != null) {
                this.f5541a.remove(str);
                return this;
            }
            throw new IllegalArgumentException("No key specified.");
        }
    }

    private C1469j(C1471a c1471a) {
        this.f5539a = new Bundle(c1471a.f5541a);
        this.f5540b = c1471a.f5542b;
    }

    /* renamed from: a */
    public Bundle m5166a() {
        return this.f5539a;
    }

    /* renamed from: b */
    public String m5165b() {
        return this.f5540b;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("RequestParameters{extraParameters=");
        m8752j.append(this.f5539a);
        m8752j.append('}');
        return m8752j.toString();
    }
}
