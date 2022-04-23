package com.google.firebase.f;

import android.content.Context;
import com.google.firebase.components.b;
import com.google.firebase.components.r;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/g.class */
public final class g {

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/f/g$a.class */
    public interface a<T> {
        String a(T t);
    }

    private g() {
    }

    public static b<?> a(String str, a<Context> aVar) {
        return b.b(f.class).a(r.b(Context.class)).a(h.a(str, aVar)).a();
    }

    public static b<?> a(String str, String str2) {
        return b.a(f.a(str, str2), f.class);
    }
}
