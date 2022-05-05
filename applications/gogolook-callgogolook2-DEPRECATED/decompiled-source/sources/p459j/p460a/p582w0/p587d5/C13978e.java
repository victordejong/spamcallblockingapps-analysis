package p459j.p460a.p582w0.p587d5;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.Person;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.DefaultSettingList;
import java.util.Map;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p471b1.p472a.C11509c;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.p590x4.C14313z;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.d5.e */
/* loaded from: classes3-dex2jar.jar:j/a/w0/d5/e.class */
public final class C13978e {

    /* renamed from: a */
    public static final C11507b f31386a;

    /* renamed from: b */
    public static C13979f f31387b;

    /* renamed from: c */
    public static final C13978e f31388c = new C13978e();

    static {
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        f31386a = new C11507b(new C11509c(o, "share_pref", 0));
        C13979f fVar = new C13979f();
        fVar.m2941a(DefaultSettingList.Companion.m28434a());
        f31386a.m9468a(fVar);
        f31387b = fVar;
    }

    /* renamed from: a */
    public static final void m2948a() {
        C14313z.m1606e();
        f31388c.m2944a(DefaultSettingList.Companion.m28434a());
    }

    /* renamed from: a */
    public static final boolean m2947a(String str) {
        C15149k.m377b(str, Person.KEY_KEY);
        C13979f fVar = f31387b;
        return (fVar.mo2938d(str) == null && fVar.mo2942a(str) == null && fVar.mo2939c(str) == null && fVar.mo2940b(str) == null) ? false : true;
    }

    /* renamed from: a */
    public static final boolean m2946a(String str, int i) {
        C15149k.m377b(str, Person.KEY_KEY);
        C11507b bVar = f31386a;
        boolean z = false;
        if (!bVar.m9463a(str) || bVar.m9461a(str, (Integer) 0) != i) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static final boolean m2945a(String str, String str2) {
        C15149k.m377b(str, Person.KEY_KEY);
        C15149k.m377b(str2, C13032a.f29462d);
        C11507b bVar = f31386a;
        boolean z = false;
        if (!bVar.m9463a(str) || !C14966w.m714b(bVar.m9458a(str, ""), str2, false, 2, null)) {
            z = true;
        }
        return z;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m2944a(Map<String, ? extends Object> map) {
        f31387b.m2941a(map);
    }
}
