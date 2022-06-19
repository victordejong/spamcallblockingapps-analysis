package com.truecaller.surveys.data.entities;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.SurveyFlow;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.b.b;
import q3.b.h;
import q3.b.i.d;
import q3.b.j.c;
import q3.b.j.e;
import q3.b.k.f;
import q3.b.k.g;
import q3.b.k.k;
import q3.b.k.n;
import q3.b.k.p;
import q3.b.k.q;
import q3.b.k.t;
import q3.b.k.u;
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� 12\u00020\u0001:\u000223BE\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\b\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b+\u0010,Ba\b\u0017\u0012\u0006\u0010-\u001a\u00020\f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\b\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010/\u001a\u0004\u0018\u00010.¢\u0006\u0004\b+\u00100J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\bHÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004JZ\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00052\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\b2\b\b\u0002\u0010\u0016\u001a\u00020\u000e2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010!\u001a\u0004\b\"\u0010\u000bR\u001f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010!\u001a\u0004\b#\u0010\u000bR\u0019\u0010\u0013\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010$\u001a\u0004\b%\u0010\u0007R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b'\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010&\u001a\u0004\b(\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010)\u001a\u0004\b*\u0010\u0010¨\u00064"}, d2 = {"Lcom/truecaller/surveys/data/entities/Survey;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "component2", "()Lcom/truecaller/surveys/data/entities/SurveyFlow;", "", "Lcom/truecaller/surveys/data/entities/Question;", "component3", "()Ljava/util/List;", "", "component4", "", "component5", "()J", "component6", "id", AnalyticsConstants.FLOW, "questions", "bottomSheetQuestionsIds", "lastTimeSeen", "passThrough", "copy", "(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getQuestions", "getBottomSheetQuestionsIds", "Lcom/truecaller/surveys/data/entities/SurveyFlow;", "getFlow", "Ljava/lang/String;", "getPassThrough", "getId", "J", "getLastTimeSeen", "<init>", "(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)V", "seen1", "Lq3/b/k/t;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lq3/b/k/t;)V", "Companion", "a", C22021b.f61237c, "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Survey.class */
public final class Survey {
    public static final C4555b Companion = new C4555b(null);
    private final List<Integer> bottomSheetQuestionsIds;
    private final SurveyFlow flow;

    /* renamed from: id */
    private final String f15085id;
    private final long lastTimeSeen;
    private final String passThrough;
    private final List<Question> questions;

    /* renamed from: com.truecaller.surveys.data.entities.Survey$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Survey$a.class */
    public static final class C4554a implements f<Survey> {

        /* renamed from: a */
        public static final C4554a f15086a;

        /* renamed from: b */
        public static final /* synthetic */ d f15087b;

        static {
            C4554a c4554a = new C4554a();
            f15086a = c4554a;
            p pVar = new p("com.truecaller.surveys.data.entities.Survey", c4554a, 6);
            pVar.g("id", false);
            pVar.g(AnalyticsConstants.FLOW, false);
            pVar.g("questions", false);
            pVar.g("bottomSheetQuestionsIds", false);
            pVar.g("lastTimeSeen", false);
            pVar.g("passThrough", false);
            f15087b = pVar;
        }

        /* renamed from: a */
        public d m34666a() {
            return f15087b;
        }

        /* renamed from: b */
        public void m34665b(e eVar, Object obj) {
            Survey survey = (Survey) obj;
            l.e(eVar, "encoder");
            l.e(survey, "value");
            d dVar = f15087b;
            c a = eVar.a(dVar);
            Survey.write$Self(survey, a, dVar);
            a.b(dVar);
        }

        /* renamed from: c */
        public b<?>[] m34664c() {
            return q.a;
        }

        /* JADX WARN: Type inference failed for: r0v127, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        /* renamed from: d */
        public Object m34663d(q3.b.j.d dVar) {
            int i;
            char c;
            SurveyFlow surveyFlow;
            List list;
            String str;
            String str2;
            List list2;
            l.e(dVar, "decoder");
            d dVar2 = f15087b;
            q3.b.j.b a = dVar.a(dVar2);
            if (a.j()) {
                str = a.h(dVar2, 0);
                surveyFlow = (SurveyFlow) a.k(dVar2, 1, new q3.b.e("com.truecaller.surveys.data.entities.SurveyFlow", d0.a(SurveyFlow.class), new s1.a.c[]{d0.a(SurveyFlow.Acs.class), d0.a(SurveyFlow.NameSuggestion.class), d0.a(SurveyFlow.ReportProfile.class), d0.a(SurveyFlow.AcsBizmon.class)}, new b[]{SurveyFlow.Acs.C4556a.f15088a, SurveyFlow.NameSuggestion.C4560a.f15092a, new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", SurveyFlow.ReportProfile.INSTANCE), SurveyFlow.AcsBizmon.C4558a.f15090a}));
                list = (List) a.k(dVar2, 2, new q3.b.k.d(new q3.b.e("com.truecaller.surveys.data.entities.Question", d0.a(Question.class), new s1.a.c[]{d0.a(Question.Binary.class), d0.a(Question.SingleChoice.class), d0.a(Question.FreeText.class), d0.a(Question.Rating.class)}, new b[]{Question.Binary.C4545a.f15074a, Question.SingleChoice.C4551a.f15083a, Question.FreeText.C4547a.f15077a, Question.Rating.C4549a.f15080a})));
                list2 = (List) a.k(dVar2, 3, new q3.b.k.d(g.b));
                c = a.d(dVar2, 4);
                str2 = (String) a.r(dVar2, 5, u.b);
                i = Integer.MAX_VALUE;
            } else {
                List list3 = null;
                c = 0;
                String str3 = null;
                str = null;
                List list4 = null;
                surveyFlow = null;
                int i2 = 0;
                while (true) {
                    i = i2;
                    int q = a.q(dVar2);
                    switch (q) {
                        case -1:
                            str2 = str3;
                            list2 = list4;
                            list = list3;
                            break;
                        case 0:
                            str = a.h(dVar2, 0);
                            i2 = i | 1;
                            break;
                        case 1:
                            surveyFlow = (SurveyFlow) a.l(dVar2, 1, new q3.b.e("com.truecaller.surveys.data.entities.SurveyFlow", d0.a(SurveyFlow.class), new s1.a.c[]{d0.a(SurveyFlow.Acs.class), d0.a(SurveyFlow.NameSuggestion.class), d0.a(SurveyFlow.ReportProfile.class), d0.a(SurveyFlow.AcsBizmon.class)}, new b[]{SurveyFlow.Acs.C4556a.f15088a, SurveyFlow.NameSuggestion.C4560a.f15092a, new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", SurveyFlow.ReportProfile.INSTANCE), SurveyFlow.AcsBizmon.C4558a.f15090a}), surveyFlow);
                            i2 = i | 2;
                            break;
                        case 2:
                            list3 = (List) a.l(dVar2, 2, new q3.b.k.d(new q3.b.e("com.truecaller.surveys.data.entities.Question", d0.a(Question.class), new s1.a.c[]{d0.a(Question.Binary.class), d0.a(Question.SingleChoice.class), d0.a(Question.FreeText.class), d0.a(Question.Rating.class)}, new b[]{Question.Binary.C4545a.f15074a, Question.SingleChoice.C4551a.f15083a, Question.FreeText.C4547a.f15077a, Question.Rating.C4549a.f15080a})), list3);
                            i2 = i | 4;
                            break;
                        case 3:
                            list4 = (List) a.l(dVar2, 3, new q3.b.k.d(g.b), list4);
                            i2 = i | 8;
                            break;
                        case 4:
                            c = a.d(dVar2, 4);
                            i2 = i | 16;
                            break;
                        case 5:
                            str3 = (String) a.i(dVar2, 5, u.b, str3);
                            i2 = i | 32;
                            break;
                        default:
                            throw new h(q);
                    }
                }
            }
            a.b(dVar2);
            return new Survey(i, str, surveyFlow, list, list2, c, str2, null);
        }

        /* renamed from: e */
        public b<?>[] m34662e() {
            b<?> bVar = u.b;
            return new b[]{bVar, new q3.b.e<>("com.truecaller.surveys.data.entities.SurveyFlow", d0.a(SurveyFlow.class), new s1.a.c[]{d0.a(SurveyFlow.Acs.class), d0.a(SurveyFlow.NameSuggestion.class), d0.a(SurveyFlow.ReportProfile.class), d0.a(SurveyFlow.AcsBizmon.class)}, new b[]{SurveyFlow.Acs.C4556a.f15088a, SurveyFlow.NameSuggestion.C4560a.f15092a, new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", SurveyFlow.ReportProfile.INSTANCE), SurveyFlow.AcsBizmon.C4558a.f15090a}), new q3.b.k.d(new q3.b.e("com.truecaller.surveys.data.entities.Question", d0.a(Question.class), new s1.a.c[]{d0.a(Question.Binary.class), d0.a(Question.SingleChoice.class), d0.a(Question.FreeText.class), d0.a(Question.Rating.class)}, new b[]{Question.Binary.C4545a.f15074a, Question.SingleChoice.C4551a.f15083a, Question.FreeText.C4547a.f15077a, Question.Rating.C4549a.f15080a})), new q3.b.k.d(g.b), k.b, s1.a.a.a.v0.f.d.r1(bVar)};
        }
    }

    /* renamed from: com.truecaller.surveys.data.entities.Survey$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/entities/Survey$b.class */
    public static final class C4555b {
        public C4555b(s1.z.c.f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Survey(int i, String str, SurveyFlow surveyFlow, List<? extends Question> list, List<Integer> list2, long j, String str2, t tVar) {
        if ((i & 1) != 0) {
            this.f15085id = str;
            if ((i & 2) == 0) {
                throw new q3.b.c(AnalyticsConstants.FLOW);
            }
            this.flow = surveyFlow;
            if ((i & 4) == 0) {
                throw new q3.b.c("questions");
            }
            this.questions = list;
            if ((i & 8) == 0) {
                throw new q3.b.c("bottomSheetQuestionsIds");
            }
            this.bottomSheetQuestionsIds = list2;
            if ((i & 16) == 0) {
                throw new q3.b.c("lastTimeSeen");
            }
            this.lastTimeSeen = j;
            if ((i & 32) == 0) {
                throw new q3.b.c("passThrough");
            }
            this.passThrough = str2;
            return;
        }
        throw new q3.b.c("id");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Survey(String str, SurveyFlow surveyFlow, List<? extends Question> list, List<Integer> list2, long j, String str2) {
        l.e(str, "id");
        l.e(surveyFlow, AnalyticsConstants.FLOW);
        l.e(list, "questions");
        l.e(list2, "bottomSheetQuestionsIds");
        this.f15085id = str;
        this.flow = surveyFlow;
        this.questions = list;
        this.bottomSheetQuestionsIds = list2;
        this.lastTimeSeen = j;
        this.passThrough = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.surveys.data.entities.Survey] */
    public static /* synthetic */ Survey copy$default(Survey survey, String str, SurveyFlow surveyFlow, List list, List list2, long j, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((Survey) survey).f15085id;
        }
        if ((i & 2) != 0) {
            surveyFlow = ((Survey) survey).flow;
        }
        List<Question> list3 = list;
        if ((i & 4) != 0) {
            list3 = ((Survey) survey).questions;
        }
        List<Integer> list4 = list2;
        if ((i & 8) != 0) {
            list4 = ((Survey) survey).bottomSheetQuestionsIds;
        }
        ?? r14 = j;
        if ((i & 16) != 0) {
            r14 = ((Survey) survey).lastTimeSeen;
        }
        if ((i & 32) != 0) {
            str2 = ((Survey) survey).passThrough;
        }
        return survey.copy(str, surveyFlow, list3, list4, r14, str2);
    }

    public static final void write$Self(Survey survey, c cVar, d dVar) {
        l.e(survey, "self");
        l.e(cVar, "output");
        l.e(dVar, "serialDesc");
        cVar.h(dVar, 0, survey.f15085id);
        cVar.q(dVar, 1, new q3.b.e("com.truecaller.surveys.data.entities.SurveyFlow", d0.a(SurveyFlow.class), new s1.a.c[]{d0.a(SurveyFlow.Acs.class), d0.a(SurveyFlow.NameSuggestion.class), d0.a(SurveyFlow.ReportProfile.class), d0.a(SurveyFlow.AcsBizmon.class)}, new b[]{SurveyFlow.Acs.C4556a.f15088a, SurveyFlow.NameSuggestion.C4560a.f15092a, new n("com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile", SurveyFlow.ReportProfile.INSTANCE), SurveyFlow.AcsBizmon.C4558a.f15090a}), survey.flow);
        cVar.q(dVar, 2, new q3.b.k.d(new q3.b.e("com.truecaller.surveys.data.entities.Question", d0.a(Question.class), new s1.a.c[]{d0.a(Question.Binary.class), d0.a(Question.SingleChoice.class), d0.a(Question.FreeText.class), d0.a(Question.Rating.class)}, new b[]{Question.Binary.C4545a.f15074a, Question.SingleChoice.C4551a.f15083a, Question.FreeText.C4547a.f15077a, Question.Rating.C4549a.f15080a})), survey.questions);
        cVar.q(dVar, 3, new q3.b.k.d(g.b), survey.bottomSheetQuestionsIds);
        cVar.j(dVar, 4, survey.lastTimeSeen);
        cVar.l(dVar, 5, u.b, survey.passThrough);
    }

    public final String component1() {
        return this.f15085id;
    }

    public final SurveyFlow component2() {
        return this.flow;
    }

    public final List<Question> component3() {
        return this.questions;
    }

    public final List<Integer> component4() {
        return this.bottomSheetQuestionsIds;
    }

    public final long component5() {
        return this.lastTimeSeen;
    }

    public final String component6() {
        return this.passThrough;
    }

    public final Survey copy(String str, SurveyFlow surveyFlow, List<? extends Question> list, List<Integer> list2, long j, String str2) {
        l.e(str, "id");
        l.e(surveyFlow, AnalyticsConstants.FLOW);
        l.e(list, "questions");
        l.e(list2, "bottomSheetQuestionsIds");
        return new Survey(str, surveyFlow, list, list2, j, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Survey)) {
                return false;
            }
            Survey survey = (Survey) obj;
            return l.a(this.f15085id, survey.f15085id) && l.a(this.flow, survey.flow) && l.a(this.questions, survey.questions) && l.a(this.bottomSheetQuestionsIds, survey.bottomSheetQuestionsIds) && this.lastTimeSeen == survey.lastTimeSeen && l.a(this.passThrough, survey.passThrough);
        }
        return true;
    }

    public final List<Integer> getBottomSheetQuestionsIds() {
        return this.bottomSheetQuestionsIds;
    }

    public final SurveyFlow getFlow() {
        return this.flow;
    }

    public final String getId() {
        return this.f15085id;
    }

    public final long getLastTimeSeen() {
        return this.lastTimeSeen;
    }

    public final String getPassThrough() {
        return this.passThrough;
    }

    public final List<Question> getQuestions() {
        return this.questions;
    }

    public int hashCode() {
        String str = this.f15085id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        SurveyFlow surveyFlow = this.flow;
        int hashCode2 = surveyFlow != null ? surveyFlow.hashCode() : 0;
        List<Question> list = this.questions;
        int hashCode3 = list != null ? list.hashCode() : 0;
        List<Integer> list2 = this.bottomSheetQuestionsIds;
        int hashCode4 = list2 != null ? list2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.lastTimeSeen);
        String str2 = this.passThrough;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Survey(id=");
        m8728C.append(this.f15085id);
        m8728C.append(", flow=");
        m8728C.append(this.flow);
        m8728C.append(", questions=");
        m8728C.append(this.questions);
        m8728C.append(", bottomSheetQuestionsIds=");
        m8728C.append(this.bottomSheetQuestionsIds);
        m8728C.append(", lastTimeSeen=");
        m8728C.append(this.lastTimeSeen);
        m8728C.append(", passThrough=");
        return C22128a.m8618h(m8728C, this.passThrough, ")");
    }
}
