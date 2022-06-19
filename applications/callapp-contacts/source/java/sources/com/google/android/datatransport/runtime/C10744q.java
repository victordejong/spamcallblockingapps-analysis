package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.datatransport.AbstractC10680h;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.AbstractC10797e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10813h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10820o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.RunnableC10821p;
import java.util.Collections;
/* renamed from: com.google.android.datatransport.runtime.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/q.class */
public class C10744q implements AbstractC10743p {

    /* renamed from: b */
    private static volatile AbstractC10745r f34606b;

    /* renamed from: a */
    public final C10813h f34607a;

    /* renamed from: c */
    private final AbstractC10719a f34608c;

    /* renamed from: d */
    private final AbstractC10719a f34609d;

    /* renamed from: e */
    private final AbstractC10797e f34610e;

    public C10744q(AbstractC10719a abstractC10719a, AbstractC10719a abstractC10719a2, AbstractC10797e abstractC10797e, C10813h c10813h, C10820o c10820o) {
        this.f34608c = abstractC10719a;
        this.f34609d = abstractC10719a2;
        this.f34610e = abstractC10797e;
        this.f34607a = c10813h;
        c10820o.f34757a.execute(RunnableC10821p.m22331a(c10820o));
    }

    /* renamed from: a */
    public static C10744q m22441a() {
        AbstractC10745r abstractC10745r = f34606b;
        if (abstractC10745r != null) {
            return abstractC10745r.mo22437b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: a */
    public static void m22440a(Context context) {
        if (f34606b == null) {
            synchronized (C10744q.class) {
                try {
                    if (f34606b == null) {
                        f34606b = C10716d.m22494a().mo22434a(context).mo22435a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC10679g m22439a(AbstractC10726e abstractC10726e) {
        return new C10740m(abstractC10726e instanceof AbstractC10728f ? Collections.unmodifiableSet(((AbstractC10728f) abstractC10726e).mo22486c()) : Collections.singleton(C10627b.m22610a("proto")), AbstractC10738l.m22447d().mo22444a(abstractC10726e.mo22490a()).mo22443a(abstractC10726e.mo22489b()).mo22446a(), this);
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10743p
    /* renamed from: a */
    public final void mo22438a(AbstractC10736k abstractC10736k, AbstractC10680h abstractC10680h) {
        AbstractC10797e abstractC10797e = this.f34610e;
        AbstractC10738l mo22461a = abstractC10736k.mo22461a();
        abstractC10797e.mo22356a(AbstractC10738l.m22447d().mo22444a(mo22461a.mo22450a()).mo22445a(abstractC10736k.mo22459c().mo22607c()).mo22443a(mo22461a.mo22449b()).mo22446a(), AbstractC10730h.m22474i().mo22472a(this.f34608c.mo22491a()).mo22463b(this.f34609d.mo22491a()).mo22469a(abstractC10736k.mo22460b()).mo22471a(new C10729g(abstractC10736k.mo22457e(), abstractC10736k.mo22458d().apply(abstractC10736k.mo22459c().mo22608b()))).mo22470a(abstractC10736k.mo22459c().mo22609a()).mo22464b(), abstractC10680h);
    }
}
