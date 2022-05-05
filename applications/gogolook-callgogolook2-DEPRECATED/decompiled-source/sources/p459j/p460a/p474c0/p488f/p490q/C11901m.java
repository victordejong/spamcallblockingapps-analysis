package p459j.p460a.p474c0.p488f.p490q;

import kotlinx.coroutines.CoroutineDispatcher;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.f.q.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/m.class */
public final class C11901m {

    /* renamed from: a */
    public String f26683a;

    /* renamed from: b */
    public String f26684b;

    /* renamed from: c */
    public CoroutineDispatcher f26685c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C11901m(C11901m mVar) {
        this(mVar.f26683a, mVar.f26684b, mVar.f26685c);
        C15149k.m377b(mVar, "other");
        this.f26683a = mVar.f26683a;
        this.f26684b = mVar.f26684b;
        this.f26685c = mVar.f26685c;
    }

    public C11901m(String str, String str2, CoroutineDispatcher coroutineDispatcher) {
        C15149k.m377b(str, "buildId");
        C15149k.m377b(str2, "jobClassName");
        C15149k.m377b(coroutineDispatcher, "dispatcher");
        this.f26683a = str;
        this.f26684b = str2;
        this.f26685c = coroutineDispatcher;
    }

    /* renamed from: a */
    public final String m7971a() {
        return this.f26683a;
    }

    /* renamed from: a */
    public final void m7970a(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f26683a = str;
    }

    /* renamed from: a */
    public final void m7969a(CoroutineDispatcher coroutineDispatcher) {
        C15149k.m377b(coroutineDispatcher, "<set-?>");
        this.f26685c = coroutineDispatcher;
    }

    /* renamed from: b */
    public final CoroutineDispatcher m7968b() {
        return this.f26685c;
    }
}
