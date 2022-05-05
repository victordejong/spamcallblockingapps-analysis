package com.flurry.sdk;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.flurry.sdk.fr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fr.class */
public class C3109fr {

    /* renamed from: a */
    public static final String f5027a = "fr";

    /* renamed from: c */
    public static C3109fr f5028c;

    /* renamed from: e */
    public final AbstractC3344jl<C3002dq> f5031e = new AbstractC3344jl<C3002dq>() { // from class: com.flurry.sdk.fr.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3002dq dqVar) {
            C3109fr.m33053a(C3109fr.this);
        }
    };

    /* renamed from: b */
    public List<C3111a> f5029b = new LinkedList();

    /* renamed from: d */
    public volatile int f5030d = 0;

    /* renamed from: com.flurry.sdk.fr$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fr$a.class */
    public static final class C3111a {

        /* renamed from: a */
        public AbstractC3108fq f5033a;

        /* renamed from: b */
        public AbstractC3107fp f5034b;

        public C3111a(AbstractC3108fq fqVar, AbstractC3107fp fpVar) {
            this.f5033a = fqVar;
            this.f5034b = fpVar;
        }
    }

    /* renamed from: a */
    public static C3109fr m33055a() {
        C3109fr frVar;
        synchronized (C3109fr.class) {
            try {
                if (f5028c == null) {
                    f5028c = new C3109fr();
                }
                frVar = f5028c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return frVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m33053a(C3109fr frVar) {
        Iterator<C3111a> it = frVar.f5029b.iterator();
        while (it.hasNext()) {
            C3111a next = it.next();
            if (!next.f5033a.mo33056b()) {
                it.remove();
            } else if (next.f5033a.mo33057a()) {
                next.f5034b.mo32301a();
            }
        }
        if (frVar.f5029b.isEmpty()) {
            frVar.m33048f();
        }
    }

    /* renamed from: a */
    public final void m33054a(AbstractC3108fq fqVar, AbstractC3107fp fpVar) {
        synchronized (this) {
            if (fqVar == null || fpVar == null) {
                C3356jq.m32609b(f5027a, "TrackRule and TrackListener can not be null");
                return;
            }
            if (this.f5030d == 0) {
                m33049e();
            }
            String str = f5027a;
            C3356jq.m32615a(3, str, "Register rule: " + fqVar.toString() + " and its callback: " + fpVar.toString());
            this.f5029b.add(new C3111a(fqVar, fpVar));
        }
    }

    /* renamed from: b */
    public final void m33052b() {
        synchronized (this) {
            if (this.f5029b != null && !this.f5029b.isEmpty()) {
                if (this.f5030d == 2) {
                    C3356jq.m32615a(3, f5027a, "Tracker state: RUN, no need to resume again");
                    return;
                }
                C3356jq.m32615a(3, f5027a, "Resume tick listener");
                m33048f();
                m33049e();
                return;
            }
            C3356jq.m32615a(3, f5027a, "No record needs to track");
        }
    }

    /* renamed from: c */
    public final void m33051c() {
        synchronized (this) {
            if (this.f5029b != null && !this.f5029b.isEmpty()) {
                if (this.f5030d != 2) {
                    String str = f5027a;
                    C3356jq.m32615a(3, str, "Tracker state: " + this.f5030d + ", no need to pause again");
                    return;
                }
                C3356jq.m32615a(3, f5027a, "Pause tick listener");
                m33048f();
                return;
            }
            C3356jq.m32615a(3, f5027a, "Redundant call to pause tracker");
        }
    }

    /* renamed from: d */
    public final boolean m33050d() {
        synchronized (this) {
            return this.f5030d == 1;
        }
    }

    /* renamed from: e */
    public final void m33049e() {
        C3356jq.m32615a(4, f5027a, "Register tick listener");
        C3003dr.m33334a().m33333a(this.f5031e);
        this.f5030d = 2;
    }

    /* renamed from: f */
    public final void m33048f() {
        C3356jq.m32615a(4, f5027a, "Remove tick listener");
        C3003dr.m33334a().m33332b(this.f5031e);
        if (this.f5029b.isEmpty()) {
            this.f5030d = 0;
        } else {
            this.f5030d = 1;
        }
    }
}
