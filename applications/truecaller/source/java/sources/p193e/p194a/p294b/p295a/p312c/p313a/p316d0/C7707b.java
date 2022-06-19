package p193e.p194a.p294b.p295a.p312c.p313a.p316d0;

import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p294b.p295a.p329i.AbstractC7833a;
import s1.f0.r;
/* renamed from: e.a.b.a.c.a.d0.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/d0/b.class */
public final class C7707b implements AbstractC7706a {
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p316d0.AbstractC7706a
    /* renamed from: a */
    public AbstractC7833a mo29432a(String str) {
        return str == null || r.p(str) ? new AbstractC7833a.C7834a.C7835a(C3478R.string.BusinessProfileOnboarding_NameNotEntered) : C22128a.m8648Z0("^(?=.{2,50}$)([a-zA-Z]+[ ]?[a-zA-Z1-9_]*)+$", str) ? AbstractC7833a.C7836b.f24379b : new AbstractC7833a.C7834a(C3478R.string.BusinessProfileOnboarding_NameInvalidError);
    }
}
