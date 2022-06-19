package p193e.p1577m.p1578a.p1596c.p1613i1;

import com.google.android.exoplayer2.Format;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1614g.C24468a;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1615h.C24470a;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24472b;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1617j.C24475a;
/* renamed from: e.m.a.c.i1.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/c.class */
public interface AbstractC24463c {

    /* renamed from: a */
    public static final AbstractC24463c f68301a = new C24464a();

    /* renamed from: e.m.a.c.i1.c$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/c$a.class */
    public static final class C24464a implements AbstractC24463c {
        @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24463c
        /* renamed from: a */
        public boolean mo5073a(Format format) {
            String str = format.f4847i;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24463c
        /* renamed from: b */
        public AbstractC24462b mo5072b(Format format) {
            String str = format.f4847i;
            if (str != null) {
                str.hashCode();
                boolean z = true;
                switch (str.hashCode()) {
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            z = false;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        return new C24470a();
                    case true:
                        return new C24472b();
                    case true:
                        return new C24468a();
                    case true:
                        return new C24475a();
                }
            }
            throw new IllegalArgumentException(C22128a.m8543z2("Attempted to create decoder for unsupported MIME type: ", str));
        }
    }

    /* renamed from: a */
    boolean mo5073a(Format format);

    /* renamed from: b */
    AbstractC24462b mo5072b(Format format);
}
