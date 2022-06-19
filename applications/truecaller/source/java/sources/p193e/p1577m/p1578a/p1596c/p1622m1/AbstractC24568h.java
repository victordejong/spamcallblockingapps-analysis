package p193e.p1577m.p1578a.p1596c.p1622m1;

import com.google.android.exoplayer2.Format;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.C24574a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.C24578c;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1624n.C24586a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1625o.C24597a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1626p.C24600a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1627q.C24606a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24608a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1629s.C24616a;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24619b;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24628g;
/* renamed from: e.m.a.c.m1.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/h.class */
public interface AbstractC24568h {

    /* renamed from: a */
    public static final AbstractC24568h f68674a = new C24569a();

    /* renamed from: e.m.a.c.m1.h$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/h$a.class */
    public static final class C24569a implements AbstractC24568h {
        /* renamed from: a */
        public AbstractC24566f m4906a(Format format) {
            String str = format.f4847i;
            if (str != null) {
                str.hashCode();
                boolean z = true;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals("application/dvbsubs")) {
                            z = false;
                            break;
                        }
                        break;
                    case -1248334819:
                        if (str.equals("application/pgs")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            z = true;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            z = true;
                            break;
                        }
                        break;
                    case 822864842:
                        if (str.equals("text/x-ssa")) {
                            z = true;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        return new C24586a(format.f4849k);
                    case true:
                        return new C24597a();
                    case true:
                        return new C24619b();
                    case true:
                        return new C24628g();
                    case true:
                        return new C24616a(format.f4849k);
                    case true:
                        return new C24600a(format.f4849k);
                    case true:
                    case true:
                        return new C24574a(str, format.f4836B);
                    case true:
                        return new C24578c(format.f4836B);
                    case true:
                        return new C24606a();
                    case true:
                        return new C24608a();
                }
            }
            throw new IllegalArgumentException(C22128a.m8543z2("Attempted to create decoder for unsupported MIME type: ", str));
        }
    }
}
