package com.bytedance.sdk.adnet.face;

import com.bytedance.sdk.adnet.core.Header;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/face/a.class */
public interface a {

    /* renamed from: com.bytedance.sdk.adnet.face.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/face/a$a.class */
    public static class C0159a {

        /* renamed from: a  reason: collision with root package name */
        public int f8362a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f8363b;

        /* renamed from: c  reason: collision with root package name */
        public String f8364c;

        /* renamed from: d  reason: collision with root package name */
        public long f8365d;
        public long e;
        public long f;
        public long g;
        public Map<String, String> h = Collections.emptyMap();
        public List<Header> i;

        public boolean a() {
            return this.f < System.currentTimeMillis();
        }

        public boolean b() {
            return this.g < System.currentTimeMillis();
        }
    }

    C0159a a(String str);

    void a();

    void a(String str, C0159a aVar);
}
