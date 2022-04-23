package p459j.p460a.p474c0.p491g.p496e0;

import javax.annotation.concurrent.ThreadSafe;
import p081h.p203i.p316b.p317a.C9301k;
@ThreadSafe
/* renamed from: j.a.c0.g.e0.a */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/a.class */
public class C12007a {

    /* renamed from: a */
    public volatile int f26899a;

    /* renamed from: b */
    public volatile AbstractC12008a f26900b;

    /* renamed from: j.a.c0.g.e0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/a$a.class */
    public interface AbstractC12008a {
        /* renamed from: a */
        void m7553a(int i);
    }

    /* renamed from: a */
    public int m7556a() {
        return this.f26899a;
    }

    /* renamed from: a */
    public void m7555a(int i) {
        C9301k.m15476a((i >= 0 && i <= 100) || i == -1);
        this.f26899a = i;
        m7554b();
    }

    /* renamed from: b */
    public final void m7554b() {
        AbstractC12008a aVar = this.f26900b;
        if (aVar != null) {
            aVar.m7553a(this.f26899a);
        }
    }
}
