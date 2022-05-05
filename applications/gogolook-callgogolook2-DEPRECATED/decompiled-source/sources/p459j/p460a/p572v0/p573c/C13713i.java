package p459j.p460a.p572v0.p573c;

import androidx.collection.ArrayMap;
import com.google.gson.Gson;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10113s;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p459j.p460a.p572v0.p575e.C13728c;
import p459j.p460a.p572v0.p575e.C13729d;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.i */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/i.class */
public final class C13713i {
    /* renamed from: a */
    public static final Map<AbstractC13709g.EnumC13710a, AbstractC13709g> m3614a(C13728c cVar, String str) {
        C15149k.m377b(cVar, "receiver$0");
        C15149k.m377b(str, "url");
        ArrayMap arrayMap = new ArrayMap();
        for (C13729d dVar : cVar.m3581a()) {
            if (C13712h.f30792a[AbstractC13709g.EnumC13710a.f30790g.m3615a(dVar.m3579b()).ordinal()] == 1) {
                try {
                    C13706d dVar2 = (C13706d) new Gson().m30999a((AbstractC10104j) dVar.m3580a(), (Class<Object>) C13706d.class);
                    AbstractC13709g.EnumC13710a aVar = AbstractC13709g.EnumC13710a.GOOGLE_EVALUATE_API;
                    C15149k.m383a((Object) dVar2, "scores");
                    arrayMap.put(aVar, new C13703b(str, dVar2));
                } catch (C10113s e) {
                    new C13706d(C15021m.m565a());
                }
            }
        }
        return arrayMap;
    }
}
