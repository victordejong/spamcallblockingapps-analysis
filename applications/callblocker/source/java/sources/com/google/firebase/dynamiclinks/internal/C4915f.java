package com.google.firebase.dynamiclinks.internal;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.C2489c;
import com.google.android.gms.common.internal.safeparcel.C2666d;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import com.google.firebase.C4865b;
import com.google.firebase.analytics.connector.AbstractC4859a;
import com.google.firebase.dynamiclinks.AbstractC4908a;
import com.google.firebase.dynamiclinks.C4909b;
/* renamed from: com.google.firebase.dynamiclinks.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/f.class */
public final class C4915f extends AbstractC4908a {

    /* renamed from: a */
    private final C2489c<C2471a.AbstractC2475d.C2479d> f21037a;

    /* renamed from: b */
    private final AbstractC4859a f21038b;

    private C4915f(C2489c<C2471a.AbstractC2475d.C2479d> c2489c, AbstractC4859a abstractC4859a) {
        this.f21037a = c2489c;
        this.f21038b = abstractC4859a;
        if (abstractC4859a == null) {
            Log.w("FDL", "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events.");
        }
    }

    public C4915f(C4865b c4865b, AbstractC4859a abstractC4859a) {
        this(new C4913d(c4865b.m2160a()), abstractC4859a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.dynamiclinks.AbstractC4908a
    /* renamed from: a */
    public final AbstractC4469g<C4909b> mo2030a(Intent intent) {
        AbstractC4469g m14432a = this.f21037a.m14432a(new C4920k(this.f21038b, intent.getDataString()));
        C4910a c4910a = (C4910a) C2666d.m13920a(intent, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA", C4910a.CREATOR);
        C4909b c4909b = c4910a != null ? new C4909b(c4910a) : null;
        return c4909b != null ? C4473j.m3880a(c4909b) : m14432a;
    }
}
