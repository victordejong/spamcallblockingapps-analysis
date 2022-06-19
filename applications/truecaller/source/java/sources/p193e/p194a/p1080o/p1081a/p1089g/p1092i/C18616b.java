package p193e.p194a.p1080o.p1081a.p1089g.p1092i;

import android.os.Bundle;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.p159db.reason.CallReason;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001f\u0010\f\u001a\u0004\u0018\u00010\u00078V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00038��@��X\u0081.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00148V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\t\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001e\u001a\u00020\u00198\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Le/a/o/a/g/i/b;", "Le/a/o/a/g/a;", "Le/a/o/a/g/i/e;", "Le/a/o/a/g/i/d;", "Ls1/s;", "t7", "()V", "Lcom/truecaller/contextcall/db/reason/CallReason;", "l", "Ls1/g;", "T3", "()Lcom/truecaller/contextcall/db/reason/CallReason;", "callReason", "i", "Le/a/o/a/g/i/d;", "getAddCallReasonPresenter$context_call_release", "()Le/a/o/a/g/i/d;", "setAddCallReasonPresenter$context_call_release", "(Le/a/o/a/g/i/d;)V", "addCallReasonPresenter", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "k", "r", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "requestedCallOptions", "Le/a/o/a/g/d;", "j", "Le/a/o/a/g/d;", "RA", "()Le/a/o/a/g/d;", "type", "<init>", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.g.i.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/b.class */
public final class C18616b extends AbstractC18584a<AbstractC18621e, AbstractC18620d> implements AbstractC18621e {
    @Inject

    /* renamed from: i */
    public AbstractC18620d f52412i;

    /* renamed from: j */
    public final AbstractC18591d f52413j = AbstractC18591d.C18595d.f52378a;

    /* renamed from: k */
    public final g f52414k = C25225a.m3978P1(new C18618b());

    /* renamed from: l */
    public final g f52415l = C25225a.m3978P1(new C18617a());

    /* renamed from: e.a.o.a.g.i.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/b$a.class */
    public static final class C18617a extends m implements a<CallReason> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18617a() {
            super(0);
            C18616b.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C18616b.this.getArguments();
            CallReason callReason = arguments != null ? (CallReason) arguments.getParcelable("CallReason") : null;
            if (!(callReason instanceof CallReason)) {
                callReason = null;
            }
            return callReason;
        }
    }

    /* renamed from: e.a.o.a.g.i.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/b$b.class */
    public static final class C18618b extends m implements a<InitiateCallHelper.CallOptions> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18618b() {
            super(0);
            C18616b.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C18616b.this.getArguments();
            InitiateCallHelper.CallOptions callOptions = arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null;
            if (!(callOptions instanceof InitiateCallHelper.CallOptions)) {
                callOptions = null;
            }
            if (callOptions != null) {
                return callOptions;
            }
            throw new IllegalArgumentException("Call options needs to be set");
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: QA */
    public AbstractC18621e mo14710QA() {
        return this;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: RA */
    public AbstractC18591d mo14709RA() {
        return this.f52413j;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: SA */
    public AbstractC18620d mo14708SA() {
        AbstractC18620d abstractC18620d = this.f52412i;
        if (abstractC18620d != null) {
            return abstractC18620d;
        }
        l.l("addCallReasonPresenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1092i.AbstractC18621e
    /* renamed from: T3 */
    public CallReason mo14719T3() {
        return (CallReason) this.f52415l.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1092i.AbstractC18621e
    /* renamed from: r */
    public InitiateCallHelper.CallOptions mo14718r() {
        return (InitiateCallHelper.CallOptions) this.f52414k.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a, p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: t7 */
    public void mo14720t7() {
        super.mo14720t7();
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }
}
