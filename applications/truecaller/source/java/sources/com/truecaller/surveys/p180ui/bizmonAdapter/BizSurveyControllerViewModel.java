package com.truecaller.surveys.p180ui.bizmonAdapter;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.surveys.data.entities.Question;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p918j.p934e.AbstractC15476a;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001:\u0001\u0004B\u0011\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR!\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;", "Ln3/v/y0;", "Lq3/a/x2/a1;", "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;", "a", "Lq3/a/x2/a1;", "_state", "Le/a/j/e/a;", AbstractC2405c.f7629a, "Le/a/j/e/a;", "surveyCoordinator", "Lq3/a/x2/i1;", C22021b.f61237c, "Lq3/a/x2/i1;", "getState", "()Lq3/a/x2/i1;", "state", "<init>", "(Le/a/j/e/a;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel.class */
public final class BizSurveyControllerViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final a1<AbstractC4571a> f15111a;

    /* renamed from: b */
    public final i1<AbstractC4571a> f15112b;

    /* renamed from: c */
    public final AbstractC15476a f15113c;

    /* renamed from: com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a.class */
    public static abstract class AbstractC4571a {

        /* renamed from: com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$a$a */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$a.class */
        public static final class C4572a extends AbstractC4571a {

            /* renamed from: a */
            public static final C4572a f15114a = new C4572a();

            public C4572a() {
                super(null);
            }
        }

        /* renamed from: com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$a$b */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b.class */
        public static final class C4573b extends AbstractC4571a {

            /* renamed from: a */
            public final Question.Rating f15115a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4573b(Question.Rating rating) {
                super(null);
                l.e(rating, "question");
                this.f15115a = rating;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C4573b) && l.a(this.f15115a, ((C4573b) obj).f15115a);
                }
                return true;
            }

            public int hashCode() {
                Question.Rating rating = this.f15115a;
                return rating != null ? rating.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("RatingQuestion(question=");
                m8728C.append(this.f15115a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$a$c */
        /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c.class */
        public static final class C4574c extends AbstractC4571a {

            /* renamed from: a */
            public static final C4574c f15116a = new C4574c();

            public C4574c() {
                super(null);
            }
        }

        public AbstractC4571a() {
        }

        public AbstractC4571a(f fVar) {
        }
    }

    @Inject
    public BizSurveyControllerViewModel(AbstractC15476a abstractC15476a) {
        l.e(abstractC15476a, "surveyCoordinator");
        this.f15113c = abstractC15476a;
        a1<AbstractC4571a> a = k1.a((Object) null);
        this.f15111a = a;
        this.f15112b = a;
    }
}
