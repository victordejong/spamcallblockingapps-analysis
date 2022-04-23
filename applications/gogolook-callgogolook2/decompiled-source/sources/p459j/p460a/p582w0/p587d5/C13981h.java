package p459j.p460a.p582w0.p587d5;

import android.content.Context;
import android.util.SparseArray;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p471b1.p472a.C11509c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.d5.h */
/* loaded from: classes3-dex2jar.jar:j/a/w0/d5/h.class */
public final class C13981h {

    /* renamed from: a */
    public static final SparseArray<C11507b> f31391a = new SparseArray<>();

    static {
        new C13981h();
    }

    /* renamed from: a */
    public static final C11507b m2937a(int i) {
        C11507b bVar = f31391a.get(i);
        if (bVar == null) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            bVar = new C11507b(new C11509c(o, "sub_pref_" + i, 0));
            f31391a.put(i, bVar);
        }
        return bVar;
    }
}
