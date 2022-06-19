package p261v2;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* renamed from: v2.j */
/* loaded from: classes-dex2jar.jar:v2/j.class */
public class C4597j implements AbstractC4592e {

    /* renamed from: a */
    public final C4598a f14187a;

    /* renamed from: b */
    public final C4596i f14188b;

    /* renamed from: c */
    public final Map<String, AbstractC4599k> f14189c = new HashMap();

    /* renamed from: v2.j$a */
    /* loaded from: classes-dex2jar.jar:v2/j$a.class */
    public static class C4598a {

        /* renamed from: a */
        public final Context f14190a;

        /* renamed from: b */
        public Map<String, String> f14191b = null;

        public C4598a(Context context) {
            this.f14190a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p261v2.AbstractC4591d m740a(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 439
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p261v2.C4597j.C4598a.m740a(java.lang.String):v2.d");
        }
    }

    public C4597j(Context context, C4596i c4596i) {
        C4598a c4598a = new C4598a(context);
        this.f14187a = c4598a;
        this.f14188b = c4596i;
    }

    @Override // p261v2.AbstractC4592e
    /* renamed from: a */
    public AbstractC4599k mo741a(String str) {
        synchronized (this) {
            if (this.f14189c.containsKey(str)) {
                return this.f14189c.get(str);
            }
            AbstractC4591d m740a = this.f14187a.m740a(str);
            if (m740a == null) {
                return null;
            }
            C4596i c4596i = this.f14188b;
            AbstractC4599k create = m740a.create(new C4590c(c4596i.f14184a, c4596i.f14185b, c4596i.f14186c, str));
            this.f14189c.put(str, create);
            return create;
        }
    }
}
