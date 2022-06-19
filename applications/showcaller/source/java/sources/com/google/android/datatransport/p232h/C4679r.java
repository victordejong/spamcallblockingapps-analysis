package com.google.android.datatransport.p232h;

import android.content.Context;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.datatransport.AbstractC4648g;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.p232h.p237x.AbstractC4695e;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4787l;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4791p;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.datatransport.h.r */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/r.class */
public class C4679r implements AbstractC4678q {

    /* renamed from: a */
    private static volatile AbstractC4680s f14245a;

    /* renamed from: b */
    private final AbstractC4746a f14246b;

    /* renamed from: c */
    private final AbstractC4746a f14247c;

    /* renamed from: d */
    private final AbstractC4695e f14248d;

    /* renamed from: e */
    private final C4787l f14249e;

    public C4679r(AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, AbstractC4695e abstractC4695e, C4787l c4787l, C4791p c4791p) {
        this.f14246b = abstractC4746a;
        this.f14247c = abstractC4746a2;
        this.f14248d = abstractC4695e;
        this.f14249e = c4787l;
        c4791p.m21770a();
    }

    /* renamed from: b */
    private AbstractC4664h m22012b(AbstractC4671l abstractC4671l) {
        return AbstractC4664h.m22065a().mo22045i(this.f14246b.mo21847a()).mo22043k(this.f14247c.mo21847a()).mo22044j(abstractC4671l.mo22031g()).mo22046h(new C4663g(abstractC4671l.mo22036b(), abstractC4671l.m22034d())).mo22047g(abstractC4671l.mo22035c().mo22182a()).mo22050d();
    }

    /* renamed from: c */
    public static C4679r m22011c() {
        AbstractC4680s abstractC4680s = f14245a;
        if (abstractC4680s != null) {
            return abstractC4680s.mo22005e();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: d */
    private static Set<C4602b> m22010d(AbstractC4661e abstractC4661e) {
        return abstractC4661e instanceof AbstractC4662f ? Collections.unmodifiableSet(((AbstractC4662f) abstractC4661e).mo22068a()) : Collections.singleton(C4602b.m22183b("proto"));
    }

    /* renamed from: f */
    public static void m22008f(Context context) {
        if (f14245a == null) {
            synchronized (C4679r.class) {
                try {
                    if (f14245a == null) {
                        f14245a = C4658d.m22072f().mo22003b(context).mo22004a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4678q
    /* renamed from: a */
    public void mo22013a(AbstractC4671l abstractC4671l, AbstractC4648g abstractC4648g) {
        this.f14248d.mo21977a(abstractC4671l.mo22032f().m22020e(abstractC4671l.mo22035c().mo22180c()), m22012b(abstractC4671l), abstractC4648g);
    }

    /* renamed from: e */
    public C4787l m22009e() {
        return this.f14249e;
    }

    /* renamed from: g */
    public AbstractC4647f m22007g(AbstractC4661e abstractC4661e) {
        return new C4675n(m22010d(abstractC4661e), AbstractC4673m.m22024a().mo22018b(abstractC4661e.getName()).mo22017c(abstractC4661e.mo22069b()).mo22019a(), this);
    }
}
