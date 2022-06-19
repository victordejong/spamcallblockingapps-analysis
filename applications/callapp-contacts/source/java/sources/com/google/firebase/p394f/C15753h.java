package com.google.firebase.p394f;

import android.content.Context;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15633h;
import com.google.firebase.p394f.C15751g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.f.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/h.class */
public final /* synthetic */ class C15753h implements AbstractC15633h {

    /* renamed from: a */
    private final String f56096a;

    /* renamed from: b */
    private final C15751g.AbstractC15752a f56097b;

    private C15753h(String str, C15751g.AbstractC15752a abstractC15752a) {
        this.f56096a = str;
        this.f56097b = abstractC15752a;
    }

    /* renamed from: a */
    public static AbstractC15633h m8456a(String str, C15751g.AbstractC15752a abstractC15752a) {
        return new C15753h(str, abstractC15752a);
    }

    @Override // com.google.firebase.components.AbstractC15633h
    public final Object create(AbstractC15627e abstractC15627e) {
        return AbstractC15750f.m8460a(this.f56096a, this.f56097b.mo8453a((Context) abstractC15627e.mo8532a(Context.class)));
    }
}
