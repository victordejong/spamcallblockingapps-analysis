package com.truecaller.surveys.data.local;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B1\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJB\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004R\u001c\u0010\u000f\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001e\u0010\nR\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b \u0010\u0004¨\u0006#"}, d2 = {"Lcom/truecaller/surveys/data/local/SurveyEntity;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "", "component5", "()J", "id", AnalyticsConstants.FLOW, "questions", "bottomSheetQuestionsIds", "lastTimeSeen", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/truecaller/surveys/data/local/SurveyEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getFlow", "getBottomSheetQuestionsIds", "J", "getLastTimeSeen", "getQuestions", "getId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "surveys_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/local/SurveyEntity.class */
public final class SurveyEntity {
    private final String bottomSheetQuestionsIds;
    private final String flow;

    /* renamed from: id */
    private final String f15094id;
    private final long lastTimeSeen;
    private final String questions;

    public SurveyEntity(String str, String str2, String str3, String str4, long j) {
        C22128a.m8699J0(str, "id", str2, AnalyticsConstants.FLOW, str3, "questions", str4, "bottomSheetQuestionsIds");
        this.f15094id = str;
        this.flow = str2;
        this.questions = str3;
        this.bottomSheetQuestionsIds = str4;
        this.lastTimeSeen = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    public /* synthetic */ SurveyEntity(String str, String str2, String str3, String str4, long j, int i, f fVar) {
        this(str, str2, str3, str4, (i & 16) != 0 ? 0 : j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.truecaller.surveys.data.local.SurveyEntity] */
    public static /* synthetic */ SurveyEntity copy$default(SurveyEntity surveyEntity, String str, String str2, String str3, String str4, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((SurveyEntity) surveyEntity).f15094id;
        }
        if ((i & 2) != 0) {
            str2 = ((SurveyEntity) surveyEntity).flow;
        }
        if ((i & 4) != 0) {
            str3 = ((SurveyEntity) surveyEntity).questions;
        }
        if ((i & 8) != 0) {
            str4 = ((SurveyEntity) surveyEntity).bottomSheetQuestionsIds;
        }
        ?? r13 = j;
        if ((i & 16) != 0) {
            r13 = ((SurveyEntity) surveyEntity).lastTimeSeen;
        }
        return surveyEntity.copy(str, str2, str3, str4, r13);
    }

    public final String component1() {
        return this.f15094id;
    }

    public final String component2() {
        return this.flow;
    }

    public final String component3() {
        return this.questions;
    }

    public final String component4() {
        return this.bottomSheetQuestionsIds;
    }

    public final long component5() {
        return this.lastTimeSeen;
    }

    public final SurveyEntity copy(String str, String str2, String str3, String str4, long j) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.FLOW);
        l.e(str3, "questions");
        l.e(str4, "bottomSheetQuestionsIds");
        return new SurveyEntity(str, str2, str3, str4, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SurveyEntity)) {
                return false;
            }
            SurveyEntity surveyEntity = (SurveyEntity) obj;
            return l.a(this.f15094id, surveyEntity.f15094id) && l.a(this.flow, surveyEntity.flow) && l.a(this.questions, surveyEntity.questions) && l.a(this.bottomSheetQuestionsIds, surveyEntity.bottomSheetQuestionsIds) && this.lastTimeSeen == surveyEntity.lastTimeSeen;
        }
        return true;
    }

    public final String getBottomSheetQuestionsIds() {
        return this.bottomSheetQuestionsIds;
    }

    public final String getFlow() {
        return this.flow;
    }

    public final String getId() {
        return this.f15094id;
    }

    public final long getLastTimeSeen() {
        return this.lastTimeSeen;
    }

    public final String getQuestions() {
        return this.questions;
    }

    public int hashCode() {
        String str = this.f15094id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.flow;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.questions;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.bottomSheetQuestionsIds;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + C4876d.m34274a(this.lastTimeSeen);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SurveyEntity(id=");
        m8728C.append(this.f15094id);
        m8728C.append(", flow=");
        m8728C.append(this.flow);
        m8728C.append(", questions=");
        m8728C.append(this.questions);
        m8728C.append(", bottomSheetQuestionsIds=");
        m8728C.append(this.bottomSheetQuestionsIds);
        m8728C.append(", lastTimeSeen=");
        return C22128a.m8693K2(m8728C, this.lastTimeSeen, ")");
    }
}
