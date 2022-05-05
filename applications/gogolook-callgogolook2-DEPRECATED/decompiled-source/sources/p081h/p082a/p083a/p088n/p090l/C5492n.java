package p081h.p082a.p083a.p088n.p090l;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import com.flurry.sdk.C3183gr;
import com.flurry.sdk.C3184gs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5364c;
import p081h.p082a.p083a.p088n.p089k.C5449l;
import p081h.p082a.p083a.p088n.p090l.C5457a;
import p081h.p082a.p083a.p088n.p090l.C5462d;
import p081h.p082a.p083a.p088n.p090l.C5465e;
import p081h.p082a.p083a.p088n.p090l.C5473h;
import p081h.p082a.p083a.p088n.p090l.C5477i;
import p081h.p082a.p083a.p088n.p090l.C5481j;
import p081h.p082a.p083a.p088n.p090l.C5484k;
import p081h.p082a.p083a.p088n.p090l.C5489m;
import p081h.p082a.p083a.p088n.p090l.C5494o;
import p081h.p082a.p083a.p088n.p090l.C5497p;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.n */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/n.class */
public class C5492n implements AbstractC5460b {

    /* renamed from: a */
    public final String f13669a;

    /* renamed from: b */
    public final List<AbstractC5460b> f13670b;

    /* renamed from: h.a.a.n.l.n$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/n$a.class */
    public static class C5493a {
        /* renamed from: b */
        public static C5492n m25363b(JSONObject jSONObject, C5341e eVar) {
            JSONArray optJSONArray = jSONObject.optJSONArray("it");
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                AbstractC5460b a = C5492n.m25366a(optJSONArray.optJSONObject(i), eVar);
                if (a != null) {
                    arrayList.add(a);
                }
            }
            return new C5492n(optString, arrayList);
        }
    }

    public C5492n(String str, List<AbstractC5460b> list) {
        this.f13669a = str;
        this.f13670b = list;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    /* renamed from: a */
    public static AbstractC5460b m25366a(JSONObject jSONObject, C5341e eVar) {
        char c;
        String optString = jSONObject.optString("ty");
        switch (optString.hashCode()) {
            case 3239:
                if (optString.equals("el")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3270:
                if (optString.equals("fl")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3295:
                if (optString.equals("gf")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3307:
                if (optString.equals(C3183gr.f5255b)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3308:
                if (optString.equals(C3184gs.f5259a)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3488:
                if (optString.equals("mm")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 3633:
                if (optString.equals("rc")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 3646:
                if (optString.equals("rp")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 3669:
                if (optString.equals("sh")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3679:
                if (optString.equals("sr")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3681:
                if (optString.equals("st")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3705:
                if (optString.equals("tm")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 3710:
                if (optString.equals("tr")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return C5493a.m25363b(jSONObject, eVar);
            case 1:
                return C5497p.C5499b.m25351a(jSONObject, eVar);
            case 2:
                return C5465e.C5467b.m25410a(jSONObject, eVar);
            case 3:
                return C5489m.C5491b.m25368a(jSONObject, eVar);
            case 4:
                return C5462d.C5464b.m25422a(jSONObject, eVar);
            case 5:
                return C5449l.C5451b.m25447a(jSONObject, eVar);
            case 6:
                return C5494o.C5496b.m25360a(jSONObject, eVar);
            case 7:
                return C5457a.C5459b.m25434a(jSONObject, eVar);
            case '\b':
                return C5481j.C5483b.m25385a(jSONObject, eVar);
            case '\t':
                return C5502q.C5504b.m25342a(jSONObject, eVar);
            case '\n':
                return C5477i.C5479b.m25391a(jSONObject, eVar);
            case 11:
                return C5473h.C5475b.m25403a(jSONObject);
            case '\f':
                return C5484k.C5485a.m25380a(jSONObject, eVar);
            default:
                String str = "Unknown shape type " + optString;
                return null;
        }
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5364c(fVar, aVar, this);
    }

    /* renamed from: a */
    public List<AbstractC5460b> m25367a() {
        return this.f13670b;
    }

    /* renamed from: b */
    public String m25365b() {
        return this.f13669a;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f13669a + "' Shapes: " + Arrays.toString(this.f13670b.toArray()) + '}';
    }
}
