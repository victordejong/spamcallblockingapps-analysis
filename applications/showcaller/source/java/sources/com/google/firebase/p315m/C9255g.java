package com.google.firebase.p315m;

import android.content.Context;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8867h;
import com.google.firebase.p315m.C9256h;
/* renamed from: com.google.firebase.m.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/g.class */
public final /* synthetic */ class C9255g implements AbstractC8867h {

    /* renamed from: a */
    private final String f39693a;

    /* renamed from: b */
    private final C9256h.AbstractC9257a f39694b;

    private C9255g(String str, C9256h.AbstractC9257a abstractC9257a) {
        this.f39693a = str;
        this.f39694b = abstractC9257a;
    }

    /* renamed from: b */
    public static AbstractC8867h m1401b(String str, C9256h.AbstractC9257a abstractC9257a) {
        return new C9255g(str, abstractC9257a);
    }

    @Override // com.google.firebase.components.AbstractC8867h
    /* renamed from: a */
    public Object mo1136a(AbstractC8861e abstractC8861e) {
        AbstractC9254f m1404a;
        m1404a = AbstractC9254f.m1404a(this.f39693a, this.f39694b.mo1397a((Context) abstractC8861e.mo2417a(Context.class)));
        return m1404a;
    }
}
