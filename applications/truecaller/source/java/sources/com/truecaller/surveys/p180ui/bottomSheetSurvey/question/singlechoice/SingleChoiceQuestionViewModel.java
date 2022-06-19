package com.truecaller.surveys.p180ui.bottomSheetSurvey.question.singlechoice;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.surveys.data.entities.Choice;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p919a.p920a.p921a.p924c.C15371f;
import p193e.p194a.p918j.p934e.AbstractC15479c;
import p193e.p194a.p918j.p934e.C15480d;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.a1;
import q3.a.x2.g;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR%\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00110\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00110\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001b¨\u0006 "}, d2 = {"Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;", "Ln3/v/y0;", "Ls1/s;", AbstractC2405c.f7629a, "()V", "", "Le/a/j/a/a/a/c/f;", "a", "Ljava/util/List;", "localChoices", "Lq3/a/x2/i1;", "", "e", "Lq3/a/x2/i1;", "getQuestion", "()Lq3/a/x2/i1;", "question", "", "d", "getChoices", "choices", "Le/a/j/e/c;", "f", "Le/a/j/e/c;", "surveyManager", "Lq3/a/x2/a1;", C22021b.f61237c, "Lq3/a/x2/a1;", "_question", "_choices", "<init>", "(Le/a/j/e/c;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel.class */
public final class SingleChoiceQuestionViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final List<C15371f> f15135a = new ArrayList();

    /* renamed from: b */
    public final a1<String> f15136b;

    /* renamed from: c */
    public final a1<List<C15371f>> f15137c;

    /* renamed from: d */
    public final i1<List<C15371f>> f15138d;

    /* renamed from: e */
    public final i1<String> f15139e;

    /* renamed from: f */
    public final AbstractC15479c f15140f;

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel$1", f = "SingleChoiceQuestionViewModel.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel$a.class */
    public static final class C4579a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f15141e;

        /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel$a$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel$a$a.class */
        public static final class C4580a implements g<C15480d.AbstractC15481a> {
            public C4580a() {
                C4579a.this = r4;
            }

            /* renamed from: a */
            public Object m34628a(C15480d.AbstractC15481a abstractC15481a, d<? super s> dVar) {
                C15480d.AbstractC15481a abstractC15481a2 = abstractC15481a;
                if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15485d) {
                    SingleChoiceQuestionViewModel.this.f15135a.clear();
                    List<C15371f> list = SingleChoiceQuestionViewModel.this.f15135a;
                    C15480d.AbstractC15481a.C15485d c15485d = (C15480d.AbstractC15481a.C15485d) abstractC15481a2;
                    List<Choice> choices = c15485d.f43902a.getChoices();
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(choices, 10));
                    for (Choice choice : choices) {
                        arrayList.add(new C15371f(choice, null, false, null, 14));
                    }
                    list.addAll(arrayList);
                    SingleChoiceQuestionViewModel.this.f15136b.setValue(c15485d.f43902a.getHeaderMessage());
                    SingleChoiceQuestionViewModel.this.m34632c();
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4579a(d dVar) {
            super(2, dVar);
            SingleChoiceQuestionViewModel.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34631i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4579a(dVar);
        }

        /* renamed from: k */
        public final Object m34630k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4579a(dVar).m34629s(s.a);
        }

        /* renamed from: s */
        public final Object m34629s(Object obj) {
            a aVar = a.a;
            int i = this.f15141e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<C15480d.AbstractC15481a> state = SingleChoiceQuestionViewModel.this.f15140f.getState();
                C4580a c4580a = new C4580a();
                this.f15141e = 1;
                if (state.c(c4580a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public SingleChoiceQuestionViewModel(AbstractC15479c abstractC15479c) {
        l.e(abstractC15479c, "surveyManager");
        this.f15140f = abstractC15479c;
        a1<String> a = k1.a("");
        this.f15136b = a;
        a1<List<C15371f>> a2 = k1.a(s1.u.s.a);
        this.f15137c = a2;
        this.f15138d = s1.a.a.a.v0.f.d.E(a2);
        this.f15139e = s1.a.a.a.v0.f.d.E(a);
        s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (f) null, (j0) null, new C4579a(null), 3, (Object) null);
    }

    /* renamed from: c */
    public final void m34632c() {
        a1<List<C15371f>> a1Var = this.f15137c;
        List<C15371f> list = this.f15135a;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C15371f c15371f : list) {
            arrayList.add(C15371f.m18882a(c15371f, null, null, false, null, 15));
        }
        a1Var.setValue(arrayList);
    }
}
