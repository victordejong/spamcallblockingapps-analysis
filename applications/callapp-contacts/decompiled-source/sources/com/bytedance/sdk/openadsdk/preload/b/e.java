package com.bytedance.sdk.openadsdk.preload.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/e.class */
public interface e {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/e$a.class */
    public static class a implements e {
        @Override // com.bytedance.sdk.openadsdk.preload.b.e
        public <T> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    <T> T a(Class<T> cls);
}
