package io.fabric.sdk.android.services.p069c;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.C1480i;
/* renamed from: io.fabric.sdk.android.services.c.i */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/c/i.class */
public class RunnableC1516i implements Runnable {

    /* renamed from: a */
    private final Context f4147a;

    /* renamed from: b */
    private final AbstractC1512e f4148b;

    public RunnableC1516i(Context context, AbstractC1512e abstractC1512e) {
        this.f4147a = context;
        this.f4148b = abstractC1512e;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C1480i.m3503a(this.f4147a, "Performing time based file roll over.");
            if (this.f4148b.rollFileOver()) {
                return;
            }
            this.f4148b.cancelTimeBasedFileRollOver();
        } catch (Exception e) {
            C1480i.m3501a(this.f4147a, "Failed to roll over file", e);
        }
    }
}
