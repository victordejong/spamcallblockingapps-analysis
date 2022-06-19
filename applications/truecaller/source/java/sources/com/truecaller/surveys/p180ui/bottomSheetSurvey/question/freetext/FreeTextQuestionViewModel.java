package com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p919a.p920a.p921a.p923b.C15348c;
import p193e.p194a.p918j.p934e.AbstractC15479c;
import p193e.p194a.p918j.p934e.C15480d;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.a1;
import q3.a.x2.e1;
import q3.a.x2.g;
import q3.a.x2.g1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00120\u00168\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;", "Ln3/v/y0;", "Lq3/a/x2/a1;", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;", C22021b.f61237c, "Lq3/a/x2/a1;", "_suggestion", "Lq3/a/x2/i1;", "d", "Lq3/a/x2/i1;", "getSuggestion", "()Lq3/a/x2/i1;", "suggestion", "Le/a/j/e/c;", "e", "Le/a/j/e/c;", "surveyManager", "Lq3/a/x2/z0;", "Le/a/j/a/a/a/b/c;", "a", "Lq3/a/x2/z0;", "_question", "Lq3/a/x2/e1;", AbstractC2405c.f7629a, "Lq3/a/x2/e1;", "getQuestion", "()Lq3/a/x2/e1;", "question", "<init>", "(Le/a/j/e/c;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel.class */
public final class FreeTextQuestionViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final z0<C15348c> f15127a;

    /* renamed from: b */
    public final a1<SuggestionType> f15128b;

    /* renamed from: c */
    public final e1<C15348c> f15129c;

    /* renamed from: d */
    public final i1<SuggestionType> f15130d;

    /* renamed from: e */
    public final AbstractC15479c f15131e;

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel$1", f = "FreeTextQuestionViewModel.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel$a.class */
    public static final class C4577a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f15132e;

        /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel$a$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel$a$a.class */
        public static final class C4578a implements g<C15480d.AbstractC15481a> {
            public C4578a() {
                C4577a.this = r4;
            }

            /* renamed from: a */
            public Object m34633a(C15480d.AbstractC15481a abstractC15481a, d<? super s> dVar) {
                C15480d.AbstractC15481a abstractC15481a2 = abstractC15481a;
                if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15483b) {
                    C15480d.AbstractC15481a.C15483b c15483b = (C15480d.AbstractC15481a.C15483b) abstractC15481a2;
                    FreeTextQuestionViewModel.this.f15127a.g(new C15348c(c15483b.f43899a.getHeaderMessage(), c15483b.f43899a.getActionLabel(), c15483b.f43899a.getHint(), c15483b.f43900b));
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4577a(d dVar) {
            super(2, dVar);
            FreeTextQuestionViewModel.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34636i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4577a(dVar);
        }

        /* renamed from: k */
        public final Object m34635k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4577a(dVar).m34634s(s.a);
        }

        /* renamed from: s */
        public final Object m34634s(Object obj) {
            a aVar = a.a;
            int i = this.f15132e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<C15480d.AbstractC15481a> state = FreeTextQuestionViewModel.this.f15131e.getState();
                C4578a c4578a = new C4578a();
                this.f15132e = 1;
                if (state.c(c4578a, this) == aVar) {
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
    public FreeTextQuestionViewModel(AbstractC15479c abstractC15479c) {
        l.e(abstractC15479c, "surveyManager");
        this.f15131e = abstractC15479c;
        z0<C15348c> a = g1.a(1, 0, (q3.a.w2.i) null, 6);
        this.f15127a = a;
        a1<SuggestionType> a2 = k1.a(SuggestionType.BUSINESS);
        this.f15128b = a2;
        this.f15129c = s1.a.a.a.v0.f.d.B(a);
        this.f15130d = s1.a.a.a.v0.f.d.E(a2);
        s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (f) null, (j0) null, new C4577a(null), 3, (Object) null);
    }
}
