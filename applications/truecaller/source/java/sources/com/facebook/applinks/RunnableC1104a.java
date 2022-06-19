package com.facebook.applinks;

import android.content.Context;
import com.facebook.applinks.C1105b;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.applinks.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/applinks/a.class */
public final class RunnableC1104a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f3036a;

    /* renamed from: b */
    public final /* synthetic */ String f3037b;

    /* renamed from: c */
    public final /* synthetic */ C1105b.AbstractC1106a f3038c;

    public RunnableC1104a(Context context, String str, C1105b.AbstractC1106a abstractC1106a) {
        this.f3036a = context;
        this.f3037b = str;
        this.f3038c = abstractC1106a;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1105b.m41755a(this.f3036a, this.f3037b, this.f3038c);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
