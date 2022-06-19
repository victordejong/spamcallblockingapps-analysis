package com.truecaller.bizmon.newBusiness.data;

import androidx.annotation.Keep;
import e.m.e.f0.a;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018�� \u00172\u00020\u0001:\u0001\u0018B\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\u0007\u001a\u00020��2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R!\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0014\u0010\u0005¨\u0006\u0019"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;", "", "", "Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;", "component1", "()Ljava/util/List;", "errors", "copy", "(Ljava/util/List;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getErrors", "<init>", "(Ljava/util/List;)V", "Companion", C22021b.f61237c, "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse.class */
public final class BusinessAPIErrorResponse {
    public static final C3502b Companion = new C3502b(null);
    private static final k gson = new k();
    private static final Type type = new C3501a().getType();
    private final List<BusinessAPIError> errors;

    /* renamed from: com.truecaller.bizmon.newBusiness.data.BusinessAPIErrorResponse$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse$a.class */
    public static final class C3501a extends a<BusinessAPIErrorResponse> {
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.data.BusinessAPIErrorResponse$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse$b.class */
    public static final class C3502b {
        public C3502b(f fVar) {
        }
    }

    public BusinessAPIErrorResponse(List<BusinessAPIError> list) {
        this.errors = list;
    }

    public static final /* synthetic */ k access$getGson$cp() {
        return gson;
    }

    public static final /* synthetic */ Type access$getType$cp() {
        return type;
    }

    public static /* synthetic */ BusinessAPIErrorResponse copy$default(BusinessAPIErrorResponse businessAPIErrorResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = businessAPIErrorResponse.errors;
        }
        return businessAPIErrorResponse.copy(list);
    }

    public final List<BusinessAPIError> component1() {
        return this.errors;
    }

    public final BusinessAPIErrorResponse copy(List<BusinessAPIError> list) {
        return new BusinessAPIErrorResponse(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof BusinessAPIErrorResponse) && l.a(this.errors, ((BusinessAPIErrorResponse) obj).errors);
        }
        return true;
    }

    public final List<BusinessAPIError> getErrors() {
        return this.errors;
    }

    public int hashCode() {
        List<BusinessAPIError> list = this.errors;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("BusinessAPIErrorResponse(errors="), this.errors, ")");
    }
}
