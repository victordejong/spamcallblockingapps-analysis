package com.truecaller.surveys.p180ui.adapter;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Choice;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.SurveyFlow;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext.SuggestionType;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p918j.p934e.AbstractC15476a;
import p193e.p194a.p918j.p934e.AbstractC15489f;
import q3.a.w2.i;
import q3.a.x2.a1;
import q3.a.x2.e1;
import q3.a.x2.g1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.x2.z0;
import s1.a.a.a.v0.f.d;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001:\u0001#B\u001f\b\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c¢\u0006\u0004\b+\u0010,J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\nR\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001f\u0010*\u001a\b\u0012\u0004\u0012\u00020\"0&8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "Ln3/v/y0;", "", "answer", "Ls1/s;", "d", "(Z)V", "e", "()V", AbstractC2405c.f7629a, "()Z", "Lq3/a/x2/i1;", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;", "Lq3/a/x2/i1;", "getSuggestion", "()Lq3/a/x2/i1;", "suggestion", "Lcom/truecaller/data/entity/Contact;", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "Lq3/a/x2/a1;", C22021b.f61237c, "Lq3/a/x2/a1;", "_suggestion", "Le/a/j/e/a;", "f", "Le/a/j/e/a;", "surveyCoordinator", "Le/a/r2/f;", "Le/a/g5/n;", "g", "Le/a/r2/f;", "tagDataSaver", "Lq3/a/x2/z0;", "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;", "a", "Lq3/a/x2/z0;", "_state", "Lq3/a/x2/e1;", "Lq3/a/x2/e1;", "getState", "()Lq3/a/x2/e1;", "state", "<init>", "(Le/a/j/e/a;Le/a/r2/f;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel.class */
public final class SurveyControllerViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final z0<AbstractC4565a> f15098a;

    /* renamed from: b */
    public final a1<SuggestionType> f15099b;

    /* renamed from: c */
    public final e1<AbstractC4565a> f15100c;

    /* renamed from: d */
    public final i1<SuggestionType> f15101d;

    /* renamed from: e */
    public Contact f15102e;

    /* renamed from: f */
    public final AbstractC15476a f15103f;

    /* renamed from: g */
    public final AbstractC19854f<AbstractC14535n> f15104g;

    /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a.class */
    public static abstract class AbstractC4565a {

        /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$a.class */
        public static final class C4566a extends AbstractC4565a {

            /* renamed from: a */
            public final Question.Binary f15105a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4566a(Question.Binary binary) {
                super(null);
                l.e(binary, "question");
                this.f15105a = binary;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C4566a) && l.a(this.f15105a, ((C4566a) obj).f15105a);
                }
                return true;
            }

            public int hashCode() {
                Question.Binary binary = this.f15105a;
                return binary != null ? binary.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("BoolQuestion(question=");
                m8728C.append(this.f15105a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b.class */
        public static final class C4567b extends AbstractC4565a {

            /* renamed from: a */
            public final Question.FreeText f15106a;

            /* renamed from: b */
            public final boolean f15107b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4567b(Question.FreeText freeText, boolean z) {
                super(null);
                l.e(freeText, "question");
                this.f15106a = freeText;
                this.f15107b = z;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C4567b)) {
                        return false;
                    }
                    C4567b c4567b = (C4567b) obj;
                    return l.a(this.f15106a, c4567b.f15106a) && this.f15107b == c4567b.f15107b;
                }
                return true;
            }

            public int hashCode() {
                Question.FreeText freeText = this.f15106a;
                int hashCode = freeText != null ? freeText.hashCode() : 0;
                boolean z = this.f15107b;
                int i = z ? 1 : 0;
                if (z) {
                    i = 1;
                }
                return (hashCode * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("FreeTextQuestion(question=");
                m8728C.append(this.f15106a);
                m8728C.append(", showNameSuggestion=");
                return C22128a.m8590o(m8728C, this.f15107b, ")");
            }
        }

        /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a$c */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$c.class */
        public static final class C4568c extends AbstractC4565a {

            /* renamed from: a */
            public static final C4568c f15108a = new C4568c();

            public C4568c() {
                super(null);
            }
        }

        /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a$d */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$d.class */
        public static final class C4569d extends AbstractC4565a {

            /* renamed from: a */
            public static final C4569d f15109a = new C4569d();

            public C4569d() {
                super(null);
            }
        }

        /* renamed from: com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$a$e */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$e.class */
        public static final class C4570e extends AbstractC4565a {

            /* renamed from: a */
            public static final C4570e f15110a = new C4570e();

            public C4570e() {
                super(null);
            }
        }

        public AbstractC4565a() {
        }

        public AbstractC4565a(f fVar) {
        }
    }

    @Inject
    public SurveyControllerViewModel(AbstractC15476a abstractC15476a, AbstractC19854f<AbstractC14535n> abstractC19854f) {
        l.e(abstractC15476a, "surveyCoordinator");
        l.e(abstractC19854f, "tagDataSaver");
        this.f15103f = abstractC15476a;
        this.f15104g = abstractC19854f;
        z0<AbstractC4565a> a = g1.a(1, 0, (i) null, 6);
        this.f15098a = a;
        a1<SuggestionType> a2 = k1.a(SuggestionType.BUSINESS);
        this.f15099b = a2;
        this.f15100c = d.B(a);
        this.f15101d = d.E(a2);
    }

    /* renamed from: c */
    public final boolean m34644c() {
        if (!(this.f15103f.getState() instanceof AbstractC15489f.C15490a)) {
            AssertionUtil.reportWeirdnessButNeverCrash("Survey invalid state, question can't be handled");
            m34642e();
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final void m34643d(boolean z) {
        Choice choice;
        AbstractC15476a abstractC15476a = this.f15103f;
        if (m34644c()) {
            return;
        }
        AbstractC15489f state = this.f15103f.getState();
        Objects.requireNonNull(state, "null cannot be cast to non-null type com.truecaller.surveys.utils.SurveyState.Active");
        AbstractC15489f.C15490a c15490a = (AbstractC15489f.C15490a) state;
        if (z) {
            Question question = c15490a.f43906a;
            Objects.requireNonNull(question, "null cannot be cast to non-null type com.truecaller.surveys.data.entities.Question.Binary");
            choice = ((Question.Binary) question).getChoiceTrue();
        } else if (z) {
            throw new s1.i();
        } else {
            Question question2 = c15490a.f43906a;
            Objects.requireNonNull(question2, "null cannot be cast to non-null type com.truecaller.surveys.data.entities.Question.Binary");
            choice = ((Question.Binary) question2).getChoiceFalse();
        }
        abstractC15476a.mo18779d(new Answer.Binary(choice));
        abstractC15476a.mo18782a();
        m34642e();
    }

    /* renamed from: e */
    public final void m34642e() {
        AbstractC4565a abstractC4565a = AbstractC4565a.C4568c.f15108a;
        z0<AbstractC4565a> z0Var = this.f15098a;
        AbstractC15489f state = this.f15103f.getState();
        if (state instanceof AbstractC15489f.C15490a) {
            AbstractC15489f.C15490a c15490a = (AbstractC15489f.C15490a) state;
            if (c15490a.f43908c) {
                abstractC4565a = AbstractC4565a.C4569d.f15109a;
            } else {
                Question question = c15490a.f43906a;
                if (question instanceof Question.Binary) {
                    abstractC4565a = new AbstractC4565a.C4566a((Question.Binary) question);
                } else if (question instanceof Question.FreeText) {
                    abstractC4565a = new AbstractC4565a.C4567b((Question.FreeText) question, c15490a.f43907b instanceof SurveyFlow.NameSuggestion);
                }
            }
        } else if (l.a(state, AbstractC15489f.C15491b.f43909a)) {
            abstractC4565a = AbstractC4565a.C4570e.f15110a;
        } else if (!l.a(state, AbstractC15489f.C15492c.f43910a)) {
            throw new s1.i();
        }
        z0Var.g(abstractC4565a);
    }
}
