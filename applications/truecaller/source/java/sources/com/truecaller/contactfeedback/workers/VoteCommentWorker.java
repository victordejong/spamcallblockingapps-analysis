package com.truecaller.contactfeedback.workers;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p194a.p1138q.p1142f.AbstractC19393a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B%\b\u0001\u0012\b\b\u0001\u0010\r\u001a\u00020\f\u0012\b\b\u0001\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u0002*\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;", "Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker$a;", "n", "(Ls1/w/d;)Ljava/lang/Object;", "", "o", "(Z)Landroidx/work/ListenableWorker$a;", "Le/a/q/f/a;", "d", "Le/a/q/f/a;", "commentFeedbackGrpcApiManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/f/a;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/VoteCommentWorker.class */
public final class VoteCommentWorker extends CoroutineWorker {

    /* renamed from: d */
    public final AbstractC19393a f11368d;

    @e(c = "com.truecaller.contactfeedback.workers.VoteCommentWorker", f = "VoteCommentWorker.kt", l = {32, 36, 40}, m = "doWork")
    /* renamed from: com.truecaller.contactfeedback.workers.VoteCommentWorker$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/VoteCommentWorker$a.class */
    public static final class C3763a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f11369d;

        /* renamed from: e */
        public int f11370e;

        /* renamed from: g */
        public Object f11372g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3763a(d dVar) {
            super(dVar);
            VoteCommentWorker.this = r4;
        }

        /* renamed from: s */
        public final Object m35597s(Object obj) {
            this.f11369d = obj;
            this.f11370e |= Integer.MIN_VALUE;
            return VoteCommentWorker.this.mo34715n(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoteCommentWorker(Context context, WorkerParameters workerParameters, AbstractC19393a abstractC19393a) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19393a, "commentFeedbackGrpcApiManager");
        this.f11368d = abstractC19393a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    @Override // androidx.work.CoroutineWorker
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo34715n(s1.w.d<? super androidx.work.ListenableWorker.AbstractC0414a> r9) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.contactfeedback.workers.VoteCommentWorker.mo34715n(s1.w.d):java.lang.Object");
    }

    /* renamed from: o */
    public final ListenableWorker.AbstractC0414a m35598o(boolean z) {
        ListenableWorker.AbstractC0414a.C0417c c0417c = z ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0416b();
        l.d(c0417c, "if (this) Result.success() else Result.retry()");
        return c0417c;
    }
}
