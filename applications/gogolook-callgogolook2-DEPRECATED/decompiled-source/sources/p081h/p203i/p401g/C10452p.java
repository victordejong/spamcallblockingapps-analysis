package p081h.p203i.p401g;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p401g.C10418l;
/* renamed from: h.i.g.p */
/* loaded from: classes2-dex2jar.jar:h/i/g/p.class */
public class C10452p extends C10459r {

    /* renamed from: g */
    public static final C10452p f23781g = new C10452p(true);

    /* renamed from: f */
    public final Map<C10453a, C10454b> f23782f;

    /* renamed from: h.i.g.p$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/p$a.class */
    public static final class C10453a {

        /* renamed from: a */
        public final C10418l.C10420b f23783a;

        /* renamed from: b */
        public final int f23784b;

        public C10453a(C10418l.C10420b bVar, int i) {
            this.f23783a = bVar;
            this.f23784b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C10453a)) {
                return false;
            }
            C10453a aVar = (C10453a) obj;
            boolean z = false;
            if (this.f23783a == aVar.f23783a) {
                z = false;
                if (this.f23784b == aVar.f23784b) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f23783a.hashCode() * 65535) + this.f23784b;
        }
    }

    /* renamed from: h.i.g.p$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/p$b.class */
    public static final class C10454b {

        /* renamed from: a */
        public final C10418l.C10428g f23785a;

        /* renamed from: b */
        public final AbstractC10287j0 f23786b;
    }

    public C10452p() {
        new HashMap();
        new HashMap();
        this.f23782f = new HashMap();
        new HashMap();
    }

    public C10452p(boolean z) {
        super(C10459r.f23791e);
        Collections.emptyMap();
        Collections.emptyMap();
        this.f23782f = Collections.emptyMap();
        Collections.emptyMap();
    }

    /* renamed from: a */
    public static C10452p m11796a() {
        return f23781g;
    }

    /* renamed from: a */
    public C10454b m11795a(C10418l.C10420b bVar, int i) {
        return this.f23782f.get(new C10453a(bVar, i));
    }
}
