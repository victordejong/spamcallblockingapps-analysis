package p081h.p160h.p179e.p180a.p183i;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.flurry.sdk.C3478n;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6343d;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.i.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/i/c.class */
public class C6360c extends AbstractC6361d {

    /* renamed from: a */
    public String f15814a;

    /* renamed from: b */
    public String f15815b;

    /* renamed from: h */
    public int f15821h;

    /* renamed from: c */
    public String f15816c = null;

    /* renamed from: d */
    public String f15817d = null;

    /* renamed from: e */
    public String f15818e = null;

    /* renamed from: f */
    public String f15819f = null;

    /* renamed from: g */
    public double f15820g = 0.0d;

    /* renamed from: i */
    public long f15822i = 0;

    /* renamed from: j */
    public String f15823j = null;

    /* renamed from: k */
    public Double f15824k = null;

    /* renamed from: l */
    public double[] f15825l = null;

    /* renamed from: m */
    public String[] f15826m = null;

    /* renamed from: n */
    public Integer[] f15827n = null;

    /* renamed from: o */
    public int f15828o = 0;

    public C6360c(String str, String str2, int i) {
        this.f15814a = null;
        this.f15815b = null;
        this.f15821h = 1;
        if (i == 1 || i == 2) {
            this.f15814a = str;
            this.f15815b = str2;
            this.f15821h = i;
            return;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public C6360c m23010a(double d) {
        if (this.f15821h == 1) {
            this.f15824k = Double.valueOf(d);
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public C6360c m23009a(int i) {
        if (this.f15821h == 2) {
            this.f15828o = i;
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public C6360c m23008a(String str) {
        if (this.f15821h == 1) {
            this.f15823j = str;
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public C6360c m23007a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new NullPointerException();
        }
        this.f15816c = str;
        this.f15817d = str2;
        return this;
    }

    /* renamed from: a */
    public C6360c m23006a(String str, String str2, double d) {
        if (this.f15821h == 1) {
            m23007a(str, str2);
            this.f15820g = d;
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public C6360c m23005a(String str, List<String> list, List<Integer> list2) {
        if (this.f15821h == 2) {
            this.f15818e = str;
            m23002b(list);
            m23004a(list2);
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: a */
    public final C6360c m23004a(List<Integer> list) {
        if (!(list == null || list.size() == 0)) {
            int size = list.size();
            this.f15827n = new Integer[size];
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    this.f15827n[i] = Integer.MIN_VALUE;
                } else {
                    this.f15827n[i] = list.get(i);
                }
            }
        }
        return this;
    }

    @Override // p081h.p160h.p179e.p180a.p183i.AbstractC6361d
    /* renamed from: a */
    public JSONObject mo23001a() {
        try {
            JSONObject jSONObject = new JSONObject();
            long currentTimeMillis = this.f15822i != 0 ? this.f15822i : System.currentTimeMillis();
            jSONObject.put("ts", currentTimeMillis);
            int i = this.f15821h;
            if (i == 1) {
                jSONObject.put("type", NotificationCompat.CATEGORY_EVENT);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("sid", this.f15814a);
                jSONObject2.put("pv", this.f15815b);
                jSONObject2.put("c", this.f15816c);
                jSONObject2.put("e", this.f15817d);
                jSONObject2.put("v", this.f15820g);
                if (this.f15823j != null) {
                    jSONObject2.put("ctx_s", this.f15823j);
                }
                if (this.f15824k != null) {
                    jSONObject2.put("ctx_n", this.f15824k.doubleValue());
                }
                if (this.f15825l != null) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(this.f15825l[0]);
                    jSONArray.put(this.f15825l[1]);
                    jSONObject2.put("ctx_l", jSONArray);
                }
                jSONObject.put("data", jSONObject2);
            } else if (i == 2) {
                jSONObject.put(C3478n.f5989a, this.f15818e);
                jSONObject.put("eid", this.f15819f + "_" + currentTimeMillis);
                if (this.f15826m != null) {
                    jSONObject.put("strs", new JSONArray((Collection) Arrays.asList(this.f15826m)));
                }
                if (this.f15827n != null) {
                    jSONObject.put("ints", new JSONArray((Collection) Arrays.asList(this.f15827n)));
                }
                jSONObject.put("net", this.f15828o);
            }
            return jSONObject;
        } catch (JSONException e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: b */
    public C6360c m23003b(String str) {
        if (this.f15821h == 2) {
            this.f15819f = str;
            return this;
        }
        throw new C6343d("invalid gga version");
    }

    /* renamed from: b */
    public final C6360c m23002b(List<String> list) {
        if (!(list == null || list.size() == 0)) {
            int size = list.size();
            this.f15826m = new String[size];
            for (int i = 0; i < size; i++) {
                if (TextUtils.isEmpty(list.get(i))) {
                    this.f15826m[i] = "";
                } else {
                    this.f15826m[i] = list.get(i);
                }
            }
        }
        return this;
    }
}
