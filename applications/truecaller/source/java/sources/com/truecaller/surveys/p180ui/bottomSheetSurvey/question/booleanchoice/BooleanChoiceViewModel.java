package com.truecaller.surveys.p180ui.bottomSheetSurvey.question.booleanchoice;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Choice;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p919a.p920a.p921a.p922a.C15332c;
import p193e.p194a.p918j.p934e.AbstractC15479c;
import p193e.p194a.p918j.p934e.C15480d;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.e1;
import q3.a.x2.g;
import q3.a.x2.g1;
import q3.a.x2.i1;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\bR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\bR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\r0\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;", "Ln3/v/y0;", "", "answerTrue", "Ls1/s;", AbstractC2405c.f7629a, "(Z)V", "Lcom/truecaller/surveys/data/entities/Choice;", "Lcom/truecaller/surveys/data/entities/Choice;", "choiceFalse", C22021b.f61237c, "choiceTrue", "Lq3/a/x2/z0;", "Le/a/j/a/a/a/a/c;", "a", "Lq3/a/x2/z0;", "_question", "Le/a/j/e/c;", "e", "Le/a/j/e/c;", "surveyManager", "Lq3/a/x2/e1;", "d", "Lq3/a/x2/e1;", "getQuestion", "()Lq3/a/x2/e1;", "question", "<init>", "(Le/a/j/e/c;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel.class */
public final class BooleanChoiceViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final z0<C15332c> f15119a;

    /* renamed from: b */
    public Choice f15120b;

    /* renamed from: c */
    public Choice f15121c;

    /* renamed from: d */
    public final e1<C15332c> f15122d;

    /* renamed from: e */
    public final AbstractC15479c f15123e;

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel$1", f = "BooleanChoiceViewModel.kt", l = {57}, m = "invokeSuspend")
    /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a.class */
    public static final class C4575a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f15124e;

        /* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel$a$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a.class */
        public static final class C4576a implements g<C15480d.AbstractC15481a> {
            public C4576a() {
                C4575a.this = r4;
            }

            /* renamed from: a */
            public Object m34637a(C15480d.AbstractC15481a abstractC15481a, d<? super s> dVar) {
                C15480d.AbstractC15481a abstractC15481a2 = abstractC15481a;
                if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15482a) {
                    C15480d.AbstractC15481a.C15482a c15482a = (C15480d.AbstractC15481a.C15482a) abstractC15481a2;
                    BooleanChoiceViewModel.this.f15119a.g(new C15332c(c15482a.f43898a.getHeaderMessage(), c15482a.f43898a.getMessage(), c15482a.f43898a.getChoiceTrue().getText(), c15482a.f43898a.getChoiceFalse().getText()));
                    BooleanChoiceViewModel.this.f15120b = c15482a.f43898a.getChoiceTrue();
                    BooleanChoiceViewModel.this.f15121c = c15482a.f43898a.getChoiceFalse();
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4575a(d dVar) {
            super(2, dVar);
            BooleanChoiceViewModel.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34640i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4575a(dVar);
        }

        /* renamed from: k */
        public final Object m34639k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4575a(dVar).m34638s(s.a);
        }

        /* renamed from: s */
        public final Object m34638s(Object obj) {
            a aVar = a.a;
            int i = this.f15124e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<C15480d.AbstractC15481a> state = BooleanChoiceViewModel.this.f15123e.getState();
                C4576a c4576a = new C4576a();
                this.f15124e = 1;
                if (state.c(c4576a, this) == aVar) {
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
    public BooleanChoiceViewModel(AbstractC15479c abstractC15479c) {
        l.e(abstractC15479c, "surveyManager");
        this.f15123e = abstractC15479c;
        z0<C15332c> a = g1.a(1, 0, (q3.a.w2.i) null, 6);
        this.f15119a = a;
        this.f15122d = s1.a.a.a.v0.f.d.B(a);
        s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (f) null, (j0) null, new C4575a(null), 3, (Object) null);
    }

    /* renamed from: c */
    public final void m34641c(boolean z) {
        Choice choice = this.f15120b;
        if (choice != null) {
            Choice choice2 = this.f15121c;
            if (choice2 != null) {
                AbstractC15479c abstractC15479c = this.f15123e;
                if (z) {
                    l.c(choice);
                    choice2 = choice;
                } else {
                    l.c(choice2);
                }
                abstractC15479c.mo18773c(new Answer.Binary(choice2));
                return;
            }
        }
        AssertionUtil.reportWeirdnessButNeverCrash("Survey invalid state, question can't be handled");
    }
}
