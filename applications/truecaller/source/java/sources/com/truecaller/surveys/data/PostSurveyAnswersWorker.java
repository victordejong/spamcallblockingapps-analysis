package com.truecaller.surveys.data;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p930c.AbstractC15446b;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B%\b\u0007\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004R\u001d\u0010\n\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001d\u0010\u0011\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0007\u001a\u0004\b\u0010\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;", "Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker$a;", "n", "(Ls1/w/d;)Ljava/lang/Object;", "", "d", "Ls1/g;", "getSurveyAsJson", "()Ljava/lang/String;", "surveyAsJson", "Le/a/j/c/b;", "f", "Le/a/j/c/b;", "surveysRepository", "e", "getAnswersAsJson", "answersAsJson", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/j/c/b;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/PostSurveyAnswersWorker.class */
public final class PostSurveyAnswersWorker extends CoroutineWorker {

    /* renamed from: d */
    public final g f15056d = C25225a.m3978P1(new a(1, this));

    /* renamed from: e */
    public final g f15057e = C25225a.m3978P1(new a(0, this));

    /* renamed from: f */
    public final AbstractC15446b f15058f;

    @e(c = "com.truecaller.surveys.data.PostSurveyAnswersWorker", f = "PostSurveyAnswersWorker.kt", l = {60}, m = "doWork")
    /* renamed from: com.truecaller.surveys.data.PostSurveyAnswersWorker$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/PostSurveyAnswersWorker$b.class */
    public static final class C4533b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f15059d;

        /* renamed from: e */
        public int f15060e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4533b(d dVar) {
            super(dVar);
            PostSurveyAnswersWorker.this = r4;
        }

        /* renamed from: s */
        public final Object m34714s(Object obj) {
            this.f15059d = obj;
            this.f15060e |= Integer.MIN_VALUE;
            return PostSurveyAnswersWorker.this.mo34715n(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostSurveyAnswersWorker(Context context, WorkerParameters workerParameters, AbstractC15446b abstractC15446b) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC15446b, "surveysRepository");
        this.f15058f = abstractC15446b;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:2|(2:4|(11:6|8|39|(2:10|(2:12|13)(2:14|15))(6:16|17|18|19|20|(2:22|23))|24|25|(1:27)(2:28|(1:30)(2:33|34))|31|32|37|38))|7|8|39|(0)(0)|24|25|(0)(0)|31|32|37|38) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x013d, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x013e, code lost:
        r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C("PostSurveyAnswersWorker failed to deserialize survey or answers: ");
        r0.append(r6.getMessage());
        p193e.p194a.p437c.p578p.C10480a.m26045M1(r0.toString());
        r6 = new androidx.work.ListenableWorker.AbstractC0414a.C0415a();
        s1.z.c.l.d(r6, "Result.failure()");
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0112 A[Catch: f -> 0x013d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {f -> 0x013d, blocks: (B:12:0x0047, B:17:0x005e, B:19:0x009c, B:24:0x0103, B:27:0x0112, B:30:0x0122, B:32:0x012b, B:33:0x0133, B:34:0x013c), top: B:39:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011d  */
    @Override // androidx.work.CoroutineWorker
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo34715n(s1.w.d<? super androidx.work.ListenableWorker.AbstractC0414a> r6) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.surveys.data.PostSurveyAnswersWorker.mo34715n(s1.w.d):java.lang.Object");
    }
}
