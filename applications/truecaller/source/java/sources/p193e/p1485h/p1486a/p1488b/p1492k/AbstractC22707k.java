package p193e.p1485h.p1486a.p1488b.p1492k;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.p1489h.AbstractC22682a;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n��\n\u0002\u0010\u000b\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B!\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00050\nH&J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0006\u0010\r\u001a\u00020\fR%\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00050\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/clevertap/android/pushtemplates/validators/Validator;", "", "keys", "", "", "Lcom/clevertap/android/pushtemplates/checkers/Checker;", "(Ljava/util/Map;)V", "getKeys", "()Ljava/util/Map;", "loadKeys", "", "validate", "", "validateKeys", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.k.k */
/* loaded from: classes-dex2jar.jar:e/h/a/b/k/k.class */
public abstract class AbstractC22707k {

    /* renamed from: a */
    public final Map<String, AbstractC22682a<? extends Object>> f62828a;

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC22707k(Map<String, ? extends AbstractC22682a<? extends Object>> map) {
        l.e(map, "keys");
        this.f62828a = map;
    }

    /* renamed from: a */
    public abstract List<AbstractC22682a<? extends Object>> mo7934a();

    /* renamed from: b */
    public boolean m7933b() {
        return m7932c();
    }

    /* renamed from: c */
    public final boolean m7932c() {
        List<AbstractC22682a<? extends Object>> mo7934a = mo7934a();
        l.e(mo7934a, "<this>");
        Iterator<T> it = mo7934a.iterator();
        while (true) {
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (it.hasNext()) {
                    if (!((AbstractC22682a) it.next()).m7957a() || !z2) {
                        z = false;
                    }
                } else {
                    return z2;
                }
            }
        }
    }
}
