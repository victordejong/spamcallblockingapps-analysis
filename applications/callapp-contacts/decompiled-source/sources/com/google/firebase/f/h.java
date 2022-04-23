package com.google.firebase.f;

import android.content.Context;
import com.google.firebase.components.e;
import com.google.firebase.f.g;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/h.class */
final /* synthetic */ class h implements com.google.firebase.components.h {

    /* renamed from: a  reason: collision with root package name */
    private final String f32311a;

    /* renamed from: b  reason: collision with root package name */
    private final g.a f32312b;

    private h(String str, g.a aVar) {
        this.f32311a = str;
        this.f32312b = aVar;
    }

    public static com.google.firebase.components.h a(String str, g.a aVar) {
        return new h(str, aVar);
    }

    @Override // com.google.firebase.components.h
    public final Object create(e eVar) {
        return f.a(this.f32311a, this.f32312b.a((Context) eVar.a(Context.class)));
    }
}
