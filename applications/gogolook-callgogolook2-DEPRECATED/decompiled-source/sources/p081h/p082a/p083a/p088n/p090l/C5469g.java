package p081h.p082a.p083a.p088n.p090l;

import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.criteo.publisher.model.C2041o;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p089k.C5440h;
/* renamed from: h.a.a.n.l.g */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/g.class */
public class C5469g {

    /* renamed from: a */
    public final EnumC5472c f13623a;

    /* renamed from: b */
    public final C5440h f13624b;

    /* renamed from: c */
    public final C5428d f13625c;

    /* renamed from: h.a.a.n.l.g$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/g$b.class */
    public static class C5471b {
        /* renamed from: a */
        public static C5469g m25406a(JSONObject jSONObject, C5341e eVar) {
            char c;
            String optString = jSONObject.optString("mode");
            int hashCode = optString.hashCode();
            if (hashCode == 97) {
                if (optString.equals("a")) {
                    c = 0;
                }
                c = 65535;
            } else if (hashCode != 105) {
                if (hashCode == 115 && optString.equals("s")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (optString.equals(WebvttCueParser.TAG_ITALIC)) {
                    c = 2;
                }
                c = 65535;
            }
            return new C5469g(c != 0 ? c != 1 ? c != 2 ? EnumC5472c.MaskModeUnknown : EnumC5472c.MaskModeIntersect : EnumC5472c.MaskModeSubtract : EnumC5472c.MaskModeAdd, C5440h.C5442b.m25461a(jSONObject.optJSONObject("pt"), eVar), C5428d.C5430b.m25471a(jSONObject.optJSONObject(C2041o.f2249c), eVar));
        }
    }

    /* renamed from: h.a.a.n.l.g$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/g$c.class */
    public enum EnumC5472c {
        MaskModeAdd,
        MaskModeSubtract,
        MaskModeIntersect,
        MaskModeUnknown
    }

    public C5469g(EnumC5472c cVar, C5440h hVar, C5428d dVar) {
        this.f13623a = cVar;
        this.f13624b = hVar;
        this.f13625c = dVar;
    }

    /* renamed from: a */
    public EnumC5472c m25409a() {
        return this.f13623a;
    }

    /* renamed from: b */
    public C5440h m25408b() {
        return this.f13624b;
    }

    /* renamed from: c */
    public C5428d m25407c() {
        return this.f13625c;
    }
}
