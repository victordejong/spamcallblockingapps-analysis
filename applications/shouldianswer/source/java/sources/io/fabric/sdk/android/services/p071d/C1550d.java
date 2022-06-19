package io.fabric.sdk.android.services.p071d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.fabric.sdk.android.AbstractC1459h;
/* renamed from: io.fabric.sdk.android.services.d.d */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/d/d.class */
public class C1550d implements AbstractC1549c {

    /* renamed from: a */
    private final SharedPreferences f4203a;

    /* renamed from: b */
    private final String f4204b;

    /* renamed from: c */
    private final Context f4205c;

    public C1550d(Context context, String str) {
        if (context != null) {
            this.f4205c = context;
            this.f4204b = str;
            this.f4203a = this.f4205c.getSharedPreferences(this.f4204b, 0);
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Deprecated
    public C1550d(AbstractC1459h abstractC1459h) {
        this(abstractC1459h.getContext(), abstractC1459h.getClass().getName());
    }

    @Override // io.fabric.sdk.android.services.p071d.AbstractC1549c
    /* renamed from: a */
    public SharedPreferences mo3337a() {
        return this.f4203a;
    }

    @Override // io.fabric.sdk.android.services.p071d.AbstractC1549c
    /* renamed from: a */
    public boolean mo3336a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
            return true;
        }
        return editor.commit();
    }

    @Override // io.fabric.sdk.android.services.p071d.AbstractC1549c
    /* renamed from: b */
    public SharedPreferences.Editor mo3335b() {
        return this.f4203a.edit();
    }
}
