package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* renamed from: com.appsflyer.internal.be */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/be.class */
public final class C0767be implements AbstractC0768bf {
    private final int AFInAppEventParameterName = (int) TimeUnit.SECONDS.toMillis(30);
    private C0766bd AFInAppEventType;
    @Nullable
    public Context AFKeystoreWrapper;
    private C0836y AFVersionDeclaration;
    private RunnableC0754av valueOf;
    private ExecutorService values;

    @Override // com.appsflyer.internal.AbstractC0768bf
    public final C0766bd AFInAppEventParameterName() {
        if (this.AFInAppEventType == null) {
            this.AFInAppEventType = new C0766bd();
        }
        return this.AFInAppEventType;
    }

    @Override // com.appsflyer.internal.AbstractC0768bf
    public final C0827o AFInAppEventType() {
        Context context = this.AFKeystoreWrapper;
        if (context != null) {
            return new C0827o(context);
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    @Override // com.appsflyer.internal.AbstractC0768bf
    public final RunnableC0754av valueOf() {
        if (this.valueOf == null) {
            if (this.AFInAppEventType == null) {
                this.AFInAppEventType = new C0766bd();
            }
            C0766bd c0766bd = this.AFInAppEventType;
            Context context = this.AFKeystoreWrapper;
            if (context == null) {
                throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
            }
            C0770bh c0770bh = new C0770bh(context);
            Context context2 = this.AFKeystoreWrapper;
            if (context2 == null) {
                throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
            }
            C0765bc c0765bc = new C0765bc(C0726ai.values(context2));
            if (this.values == null) {
                this.values = Executors.newCachedThreadPool();
            }
            ExecutorService executorService = this.values;
            if (this.AFVersionDeclaration == null) {
                C0773bj c0773bj = new C0773bj(this.AFInAppEventParameterName);
                if (this.values == null) {
                    this.values = Executors.newCachedThreadPool();
                }
                this.AFVersionDeclaration = new C0836y(c0773bj, this.values);
            }
            C0836y c0836y = this.AFVersionDeclaration;
            Context context3 = this.AFKeystoreWrapper;
            if (context3 == null) {
                throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
            }
            this.valueOf = new RunnableC0754av(c0766bd, c0770bh, c0765bc, executorService, new C0769bg(c0836y, new C0827o(context3)));
        }
        return this.valueOf;
    }
}
