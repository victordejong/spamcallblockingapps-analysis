package com.google.firebase.p083m;

import android.content.Context;
import com.google.firebase.components.d;
import com.google.firebase.components.q;
/* renamed from: com.google.firebase.m.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/h.class */
public class C2417h {

    /* renamed from: com.google.firebase.m.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/m/h$a.class */
    public interface AbstractC2418a<T> {
        /* renamed from: a */
        String m3712a(T t);
    }

    /* renamed from: a */
    public static d<?> m3715a(String str, String str2) {
        return d.g(f.a(str, str2), f.class);
    }

    /* renamed from: b */
    public static d<?> m3714b(String str, AbstractC2418a<Context> aVar) {
        d.b h = d.h(f.class);
        h.b(q.i(Context.class));
        h.f(C2416g.m3716b(str, aVar));
        return h.d();
    }
}
