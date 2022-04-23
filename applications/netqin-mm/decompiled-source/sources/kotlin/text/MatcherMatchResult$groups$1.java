package kotlin.text;

import java.util.Collection;
import java.util.Iterator;
import java.util.regex.MatchResult;
import kotlin.collections.AbstractCollection;
import p573f.p575b0.C9902h;
import p573f.p576c0.AbstractC9915g;
import p573f.p576c0.C9913e;
import p573f.p576c0.C9917i;
import p573f.p577r.C9978n;
import p573f.p577r.C9986v;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult$groups$1.class */
public final class MatcherMatchResult$groups$1 extends AbstractCollection<C9913e> implements AbstractC9915g {

    /* renamed from: a */
    public final /* synthetic */ MatcherMatchResult f38757a;

    public MatcherMatchResult$groups$1(MatcherMatchResult matcherMatchResult) {
        this.f38757a = matcherMatchResult;
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: a */
    public int mo38a() {
        MatchResult b;
        b = this.f38757a.m39b();
        return b.groupCount() + 1;
    }

    /* renamed from: a */
    public /* bridge */ boolean m37a(C9913e eVar) {
        return super.contains(eVar);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj != null ? obj instanceof C9913e : true) {
            return m37a((C9913e) obj);
        }
        return false;
    }

    public C9913e get(int i) {
        MatchResult b;
        C10080c b2;
        C9913e eVar;
        MatchResult b3;
        b = this.f38757a.m39b();
        b2 = C9917i.m1789b(b, i);
        if (b2.m1574c().intValue() >= 0) {
            b3 = this.f38757a.m39b();
            String group = b3.group(i);
            C10059q.m1642a((Object) group, "matchResult.group(index)");
            eVar = new C9913e(group, b2);
        } else {
            eVar = null;
        }
        return eVar;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<C9913e> iterator() {
        return C9902h.m1810a(C9986v.m1701a((Iterable) C9978n.m1708a((Collection<?>) this)), new MatcherMatchResult$groups$1$iterator$1(this)).iterator();
    }
}
