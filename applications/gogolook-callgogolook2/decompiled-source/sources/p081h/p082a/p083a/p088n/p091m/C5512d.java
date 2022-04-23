package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Color;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3306ip;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5444j;
import p081h.p082a.p083a.p088n.p089k.C5447k;
import p081h.p082a.p083a.p088n.p089k.C5449l;
import p081h.p082a.p083a.p088n.p090l.AbstractC5460b;
import p081h.p082a.p083a.p088n.p090l.C5469g;
import p081h.p082a.p083a.p088n.p090l.C5492n;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.n.m.d */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/d.class */
public class C5512d {

    /* renamed from: a */
    public final List<AbstractC5460b> f13734a;

    /* renamed from: b */
    public final C5341e f13735b;

    /* renamed from: c */
    public final String f13736c;

    /* renamed from: d */
    public final long f13737d;

    /* renamed from: e */
    public final EnumC5515c f13738e;

    /* renamed from: f */
    public final long f13739f;
    @Nullable

    /* renamed from: g */
    public final String f13740g;

    /* renamed from: h */
    public final List<C5469g> f13741h;

    /* renamed from: i */
    public final C5449l f13742i;

    /* renamed from: j */
    public final int f13743j;

    /* renamed from: k */
    public final int f13744k;

    /* renamed from: l */
    public final int f13745l;

    /* renamed from: m */
    public final float f13746m;

    /* renamed from: n */
    public final float f13747n;

    /* renamed from: o */
    public final int f13748o;

    /* renamed from: p */
    public final int f13749p;
    @Nullable

    /* renamed from: q */
    public final C5444j f13750q;
    @Nullable

    /* renamed from: r */
    public final C5447k f13751r;
    @Nullable

    /* renamed from: s */
    public final C5420b f13752s;

    /* renamed from: t */
    public final List<C5358a<Float>> f13753t;

    /* renamed from: u */
    public final EnumC5516d f13754u;

    /* renamed from: h.a.a.n.m.d$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/d$b.class */
    public static class C5514b {
        /* renamed from: a */
        public static C5512d m25296a(C5341e eVar) {
            Rect a = eVar.m25651a();
            return new C5512d(Collections.emptyList(), eVar, "root", -1L, EnumC5515c.PreComp, -1L, null, Collections.emptyList(), C5449l.C5451b.m25449a(), 0, 0, 0, 0.0f, 0.0f, a.width(), a.height(), null, null, Collections.emptyList(), EnumC5516d.None, null);
        }

        /* renamed from: a */
        public static C5512d m25295a(JSONObject jSONObject, C5341e eVar) {
            int i;
            int i2;
            int i3;
            C5444j jVar;
            C5447k kVar;
            int i4;
            int i5;
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            String optString2 = jSONObject.optString("refId");
            if (optString.endsWith(".ai") || jSONObject.optString("cl", "").equals("ai")) {
                eVar.m25648a("Convert your Illustrator layers to shape layers.");
            }
            long optLong = jSONObject.optLong("ind");
            int optInt = jSONObject.optInt("ty", -1);
            EnumC5515c cVar = optInt < EnumC5515c.Unknown.ordinal() ? EnumC5515c.values()[optInt] : EnumC5515c.Unknown;
            EnumC5515c cVar2 = cVar;
            if (cVar == EnumC5515c.Text) {
                cVar2 = cVar;
                if (!C5530f.m25248a(eVar, 4, 8, 0)) {
                    cVar2 = EnumC5515c.Unknown;
                    eVar.m25648a("Text is only supported on bodymovin >= 4.8.0");
                }
            }
            long optLong2 = jSONObject.optLong("parent", -1L);
            if (cVar2 == EnumC5515c.Solid) {
                i3 = (int) (jSONObject.optInt("sw") * eVar.m25643c());
                i2 = (int) (jSONObject.optInt("sh") * eVar.m25643c());
                i = Color.parseColor(jSONObject.optString("sc"));
            } else {
                i3 = 0;
                i2 = 0;
                i = 0;
            }
            C5449l a = C5449l.C5451b.m25447a(jSONObject.optJSONObject("ks"), eVar);
            EnumC5516d dVar = EnumC5516d.values()[jSONObject.optInt(TtmlNode.TAG_TT)];
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("masksProperties");
            if (optJSONArray != null) {
                for (int i6 = 0; i6 < optJSONArray.length(); i6++) {
                    arrayList.add(C5469g.C5471b.m25406a(optJSONArray.optJSONObject(i6), eVar));
                }
            }
            ArrayList arrayList3 = new ArrayList();
            JSONArray optJSONArray2 = jSONObject.optJSONArray("shapes");
            if (optJSONArray2 != null) {
                for (int i7 = 0; i7 < optJSONArray2.length(); i7++) {
                    AbstractC5460b a2 = C5492n.m25366a(optJSONArray2.optJSONObject(i7), eVar);
                    if (a2 != null) {
                        arrayList3.add(a2);
                    }
                }
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("t");
            if (optJSONObject != null) {
                jVar = C5444j.C5445a.m25460a(optJSONObject.optJSONObject("d"), eVar);
                kVar = C5447k.C5448a.m25458a(optJSONObject.optJSONArray("a").optJSONObject(0), eVar);
            } else {
                jVar = null;
                kVar = null;
            }
            if (jSONObject.has("ef")) {
                eVar.m25648a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape.");
            }
            float optDouble = (float) jSONObject.optDouble("sr", 1.0d);
            float optDouble2 = ((float) jSONObject.optDouble("st")) / eVar.m25639e();
            if (cVar2 == EnumC5515c.PreComp) {
                i5 = (int) (jSONObject.optInt(C2052w.f2268l) * eVar.m25643c());
                i4 = (int) (jSONObject.optInt("h") * eVar.m25643c());
            } else {
                i5 = 0;
                i4 = 0;
            }
            float optLong3 = ((float) jSONObject.optLong(C3306ip.f5597a)) / optDouble;
            float optLong4 = ((float) jSONObject.optLong("op")) / optDouble;
            if (optLong3 > 0.0f) {
                arrayList2.add(new C5358a(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(optLong3)));
            }
            if (optLong4 <= 0.0f) {
                optLong4 = (float) (eVar.m25637f() + 1);
            }
            arrayList2.add(new C5358a(eVar, Float.valueOf(1.0f), Float.valueOf(1.0f), null, optLong3, Float.valueOf(optLong4)));
            arrayList2.add(new C5358a(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, optLong4, Float.valueOf(Float.MAX_VALUE)));
            return new C5512d(arrayList3, eVar, optString, optLong, cVar2, optLong2, optString2, arrayList, a, i3, i2, i, optDouble, optDouble2, i5, i4, jVar, kVar, arrayList2, dVar, jSONObject.has("tm") ? C5420b.C5422b.m25476a(jSONObject.optJSONObject("tm"), eVar, false) : null);
        }
    }

    /* renamed from: h.a.a.n.m.d$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/d$c.class */
    public enum EnumC5515c {
        PreComp,
        Solid,
        Image,
        Null,
        Shape,
        Text,
        Unknown
    }

    /* renamed from: h.a.a.n.m.d$d */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/d$d.class */
    public enum EnumC5516d {
        None,
        Add,
        Invert,
        Unknown
    }

    public C5512d(List<AbstractC5460b> list, C5341e eVar, String str, long j, EnumC5515c cVar, long j2, @Nullable String str2, List<C5469g> list2, C5449l lVar, int i, int i2, int i3, float f, float f2, int i4, int i5, @Nullable C5444j jVar, @Nullable C5447k kVar, List<C5358a<Float>> list3, EnumC5516d dVar, @Nullable C5420b bVar) {
        this.f13734a = list;
        this.f13735b = eVar;
        this.f13736c = str;
        this.f13737d = j;
        this.f13738e = cVar;
        this.f13739f = j2;
        this.f13740g = str2;
        this.f13741h = list2;
        this.f13742i = lVar;
        this.f13743j = i;
        this.f13744k = i2;
        this.f13745l = i3;
        this.f13746m = f;
        this.f13747n = f2;
        this.f13748o = i4;
        this.f13749p = i5;
        this.f13750q = jVar;
        this.f13751r = kVar;
        this.f13753t = list3;
        this.f13754u = dVar;
        this.f13752s = bVar;
    }

    /* renamed from: a */
    public C5341e m25318a() {
        return this.f13735b;
    }

    /* renamed from: a */
    public String m25317a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(m25311g());
        sb.append("\n");
        C5512d a = this.f13735b.m25650a(m25310h());
        if (a != null) {
            sb.append("\t\tParents: ");
            sb.append(a.m25311g());
            C5512d a2 = this.f13735b.m25650a(a.m25310h());
            while (a2 != null) {
                sb.append("->");
                sb.append(a2.m25311g());
                a2 = this.f13735b.m25650a(a2.m25310h());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!m25313e().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(m25313e().size());
            sb.append("\n");
        }
        if (!(m25303o() == 0 || m25304n() == 0)) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(m25303o()), Integer.valueOf(m25304n()), Integer.valueOf(m25305m())));
        }
        if (!this.f13734a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (AbstractC5460b bVar : this.f13734a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(bVar);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public long m25316b() {
        return this.f13737d;
    }

    /* renamed from: c */
    public List<C5358a<Float>> m25315c() {
        return this.f13753t;
    }

    /* renamed from: d */
    public EnumC5515c m25314d() {
        return this.f13738e;
    }

    /* renamed from: e */
    public List<C5469g> m25313e() {
        return this.f13741h;
    }

    /* renamed from: f */
    public EnumC5516d m25312f() {
        return this.f13754u;
    }

    /* renamed from: g */
    public String m25311g() {
        return this.f13736c;
    }

    /* renamed from: h */
    public long m25310h() {
        return this.f13739f;
    }

    /* renamed from: i */
    public int m25309i() {
        return this.f13749p;
    }

    /* renamed from: j */
    public int m25308j() {
        return this.f13748o;
    }

    @Nullable
    /* renamed from: k */
    public String m25307k() {
        return this.f13740g;
    }

    /* renamed from: l */
    public List<AbstractC5460b> m25306l() {
        return this.f13734a;
    }

    /* renamed from: m */
    public int m25305m() {
        return this.f13745l;
    }

    /* renamed from: n */
    public int m25304n() {
        return this.f13744k;
    }

    /* renamed from: o */
    public int m25303o() {
        return this.f13743j;
    }

    /* renamed from: p */
    public float m25302p() {
        return this.f13747n;
    }

    @Nullable
    /* renamed from: q */
    public C5444j m25301q() {
        return this.f13750q;
    }

    @Nullable
    /* renamed from: r */
    public C5447k m25300r() {
        return this.f13751r;
    }

    @Nullable
    /* renamed from: s */
    public C5420b m25299s() {
        return this.f13752s;
    }

    /* renamed from: t */
    public float m25298t() {
        return this.f13746m;
    }

    public String toString() {
        return m25317a("");
    }

    /* renamed from: u */
    public C5449l m25297u() {
        return this.f13742i;
    }
}
