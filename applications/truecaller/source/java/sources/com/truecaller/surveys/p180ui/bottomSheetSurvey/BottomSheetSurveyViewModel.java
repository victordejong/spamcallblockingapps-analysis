package com.truecaller.surveys.p180ui.bottomSheetSurvey;

import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p918j.p934e.AbstractC15479c;
import p193e.p194a.p918j.p934e.C15480d;
import q3.a.x2.i1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eR!\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;", "Ln3/v/y0;", "Lq3/a/x2/i1;", "Le/a/j/e/d$a;", "a", "Lq3/a/x2/i1;", "getState", "()Lq3/a/x2/i1;", "state", "Le/a/j/e/c;", C22021b.f61237c, "Le/a/j/e/c;", "surveyManager", "<init>", "(Le/a/j/e/c;)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.BottomSheetSurveyViewModel */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel.class */
public final class BottomSheetSurveyViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public final i1<C15480d.AbstractC15481a> f15117a;

    /* renamed from: b */
    public final AbstractC15479c f15118b;

    @Inject
    public BottomSheetSurveyViewModel(AbstractC15479c abstractC15479c) {
        l.e(abstractC15479c, "surveyManager");
        this.f15118b = abstractC15479c;
        this.f15117a = abstractC15479c.getState();
    }
}
