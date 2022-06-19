package com.bytedance.sdk.openadsdk.dislike;

import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.dislike.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/a.class */
public class C4851a {

    /* renamed from: a */
    private static volatile C4851a f17776a;

    /* renamed from: b */
    private final AbstractC4635o<C4805a> f17777b = C4600n.m34807f();

    private C4851a() {
    }

    /* renamed from: a */
    public static C4851a m33740a() {
        if (f17776a == null) {
            synchronized (C4851a.class) {
                try {
                    if (f17776a == null) {
                        f17776a = new C4851a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17776a;
    }

    /* renamed from: a */
    public void m33739a(C4557i c4557i, List<FilterWord> list) {
        this.f17777b.mo34678a(c4557i, list);
    }
}
