package p193e.p1485h.p1486a.p1488b.p1492k;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.p1489h.AbstractC22682a;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n��\u0018��2\u00020\u0001B!\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\u0003¢\u0006\u0002\u0010\u0007J\u0016\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\tH\u0016¨\u0006\n"}, d2 = {"Lcom/clevertap/android/pushtemplates/validators/ContentValidator;", "Lcom/clevertap/android/pushtemplates/validators/Validator;", "keys", "", "", "Lcom/clevertap/android/pushtemplates/checkers/Checker;", "", "(Ljava/util/Map;)V", "loadKeys", "", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.k.d */
/* loaded from: classes-dex2jar.jar:e/h/a/b/k/d.class */
public final class C22705d extends AbstractC22707k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C22705d(Map<String, ? extends AbstractC22682a<? extends Object>> map) {
        super(map);
        l.e(map, "keys");
    }

    @Override // p193e.p1485h.p1486a.p1488b.p1492k.AbstractC22707k
    /* renamed from: a */
    public List<AbstractC22682a<? extends Object>> mo7934a() {
        AbstractC22682a<? extends Object> abstractC22682a = this.f62828a.get("PT_TITLE");
        l.c(abstractC22682a);
        AbstractC22682a<? extends Object> abstractC22682a2 = abstractC22682a;
        AbstractC22682a<? extends Object> abstractC22682a3 = this.f62828a.get("PT_MSG");
        l.c(abstractC22682a3);
        return i.T(new AbstractC22682a[]{abstractC22682a2, abstractC22682a3});
    }
}
