package p193e.p194a.p1011l.p1025p2;

import com.truecaller.api.services.presence.p139v1.models.Premium;
import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17409e;
/* renamed from: e.a.l.p2.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/g.class */
public final class C17089g<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Premium premium = ((C17409e) t2).f48762i;
        Premium.ProductLevel level = premium != null ? premium.getLevel() : null;
        Premium premium2 = ((C17409e) t).f48762i;
        Premium.ProductLevel productLevel = null;
        if (premium2 != null) {
            productLevel = premium2.getLevel();
        }
        return C25225a.m4000K(level, productLevel);
    }
}
