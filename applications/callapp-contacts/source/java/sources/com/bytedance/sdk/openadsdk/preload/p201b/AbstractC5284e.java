package com.bytedance.sdk.openadsdk.preload.p201b;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/e.class */
public interface AbstractC5284e {

    /* renamed from: com.bytedance.sdk.openadsdk.preload.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/e$a.class */
    public static class C5285a implements AbstractC5284e {
        @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5284e
        /* renamed from: a */
        public <T> T mo32654a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    <T> T mo32654a(Class<T> cls);
}
