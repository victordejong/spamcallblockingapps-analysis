package com.freshchat.consumer.sdk.service.p065b;

import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import java.lang.ref.WeakReference;
/* renamed from: com.freshchat.consumer.sdk.service.b.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/b/c.class */
public class C1827c {

    /* renamed from: fI */
    private final AbstractC1906j f4696fI;

    /* renamed from: fJ */
    private final WeakReference<AbstractC1804a> f4697fJ;

    public C1827c(AbstractC1906j abstractC1906j, AbstractC1804a abstractC1804a) {
        this.f4696fI = abstractC1906j;
        this.f4697fJ = new WeakReference<>(abstractC1804a);
    }

    /* renamed from: du */
    public AbstractC1804a m39511du() {
        WeakReference<AbstractC1804a> weakReference = this.f4697fJ;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: dv */
    public AbstractC1906j m39510dv() {
        return this.f4696fI;
    }
}
