package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.firebase.iid.ah */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ah.class */
final class C4947ah {

    /* renamed from: a */
    final Intent f21083a;

    /* renamed from: b */
    private final C4470h<Void> f21084b = new C4470h<>();

    public C4947ah(Intent intent) {
        this.f21083a = intent;
    }

    /* renamed from: a */
    public final AbstractC4469g<Void> m1965a() {
        return this.f21084b.m3889a();
    }

    /* renamed from: b */
    public final void m1964b() {
        this.f21084b.m3885b((C4470h<Void>) null);
    }

    /* renamed from: c */
    public final /* synthetic */ void m1963c() {
        String action = this.f21083a.getAction();
        Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(action).length() + 61).append("Service took too long to process intent: ").append(action).append(" App may get closed.").toString());
        m1964b();
    }
}
