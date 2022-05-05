package p081h.p082a.p083a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3109fr;
import com.flurry.sdk.C3306ip;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p082a.p083a.C5349g;
import p081h.p082a.p083a.p088n.AsyncTaskC5408e;
import p081h.p082a.p083a.p088n.C5409f;
import p081h.p082a.p083a.p088n.C5411g;
import p081h.p082a.p083a.p088n.p091m.C5512d;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.e */
/* loaded from: classes-dex2jar.jar:h/a/a/e.class */
public class C5341e {

    /* renamed from: a */
    public final Map<String, List<C5512d>> f13330a;

    /* renamed from: b */
    public final Map<String, C5349g> f13331b;

    /* renamed from: c */
    public final Map<String, C5409f> f13332c;

    /* renamed from: d */
    public final SparseArrayCompat<C5411g> f13333d;

    /* renamed from: e */
    public final LongSparseArray<C5512d> f13334e;

    /* renamed from: f */
    public final List<C5512d> f13335f;

    /* renamed from: g */
    public final HashSet<String> f13336g;

    /* renamed from: h */
    public final C5353i f13337h;

    /* renamed from: i */
    public final Rect f13338i;

    /* renamed from: j */
    public final long f13339j;

    /* renamed from: k */
    public final long f13340k;

    /* renamed from: l */
    public final float f13341l;

    /* renamed from: m */
    public final float f13342m;

    /* renamed from: n */
    public final int f13343n;

    /* renamed from: o */
    public final int f13344o;

    /* renamed from: p */
    public final int f13345p;

    /* renamed from: h.a.a.e$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/e$b.class */
    public static class C5343b {
        /* renamed from: a */
        public static AbstractC5337a m25627a(Context context, InputStream inputStream, AbstractC5352h hVar) {
            AsyncTaskC5408e eVar = new AsyncTaskC5408e(context.getResources(), hVar);
            eVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, inputStream);
            return eVar;
        }

        /* renamed from: a */
        public static AbstractC5337a m25626a(Context context, String str, AbstractC5352h hVar) {
            try {
                return m25627a(context, context.getAssets().open(str), hVar);
            } catch (IOException e) {
                throw new IllegalStateException("Unable to find file " + str, e);
            }
        }

        @Nullable
        /* renamed from: a */
        public static C5341e m25625a(Resources resources, InputStream inputStream) {
            try {
                try {
                    byte[] bArr = new byte[inputStream.available()];
                    inputStream.read(bArr);
                    return m25624a(resources, new JSONObject(new String(bArr, "UTF-8")));
                } catch (IOException e) {
                    Log.e("LOTTIE", "Failed to load composition.", new IllegalStateException("Unable to find file.", e));
                    C5530f.m25247a(inputStream);
                    return null;
                } catch (JSONException e2) {
                    Log.e("LOTTIE", "Failed to load composition.", new IllegalStateException("Unable to load JSON.", e2));
                    C5530f.m25247a(inputStream);
                    return null;
                }
            } finally {
                C5530f.m25247a(inputStream);
            }
        }

        /* renamed from: a */
        public static C5341e m25624a(Resources resources, JSONObject jSONObject) {
            float f = resources.getDisplayMetrics().density;
            int optInt = jSONObject.optInt(C2052w.f2268l, -1);
            int optInt2 = jSONObject.optInt("h", -1);
            Rect rect = (optInt == -1 || optInt2 == -1) ? null : new Rect(0, 0, (int) (optInt * f), (int) (optInt2 * f));
            long optLong = jSONObject.optLong(C3306ip.f5597a, 0L);
            long optLong2 = jSONObject.optLong("op", 0L);
            float optDouble = (float) jSONObject.optDouble(C3109fr.f5027a, 0.0d);
            String[] split = jSONObject.optString("v").split("[.]");
            C5341e eVar = new C5341e(rect, optLong, optLong2, optDouble, f, Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
            JSONArray optJSONArray = jSONObject.optJSONArray("assets");
            m25620b(optJSONArray, eVar);
            m25618c(optJSONArray, eVar);
            m25621a(jSONObject.optJSONObject("fonts"), eVar);
            m25622a(jSONObject.optJSONArray("chars"), eVar);
            m25619b(jSONObject, eVar);
            return eVar;
        }

        /* renamed from: a */
        public static void m25623a(List<C5512d> list, LongSparseArray<C5512d> longSparseArray, C5512d dVar) {
            list.add(dVar);
            longSparseArray.put(dVar.m25316b(), dVar);
        }

        /* renamed from: a */
        public static void m25622a(@Nullable JSONArray jSONArray, C5341e eVar) {
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    C5411g a = C5411g.C5412a.m25484a(jSONArray.optJSONObject(i), eVar);
                    eVar.f13333d.put(a.hashCode(), a);
                }
            }
        }

        /* renamed from: a */
        public static void m25621a(@Nullable JSONObject jSONObject, C5341e eVar) {
            JSONArray optJSONArray;
            if (!(jSONObject == null || (optJSONArray = jSONObject.optJSONArray("list")) == null)) {
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    C5409f a = C5409f.C5410a.m25488a(optJSONArray.optJSONObject(i));
                    eVar.f13332c.put(a.m25490b(), a);
                }
            }
        }

        /* renamed from: b */
        public static void m25620b(@Nullable JSONArray jSONArray, C5341e eVar) {
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject.has("p")) {
                        C5349g a = C5349g.C5351b.m25576a(optJSONObject);
                        eVar.f13331b.put(a.m25577b(), a);
                    }
                }
            }
        }

        /* renamed from: b */
        public static void m25619b(JSONObject jSONObject, C5341e eVar) {
            JSONArray optJSONArray = jSONObject.optJSONArray("layers");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    C5512d a = C5512d.C5514b.m25295a(optJSONArray.optJSONObject(i2), eVar);
                    i = i;
                    if (a.m25314d() == C5512d.EnumC5515c.Image) {
                        i++;
                    }
                    m25623a(eVar.f13335f, eVar.f13334e, a);
                }
                if (i > 4) {
                    eVar.m25648a("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                }
            }
        }

        /* renamed from: c */
        public static void m25618c(@Nullable JSONArray jSONArray, C5341e eVar) {
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    JSONArray optJSONArray = optJSONObject.optJSONArray("layers");
                    if (optJSONArray != null) {
                        ArrayList arrayList = new ArrayList(optJSONArray.length());
                        LongSparseArray longSparseArray = new LongSparseArray();
                        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                            C5512d a = C5512d.C5514b.m25295a(optJSONArray.optJSONObject(i2), eVar);
                            longSparseArray.put(a.m25316b(), a);
                            arrayList.add(a);
                        }
                        eVar.f13330a.put(optJSONObject.optString("id"), arrayList);
                    }
                }
            }
        }
    }

    public C5341e(Rect rect, long j, long j2, float f, float f2, int i, int i2, int i3) {
        this.f13330a = new HashMap();
        this.f13331b = new HashMap();
        this.f13332c = new HashMap();
        this.f13333d = new SparseArrayCompat<>();
        this.f13334e = new LongSparseArray<>();
        this.f13335f = new ArrayList();
        this.f13336g = new HashSet<>();
        this.f13337h = new C5353i();
        this.f13338i = rect;
        this.f13339j = j;
        this.f13340k = j2;
        this.f13341l = f;
        this.f13342m = f2;
        this.f13343n = i;
        this.f13344o = i2;
        this.f13345p = i3;
        if (!C5530f.m25248a(this, 4, 5, 0)) {
            m25648a("Lottie only supports bodymovin >= 4.5.0");
        }
    }

    /* renamed from: a */
    public Rect m25651a() {
        return this.f13338i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public C5512d m25650a(long j) {
        return this.f13334e.get(j);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public void m25648a(String str) {
        this.f13336g.add(str);
    }

    /* renamed from: a */
    public void m25647a(boolean z) {
        this.f13337h.m25573a(z);
    }

    /* renamed from: b */
    public SparseArrayCompat<C5411g> m25646b() {
        return this.f13333d;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: b */
    public List<C5512d> m25644b(String str) {
        return this.f13330a.get(str);
    }

    /* renamed from: c */
    public float m25643c() {
        return this.f13342m;
    }

    /* renamed from: d */
    public long m25641d() {
        return (((float) (this.f13340k - this.f13339j)) / this.f13341l) * 1000.0f;
    }

    /* renamed from: e */
    public float m25639e() {
        return (((float) m25641d()) * this.f13341l) / 1000.0f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: f */
    public long m25637f() {
        return this.f13340k;
    }

    /* renamed from: g */
    public Map<String, C5409f> m25635g() {
        return this.f13332c;
    }

    /* renamed from: h */
    public Map<String, C5349g> m25634h() {
        return this.f13331b;
    }

    /* renamed from: i */
    public List<C5512d> m25633i() {
        return this.f13335f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: j */
    public int m25632j() {
        return this.f13343n;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: k */
    public int m25631k() {
        return this.f13344o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: l */
    public int m25630l() {
        return this.f13345p;
    }

    /* renamed from: m */
    public C5353i m25629m() {
        return this.f13337h;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: n */
    public long m25628n() {
        return this.f13339j;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (C5512d dVar : this.f13335f) {
            sb.append(dVar.m25317a("\t"));
        }
        return sb.toString();
    }
}
