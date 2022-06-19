package com.google.firebase.p083m;

import android.content.Context;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import com.google.firebase.p083m.C2417h;
/* renamed from: com.google.firebase.m.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/g.class */
final /* synthetic */ class C2416g implements h {

    /* renamed from: a */
    private final String f10600a;

    /* renamed from: b */
    private final C2417h.AbstractC2418a f10601b;

    private C2416g(String str, C2417h.AbstractC2418a abstractC2418a) {
        this.f10600a = str;
        this.f10601b = abstractC2418a;
    }

    /* renamed from: b */
    public static h m3716b(String str, C2417h.AbstractC2418a abstractC2418a) {
        return new C2416g(str, abstractC2418a);
    }

    /* renamed from: a */
    public Object m3717a(e eVar) {
        f a;
        a = f.a(this.f10600a, this.f10601b.m3712a((Context) eVar.a(Context.class)));
        return a;
    }
}
