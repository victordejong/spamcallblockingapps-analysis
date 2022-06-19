package p193e.p194a.p1114o5.p1119c2;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.TrueApp;
import com.truecaller.buildinfo.BuildName;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.o5.c2.r0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/c2/r0.class */
public final class C18995r0 {

    /* renamed from: a */
    public static AbstractC18977k f53125a;

    /* renamed from: a */
    public static AbstractC18977k m14265a(Context context) {
        AbstractC8412c m28549N = ((AbstractApplicationC8442a) context.getApplicationContext()).m28549N();
        AbstractC18977k abstractC18977k = f53125a;
        if (abstractC18977k != null) {
            return abstractC18977k;
        }
        BuildName buildName = BuildName.toBuildName(m28549N.mo12175v().getName());
        if (buildName == null) {
            C18993q0 c18993q0 = new C18993q0();
            f53125a = c18993q0;
            return c18993q0;
        }
        switch (buildName.ordinal()) {
            case 19:
            case 20:
            case 21:
                f53125a = new C18968f0();
                break;
            case 22:
            case 23:
                f53125a = new C18960b0();
                break;
            case 24:
                f53125a = new C18984m();
                break;
            case 25:
            case 30:
            case 32:
            case 40:
            default:
                String m15251Q = C18334g0.m15251Q("featureOperatorCustomization");
                C18961c c18961c = null;
                if (!TextUtils.isEmpty(m15251Q)) {
                    m15251Q.hashCode();
                    m15251Q.hashCode();
                    boolean z = true;
                    switch (m15251Q.hashCode()) {
                        case 2554:
                            if (m15251Q.equals("Oi")) {
                                z = false;
                                break;
                            }
                            break;
                        case 84088:
                            if (m15251Q.equals("Tim")) {
                                z = true;
                                break;
                            }
                            break;
                        case 2666700:
                            if (m15251Q.equals("Vivo")) {
                                z = true;
                                break;
                            }
                            break;
                        case 65190197:
                            if (m15251Q.equals("Claro")) {
                                z = true;
                                break;
                            }
                            break;
                        case 235300551:
                            if (m15251Q.equals("Telenor")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            c18961c = new C18959b();
                            break;
                        case true:
                            c18961c = new C18963d();
                            break;
                        case true:
                            c18961c = new C18969g();
                            break;
                        case true:
                            c18961c = new C18957a();
                            break;
                        case true:
                            c18961c = new C18961c();
                            break;
                        default:
                            c18961c = null;
                            break;
                    }
                    if (c18961c != null && c18961c.mo14270a() != null && !C15571h.m18636o("key_carrier_logged")) {
                        C15571h.m18626y("key_carrier_logged", true);
                        TrueApp.m36032b0().mo10154s().mo12776C4().mo13271e(new AbstractC19502g.C19504b.C19505a("CARRIER_Customization_Applied", null, C22128a.m8667T("Partner", c18961c.mo14270a().f53116a), null));
                    }
                }
                f53125a = c18961c;
                if (c18961c == null) {
                    f53125a = new C18993q0();
                    break;
                }
                break;
            case 26:
            case 27:
                f53125a = new C18966e0();
                break;
            case 28:
                f53125a = new C19005z();
                break;
            case 29:
                f53125a = new C18974i0();
                break;
            case 31:
                f53125a = new C18981k0();
                break;
            case 33:
                f53125a = new C18964d0();
                break;
            case 34:
                f53125a = new C18973i();
                break;
            case 35:
                f53125a = new C18972h0();
                break;
            case 36:
                f53125a = new C18982l();
                break;
            case 37:
                f53125a = new C18996s();
                break;
            case 38:
                f53125a = new C18971h();
                break;
            case 39:
                f53125a = new C18997s0();
                break;
            case 41:
                f53125a = new C18962c0();
                break;
            case 42:
                f53125a = new C19001v();
                break;
            case 43:
                f53125a = new C18983l0();
                break;
            case 44:
                f53125a = new C18989o0();
                break;
            case 45:
                f53125a = new C18987n0();
                break;
            case 46:
                f53125a = new C18985m0();
                break;
            case 47:
                f53125a = new C19003x();
                break;
            case 48:
                f53125a = new C19004y();
                break;
            case 49:
                f53125a = new C18994r();
                break;
            case 50:
                f53125a = new C18991p0();
                break;
            case 51:
                f53125a = new C18988o();
                break;
            case 52:
                f53125a = new C19002w();
                break;
            case 53:
                f53125a = new C18986n();
                break;
            case 54:
                f53125a = new C18958a0();
                break;
            case 55:
                f53125a = new C18999t0();
                break;
            case 56:
                f53125a = new C18976j0();
                break;
            case 57:
                f53125a = new C18975j();
                break;
            case 58:
                f53125a = new C18990p();
                break;
            case 59:
                f53125a = new C18970g0();
                break;
            case 60:
                f53125a = new C19000u();
                break;
            case 61:
                f53125a = new C18992q();
                break;
            case 62:
                f53125a = new C18998t();
                break;
            case 63:
                f53125a = new C18959b();
                break;
            case 64:
                f53125a = new C18969g();
                break;
            case 65:
                f53125a = new C18961c();
                break;
            case 66:
                f53125a = new C18963d();
                break;
            case 67:
                f53125a = new C18957a();
                break;
        }
        return f53125a;
    }

    /* renamed from: b */
    public static AbstractC18977k.C18980c m14264b(Context context) {
        return m14265a(context).mo14263b(context);
    }
}
