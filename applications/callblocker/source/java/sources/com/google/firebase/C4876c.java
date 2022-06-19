package com.google.firebase;

import android.content.Context;
import com.google.firebase.p163c.AbstractC4877a;
/* renamed from: com.google.firebase.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/c.class */
public final /* synthetic */ class C4876c implements AbstractC4877a {

    /* renamed from: a */
    private final C4865b f20963a;

    /* renamed from: b */
    private final Context f20964b;

    private C4876c(C4865b c4865b, Context context) {
        this.f20963a = c4865b;
        this.f20964b = context;
    }

    /* renamed from: a */
    public static AbstractC4877a m2125a(C4865b c4865b, Context context) {
        return new C4876c(c4865b, context);
    }

    @Override // com.google.firebase.p163c.AbstractC4877a
    /* renamed from: a */
    public Object mo2059a() {
        return C4865b.m2155a(this.f20963a, this.f20964b);
    }
}
