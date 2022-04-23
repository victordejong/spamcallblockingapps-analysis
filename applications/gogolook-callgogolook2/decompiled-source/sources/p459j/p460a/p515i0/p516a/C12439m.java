package p459j.p460a.p515i0.p516a;

import android.content.Context;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p471b1.p472a.C11509c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.i0.a.m */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/m.class */
public final class C12439m {

    /* renamed from: a */
    public static final C11507b f28038a;

    static {
        new C12439m();
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        f28038a = new C11507b(new C11509c(o, "offline_db_prefs", 0));
    }

    /* renamed from: a */
    public static final int m6163a() {
        return f28038a.m9461a("last_time_notify_to_update_offline_db_version", (Integer) 0);
    }

    /* renamed from: a */
    public static final void m6162a(int i) {
        f28038a.m9459a("last_time_notify_to_update_offline_db_version", (String) Integer.valueOf(i));
    }
}
