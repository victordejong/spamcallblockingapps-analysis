package p193e.p194a.p1080o.p1081a.p1089g.p1091h;

import android.os.Bundle;
import com.truecaller.contextcall.p159db.reason.CallReason;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\f\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00038��@��X\u0081.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Le/a/o/a/g/h/a;", "Le/a/o/a/g/a;", "Le/a/o/a/g/h/d;", "Le/a/o/a/g/h/c;", "Lcom/truecaller/contextcall/db/reason/CallReason;", "T3", "()Lcom/truecaller/contextcall/db/reason/CallReason;", "Le/a/o/a/g/d;", "j", "Le/a/o/a/g/d;", "RA", "()Le/a/o/a/g/d;", "type", "i", "Le/a/o/a/g/h/c;", "getAddCallReasonPresenter$context_call_release", "()Le/a/o/a/g/h/c;", "setAddCallReasonPresenter$context_call_release", "(Le/a/o/a/g/h/c;)V", "addCallReasonPresenter", "<init>", "()V", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.g.h.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/h/a.class */
public final class C18608a extends AbstractC18584a<AbstractC18611d, AbstractC18610c> implements AbstractC18611d {
    @Inject

    /* renamed from: i */
    public AbstractC18610c f52396i;

    /* renamed from: j */
    public final AbstractC18591d f52397j = AbstractC18591d.C18593b.f52376a;

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: QA */
    public AbstractC18611d mo14710QA() {
        return this;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: RA */
    public AbstractC18591d mo14709RA() {
        return this.f52397j;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: SA */
    public AbstractC18610c mo14708SA() {
        AbstractC18610c abstractC18610c = this.f52396i;
        if (abstractC18610c != null) {
            return abstractC18610c;
        }
        l.l("addCallReasonPresenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1091h.AbstractC18611d
    /* renamed from: T3 */
    public CallReason mo14730T3() {
        CallReason callReason;
        Bundle arguments = getArguments();
        if (arguments == null || (callReason = (CallReason) arguments.getParcelable("CallReason")) == null) {
            throw new IllegalArgumentException("Call reason needs to be set");
        }
        return callReason;
    }
}
