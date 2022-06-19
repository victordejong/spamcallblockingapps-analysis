package com.google.firebase;

import android.content.Context;
import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/b.class */
public final /* synthetic */ class C8848b implements AbstractC9247b {

    /* renamed from: a */
    private final C8849c f38777a;

    /* renamed from: b */
    private final Context f38778b;

    private C8848b(C8849c c8849c, Context context) {
        this.f38777a = c8849c;
        this.f38778b = context;
    }

    /* renamed from: a */
    public static AbstractC9247b m2540a(C8849c c8849c, Context context) {
        return new C8848b(c8849c, context);
    }

    @Override // com.google.firebase.p313k.AbstractC9247b
    public Object get() {
        return C8849c.m2522r(this.f38777a, this.f38778b);
    }
}
