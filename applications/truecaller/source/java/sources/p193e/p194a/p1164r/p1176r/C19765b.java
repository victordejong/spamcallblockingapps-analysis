package p193e.p194a.p1164r.p1176r;

import com.truecaller.account.network.VerificationPhoneNumber;
import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.r.r.b */
/* loaded from: classes16-dex2jar.jar:e/a/r/r/b.class */
public final class C19765b<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return C25225a.m4000K(Integer.valueOf(((VerificationPhoneNumber) t).getPriority()), Integer.valueOf(((VerificationPhoneNumber) t2).getPriority()));
    }
}
