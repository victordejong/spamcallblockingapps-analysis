package com.huawei.hms.aaid.plugin;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/plugin/ProxyCenter.class */
public class ProxyCenter {
    public PushProxy proxy;

    /* renamed from: com.huawei.hms.aaid.plugin.ProxyCenter$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/plugin/ProxyCenter$a.class */
    public static class C2245a {

        /* renamed from: a */
        public static ProxyCenter f7245a = new ProxyCenter();
    }

    public static ProxyCenter getInstance() {
        return C2245a.f7245a;
    }

    public static PushProxy getProxy() {
        return getInstance().proxy;
    }

    public static void register(PushProxy pushProxy) {
        getInstance().proxy = pushProxy;
    }
}
