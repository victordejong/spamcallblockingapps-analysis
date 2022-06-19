package com.bytedance.sdk.adnet.face;

import com.bytedance.sdk.adnet.core.Header;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.adnet.face.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/face/a.class */
public interface AbstractC4246a {

    /* renamed from: com.bytedance.sdk.adnet.face.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/face/a$a.class */
    public static class C4247a {

        /* renamed from: a */
        public int f15503a;

        /* renamed from: b */
        public byte[] f15504b;

        /* renamed from: c */
        public String f15505c;

        /* renamed from: d */
        public long f15506d;

        /* renamed from: e */
        public long f15507e;

        /* renamed from: f */
        public long f15508f;

        /* renamed from: g */
        public long f15509g;

        /* renamed from: h */
        public Map<String, String> f15510h = Collections.emptyMap();

        /* renamed from: i */
        public List<Header> f15511i;

        /* renamed from: a */
        public boolean m36065a() {
            return this.f15508f < System.currentTimeMillis();
        }

        /* renamed from: b */
        public boolean m36064b() {
            return this.f15509g < System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    C4247a mo36067a(String str);

    /* renamed from: a */
    void mo36068a();

    /* renamed from: a */
    void mo36066a(String str, C4247a c4247a);
}
