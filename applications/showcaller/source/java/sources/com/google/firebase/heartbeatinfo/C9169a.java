package com.google.firebase.heartbeatinfo;

import android.content.Context;
import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.heartbeatinfo.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/a.class */
public final /* synthetic */ class C9169a implements AbstractC9247b {

    /* renamed from: a */
    private final Context f39496a;

    private C9169a(Context context) {
        this.f39496a = context;
    }

    /* renamed from: a */
    public static AbstractC9247b m1657a(Context context) {
        return new C9169a(context);
    }

    @Override // com.google.firebase.p313k.AbstractC9247b
    public Object get() {
        C9174f m1649a;
        m1649a = C9174f.m1649a(this.f39496a);
        return m1649a;
    }
}
