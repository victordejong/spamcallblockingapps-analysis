package p081h.p082a.p083a.p088n.p090l;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3458lj;
import com.flurry.sdk.C3478n;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5380q;
import p081h.p082a.p083a.p088n.p089k.C5417a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.p */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/p.class */
public class C5497p implements AbstractC5460b {

    /* renamed from: a */
    public final String f13674a;
    @Nullable

    /* renamed from: b */
    public final C5420b f13675b;

    /* renamed from: c */
    public final List<C5420b> f13676c;

    /* renamed from: d */
    public final C5417a f13677d;

    /* renamed from: e */
    public final C5428d f13678e;

    /* renamed from: f */
    public final C5420b f13679f;

    /* renamed from: g */
    public final EnumC5500c f13680g;

    /* renamed from: h */
    public final EnumC5501d f13681h;

    /* renamed from: h.a.a.n.l.p$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/p$a.class */
    public static /* synthetic */ class C5498a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13682a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13683b = new int[EnumC5501d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            try {
                f13683b[EnumC5501d.Bevel.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13683b[EnumC5501d.Miter.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13683b[EnumC5501d.Round.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            f13682a = new int[EnumC5500c.values().length];
            try {
                f13682a[EnumC5500c.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13682a[EnumC5500c.Round.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13682a[EnumC5500c.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: h.a.a.n.l.p$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/p$b.class */
    public static class C5499b {
        /* renamed from: a */
        public static C5497p m25351a(JSONObject jSONObject, C5341e eVar) {
            C5420b bVar;
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            ArrayList arrayList = new ArrayList();
            C5417a a = C5417a.C5419b.m25479a(jSONObject.optJSONObject("c"), eVar);
            C5420b a2 = C5420b.C5422b.m25477a(jSONObject.optJSONObject(C2052w.f2268l), eVar);
            C5428d a3 = C5428d.C5430b.m25471a(jSONObject.optJSONObject(C2041o.f2249c), eVar);
            EnumC5500c cVar = EnumC5500c.values()[jSONObject.optInt("lc") - 1];
            EnumC5501d dVar = EnumC5501d.values()[jSONObject.optInt(C3458lj.f5951a) - 1];
            if (jSONObject.has("d")) {
                JSONArray optJSONArray = jSONObject.optJSONArray("d");
                bVar = null;
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    String optString2 = optJSONObject.optString(C3478n.f5989a);
                    if (optString2.equals(C2041o.f2249c)) {
                        bVar = C5420b.C5422b.m25477a(optJSONObject.optJSONObject("v"), eVar);
                    } else {
                        if (!optString2.equals("d")) {
                            bVar = bVar;
                            if (!optString2.equals("g")) {
                            }
                        }
                        arrayList.add(C5420b.C5422b.m25477a(optJSONObject.optJSONObject("v"), eVar));
                        bVar = bVar;
                    }
                }
                if (arrayList.size() == 1) {
                    arrayList.add(arrayList.get(0));
                }
            } else {
                bVar = null;
            }
            return new C5497p(optString, bVar, arrayList, a, a3, a2, cVar, dVar, null);
        }
    }

    /* renamed from: h.a.a.n.l.p$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/p$c.class */
    public enum EnumC5500c {
        Butt,
        Round,
        Unknown;

        /* renamed from: a */
        public Paint.Cap m25350a() {
            int i = C5498a.f13682a[ordinal()];
            return i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    /* renamed from: h.a.a.n.l.p$d */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/p$d.class */
    public enum EnumC5501d {
        Miter,
        Round,
        Bevel;

        /* renamed from: a */
        public Paint.Join m25349a() {
            int i = C5498a.f13683b[ordinal()];
            if (i == 1) {
                return Paint.Join.BEVEL;
            }
            if (i == 2) {
                return Paint.Join.MITER;
            }
            if (i != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public C5497p(String str, @Nullable C5420b bVar, List<C5420b> list, C5417a aVar, C5428d dVar, C5420b bVar2, EnumC5500c cVar, EnumC5501d dVar2) {
        this.f13674a = str;
        this.f13675b = bVar;
        this.f13676c = list;
        this.f13677d = aVar;
        this.f13678e = dVar;
        this.f13679f = bVar2;
        this.f13680g = cVar;
        this.f13681h = dVar2;
    }

    public /* synthetic */ C5497p(String str, C5420b bVar, List list, C5417a aVar, C5428d dVar, C5420b bVar2, EnumC5500c cVar, EnumC5501d dVar2, C5498a aVar2) {
        this(str, bVar, list, aVar, dVar, bVar2, cVar, dVar2);
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5380q(fVar, aVar, this);
    }

    /* renamed from: a */
    public EnumC5500c m25359a() {
        return this.f13680g;
    }

    /* renamed from: b */
    public C5417a m25358b() {
        return this.f13677d;
    }

    /* renamed from: c */
    public C5420b m25357c() {
        return this.f13675b;
    }

    /* renamed from: d */
    public EnumC5501d m25356d() {
        return this.f13681h;
    }

    /* renamed from: e */
    public List<C5420b> m25355e() {
        return this.f13676c;
    }

    /* renamed from: f */
    public String m25354f() {
        return this.f13674a;
    }

    /* renamed from: g */
    public C5428d m25353g() {
        return this.f13678e;
    }

    /* renamed from: h */
    public C5420b m25352h() {
        return this.f13679f;
    }
}
