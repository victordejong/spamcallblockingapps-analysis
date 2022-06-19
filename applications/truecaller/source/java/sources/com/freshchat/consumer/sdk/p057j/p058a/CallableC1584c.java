package com.freshchat.consumer.sdk.p057j.p058a;

import java.io.Writer;
import java.util.concurrent.Callable;
/* renamed from: com.freshchat.consumer.sdk.j.a.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/c.class */
public class CallableC1584c implements Callable<Void> {

    /* renamed from: qJ */
    public final /* synthetic */ C1579b f4289qJ;

    public CallableC1584c(C1579b c1579b) {
        this.f4289qJ = c1579b;
    }

    /* renamed from: jV */
    public Void call() throws Exception {
        Writer writer;
        boolean m40440jT;
        synchronized (this.f4289qJ) {
            writer = this.f4289qJ.f4271oo;
            if (writer == null) {
                return null;
            }
            this.f4289qJ.trimToSize();
            m40440jT = this.f4289qJ.m40440jT();
            if (m40440jT) {
                this.f4289qJ.m40441jS();
                this.f4289qJ.f4273qF = 0;
            }
            return null;
        }
    }
}
