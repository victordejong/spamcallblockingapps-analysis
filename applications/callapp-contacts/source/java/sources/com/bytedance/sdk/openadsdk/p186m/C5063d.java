package com.bytedance.sdk.openadsdk.p186m;

import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.m.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/d.class */
class C5063d implements AbstractC5057a {

    /* renamed from: a */
    private static volatile C5063d f18312a;

    private C5063d() {
    }

    /* renamed from: c */
    public static C5063d m33136c() {
        if (f18312a == null) {
            synchronized (C5063d.class) {
                try {
                    if (f18312a == null) {
                        f18312a = new C5063d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18312a;
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: a */
    public void mo33139a() {
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: a */
    public void mo33138a(List<String> list) {
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: b */
    public void mo33137b() {
    }
}
