package p193e.p194a.p294b.p336i.p338i;

import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackAction;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackContext;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p336i.p337h.C7927b;
import p193e.p194a.p294b.p336i.p338i.p339e.AbstractC7932a;
import p193e.p194a.p294b.p336i.p338i.p339e.AbstractC7935c;
import p193e.p194a.p294b.p336i.p340j.p341a.AbstractC7938a;
import q3.a.i0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.i.i.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/i/d.class */
public final class C7931d implements AbstractC7928a, i0 {

    /* renamed from: a */
    public final AbstractC7938a f24563a;

    /* renamed from: b */
    public final AbstractC7935c f24564b;

    /* renamed from: c */
    public final AbstractC7932a f24565c;

    /* renamed from: d */
    public final C7927b f24566d;

    /* renamed from: e */
    public final f f24567e;

    @Inject
    public C7931d(AbstractC7938a abstractC7938a, AbstractC7935c abstractC7935c, AbstractC7932a abstractC7932a, C7927b c7927b, @Named("IO") f fVar) {
        l.e(abstractC7938a, "callMeBackDao");
        l.e(abstractC7935c, "callMeBackNumberStatusStubManager");
        l.e(abstractC7932a, "callMeBackRequestStubManagerImpl");
        l.e(c7927b, "bizCallMeBackAnalyticHelper");
        l.e(fVar, "asyncContext");
        this.f24563a = abstractC7938a;
        this.f24564b = abstractC7935c;
        this.f24565c = abstractC7932a;
        this.f24566d = c7927b;
        this.f24567e = fVar;
    }

    /* renamed from: a */
    public static final void m29096a(C7931d c7931d, String str, String str2, String str3, boolean z) {
        Objects.requireNonNull(c7931d);
        c7931d.f24566d.m29103a(z ? BizCallMeBackContext.PACS : BizCallMeBackContext.FACS, BizCallMeBackAction.HIDE_CALL_ME_BACK, str3, C18334g0.m15258K0(str), str2);
    }

    public f getCoroutineContext() {
        return this.f24567e;
    }
}
