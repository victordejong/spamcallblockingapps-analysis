package com.flurry.sdk;

import android.content.Context;
import android.widget.Toast;
import com.flurry.sdk.jk;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jk$1$1.class */
public final class jk$1$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f3351a;

    /* renamed from: b */
    public final /* synthetic */ jk.1 f3352b;

    public jk$1$1(jk.1 r4, int i) {
        this.f3352b = r4;
        this.f3351a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = C0462kg.m4652a().f3460a;
        Toast.makeText(context, "SD HTTP Response Code: " + this.f3351a, 0).show();
    }
}
