package com.appsflyer.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.appsflyer.internal.bi */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bi.class */
public final class C0771bi<ResponseBody> {
    public final AtomicBoolean AFInAppEventParameterName = new AtomicBoolean(false);
    public final C0773bj AFInAppEventType;
    public final AbstractC0777bn<ResponseBody> AFKeystoreWrapper;
    public final C0831v valueOf;
    public final ExecutorService values;

    public C0771bi(C0831v c0831v, ExecutorService executorService, C0773bj c0773bj, AbstractC0777bn<ResponseBody> abstractC0777bn) {
        this.valueOf = c0831v;
        this.values = executorService;
        this.AFInAppEventType = c0773bj;
        this.AFKeystoreWrapper = abstractC0777bn;
    }
}
