package com.asus.contacts.yellowpage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.contacts.util.Constants;
import com.android.volley.d;
import com.android.volley.p;
import com.android.volley.toolbox.m;
import com.android.volley.u;
import com.asus.contacts.yellowpage.utils.VolleyHttpUtils;
import com.asus.contacts.yellowpage.utils.a;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.contacts.yellowpage.utils.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static e f2814a;
    private static final String c = e.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    g f2815b;
    private double d;
    private double e;
    private String f;
    private o g;

    public static e a() {
        e eVar;
        synchronized (e.class) {
            try {
                if (f2814a == null) {
                    f2814a = new e();
                }
                eVar = f2814a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    private void a(final Context context, final f fVar, final String str, final boolean z) {
        Log.d(c, "queryOnline");
        final long currentTimeMillis = System.currentTimeMillis();
        this.f2815b = new g(str, new p.b<JSONArray>() { // from class: com.asus.contacts.yellowpage.e.1
            @Override // com.android.volley.p.b
            public final /* synthetic */ void a(JSONArray jSONArray) {
                JSONArray jSONArray2 = jSONArray;
                Log.d(e.c, "queryOnline: Response success.");
                ArrayList<a> arrayList = new ArrayList<>();
                if (jSONArray2 != null) {
                    b.a(context, "Search Average Time", System.currentTimeMillis() - currentTimeMillis);
                    for (int i = 0; i < jSONArray2.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray2.getJSONObject(i);
                            if (jSONObject != null) {
                                a aVar = new a();
                                aVar.f2790a = jSONObject.getString("id");
                                aVar.f2791b = jSONObject.getString("company_name");
                                aVar.c = jSONObject.getString("branch_name");
                                aVar.d = jSONObject.getString(Constants.SCHEME_TEL);
                                aVar.e = jSONObject.getString("address");
                                aVar.f = jSONObject.getString("sml_class");
                                aVar.l = jSONObject.getString("source");
                                aVar.m = jSONObject.getString("url");
                                Object obj = jSONObject.get("ipeen_rating");
                                if (obj == null || !(obj instanceof Double)) {
                                    aVar.h = 0.0f;
                                } else {
                                    try {
                                        aVar.h = (float) ((Double) obj).doubleValue();
                                    } catch (Exception e) {
                                        aVar.h = 0.0f;
                                        e.printStackTrace();
                                    }
                                }
                                Object obj2 = jSONObject.get("longitude");
                                Object obj3 = jSONObject.get("latitude");
                                if (obj2 instanceof Double) {
                                    aVar.i = ((Double) obj2).doubleValue();
                                } else {
                                    aVar.i = ((Integer) obj2).intValue();
                                }
                                if (obj3 instanceof Double) {
                                    aVar.j = ((Double) obj3).doubleValue();
                                } else {
                                    aVar.j = ((Integer) obj3).intValue();
                                }
                                e.this.g.b(aVar.j, aVar.i);
                                aVar.k = e.this.g.a();
                                arrayList.add(aVar);
                            }
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                    a.a(context, str, arrayList);
                }
                if (z) {
                    fVar.a(1, arrayList, null);
                } else {
                    fVar.a(arrayList);
                }
            }
        }, new p.a() { // from class: com.asus.contacts.yellowpage.e.2
            @Override // com.android.volley.p.a
            public final void a(u uVar) {
                if (uVar == null || uVar.f2342a == null) {
                    Log.d(e.c, "queryOnline: No network connection.");
                } else {
                    Log.e(e.c, "queryOnline: Response error. (Error code: " + uVar.f2342a.f2300a + ", info: " + new String(uVar.f2342a.f2301b) + ")");
                    b.a(context, "Search Failed Time");
                }
                if (a.a(context, str)) {
                    Log.d(e.c, "queryCache");
                    ArrayList<a> a2 = a.a(context, str, e.this.d, e.this.e);
                    if (z) {
                        fVar.a(1, a2, null);
                    } else {
                        fVar.a(a2);
                    }
                } else {
                    fVar.a(2, null, uVar);
                }
            }
        });
        this.f2815b.k = new d(30000, 0, 1.0f);
        m.a(context).a(this.f2815b);
        b.a(context, "Query Online");
    }

    private void a(Context context, ArrayList<String> arrayList, boolean z, int i) {
        f fVar = (f) context;
        String str = new String(BuildConfig.FLAVOR);
        String str2 = new String(BuildConfig.FLAVOR);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            str2 = TextUtils.isEmpty(str2) ? next : str2 + " " + next;
        }
        if (!z) {
            int a2 = c.a(context, "key_yellow_page_location_index");
            if (a2 > 0) {
                str = Integer.toString(a2 - 1);
            }
        } else {
            str = this.f;
        }
        String a3 = VolleyHttpUtils.a(str2, str, z, i);
        if (a.b(context, a3)) {
            s.a();
            if (s.a(context).equalsIgnoreCase("1")) {
                a(context, fVar, a3, z);
                return;
            } else if (!a.a(context, a3)) {
                fVar.a(3, null, null);
                return;
            }
        }
        b(context, fVar, a3, z);
    }

    private void b(Context context, f fVar, String str, boolean z) {
        Log.d(c, "queryCache");
        ArrayList<a> a2 = a.a(context, str, this.d, this.e);
        if (z) {
            fVar.a(1, a2, null);
        } else {
            fVar.a(a2);
        }
    }

    public final void a(Context context, int i, String str, ArrayList<String> arrayList, boolean z, int i2) {
        f fVar = (f) context;
        this.g = new o();
        String b2 = c.b(context, "extra_user_latitude", null);
        String b3 = c.b(context, "extra_user_longitude", null);
        if (TextUtils.isEmpty(b2) || TextUtils.isEmpty(b3)) {
            this.d = 0.0d;
            this.e = 0.0d;
            this.f = null;
        } else {
            this.d = Double.parseDouble(b2);
            this.e = Double.parseDouble(b3);
            this.g.a(this.d, this.e);
            o oVar = this.g;
            String str2 = BuildConfig.FLAVOR;
            int i3 = 0;
            int i4 = 0;
            boolean z2 = true;
            while (str2.length() < 5) {
                if (z2) {
                    double d = (oVar.d[0] + oVar.d[1]) / 2.0d;
                    if (oVar.f2847b > d) {
                        i4 += o.e[i3];
                        oVar.d[0] = d;
                    } else {
                        oVar.d[1] = d;
                    }
                } else {
                    double d2 = (oVar.c[0] + oVar.c[1]) / 2.0d;
                    if (oVar.f2846a > d2) {
                        i4 += o.e[i3];
                        oVar.c[0] = d2;
                    } else {
                        oVar.c[1] = d2;
                    }
                }
                z2 = !z2;
                if (i3 < 4) {
                    i3++;
                } else {
                    str2 = str2 + "0123456789bcdefghjkmnpqrstuvwxyz".charAt(i4);
                    i3 = 0;
                    i4 = 0;
                }
            }
            this.f = str2;
        }
        ArrayList arrayList2 = new ArrayList();
        if (i == 1) {
            a(context, arrayList, z, i2);
            return;
        }
        if (i == 0) {
            int length = str.length() / 2;
            if (length == 1) {
                arrayList2.add(Pair.create("big_class", str));
            } else if (length == 2) {
                arrayList2.add(Pair.create("mid_class", str));
            } else {
                arrayList2.add(Pair.create("sml_class", str));
            }
        }
        if (!z) {
            int a2 = c.a(context, "key_yellow_page_location_index");
            if (a2 > 0) {
                arrayList2.add(Pair.create("city", Integer.toString(a2 - 1)));
            }
        } else {
            arrayList2.add(Pair.create("geohash", this.f));
        }
        String a3 = VolleyHttpUtils.a("https://asus-telephony-yellowpage.azure-mobile.net/tables/asusbusiness4", arrayList2, i2, z);
        if (a.b(context, a3)) {
            s.a();
            if (s.a(context).equalsIgnoreCase("1")) {
                a(context, fVar, a3, z);
                return;
            } else if (!a.a(context, a3)) {
                fVar.a(3, null, null);
                return;
            }
        }
        b(context, fVar, a3, z);
    }
}
