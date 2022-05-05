package com.uservoice.uservoicesdk.model;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.text.Html;
import android.text.TextUtils;
import com.uservoice.uservoicesdk.j.e;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.j.g;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static Vector<f> f4743a = new Vector<>();
    public static ExecutorService f = Executors.newFixedThreadPool(10);
    protected int e;

    /* JADX INFO: Access modifiers changed from: protected */
    public static f a(String str, g gVar) {
        return a(str, (Map<String, String>) null, gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static f a(String str, Map<String, String> map, g gVar) {
        f fVar = new f(com.uservoice.uservoicesdk.j.d.GET, str, map, gVar) { // from class: com.uservoice.uservoicesdk.model.d.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.j.f
            /* renamed from: a */
            public final void onPostExecute(e eVar) {
                super.onPostExecute(eVar);
                d.f4743a.remove(this);
            }
        };
        f4743a.add(fVar);
        fVar.executeOnExecutor(f, new String[0]);
        return fVar;
    }

    public static <T extends d> T a(SharedPreferences sharedPreferences, String str, String str2, Class<T> cls) {
        T t;
        try {
            t = (T) b(new JSONObject(sharedPreferences.getString(str, "{}")), str2, cls);
        } catch (JSONException e) {
            t = null;
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str, Object... objArr) {
        return "/api/v1" + String.format(Locale.US, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(JSONObject jSONObject, String str) {
        return jSONObject.isNull(str) ? null : Html.fromHtml(jSONObject.getString(str)).toString().trim();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends d> List<T> a(JSONObject jSONObject, String str, Class<T> cls) {
        ArrayList arrayList;
        if (!jSONObject.has(str)) {
            arrayList = null;
        } else {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    T newInstance = cls.newInstance();
                    newInstance.a(jSONArray.getJSONObject(i));
                    arrayList.add(newInstance);
                }
            } catch (IllegalAccessException e) {
                throw new JSONException("Reflection failed trying to call load on " + cls + " " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new JSONException("Reflection failed trying to call load on " + cls + " " + e2.getMessage());
            } catch (InstantiationException e3) {
                throw new JSONException("Reflection failed trying to instantiate " + cls + " " + e3.getMessage());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static f b(String str, Map<String, String> map, g gVar) {
        f fVar = new f(com.uservoice.uservoicesdk.j.d.POST, str, map, gVar) { // from class: com.uservoice.uservoicesdk.model.d.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.j.f
            /* renamed from: a */
            public final void onPostExecute(e eVar) {
                super.onPostExecute(eVar);
                d.f4743a.remove(this);
            }
        };
        f4743a.add(fVar);
        fVar.executeOnExecutor(f, new String[0]);
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends d> T b(JSONObject jSONObject, String str, Class<T> cls) {
        T cast;
        if (!jSONObject.has(str)) {
            cast = null;
        } else {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                T newInstance = cls.newInstance();
                newInstance.a(jSONObject2);
                cast = cls.cast(newInstance);
            } catch (IllegalAccessException e) {
                throw new JSONException("Reflection failed trying to call load on " + cls + " " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new JSONException("Reflection failed trying to call load on " + cls + " " + e2.getMessage());
            } catch (InstantiationException e3) {
                throw new JSONException("Reflection failed trying to instantiate " + cls + " " + e3.getMessage());
            } catch (JSONException e4) {
                throw new JSONException("JSON deserialization failure for " + cls + " " + e4.getMessage() + " JSON: " + jSONObject.toString());
            }
        }
        return cast;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"SimpleDateFormat"})
    public static Date b(JSONObject jSONObject, String str) {
        String a2 = a(jSONObject, str);
        try {
            return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss Z").parse(a2);
        } catch (ParseException e) {
            throw new JSONException("Could not parse date: " + a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static List<d> c(JSONObject jSONObject, String str) {
        ArrayList arrayList;
        d article;
        if (!jSONObject.has(str)) {
            arrayList = null;
        } else {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            ArrayList arrayList2 = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                String string = jSONObject2.getString("type");
                if (string.equals("suggestion")) {
                    article = new Suggestion();
                } else if (string.equals("article")) {
                    article = new Article();
                }
                article.a(jSONObject2);
                if (!(article instanceof Article) || !TextUtils.isEmpty(((Article) article).c)) {
                    arrayList2.add(article);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    public static void d() {
        Iterator<f> it = f4743a.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.isCancelled()) {
                next.cancel(true);
            } else {
                it.remove();
            }
        }
    }

    public void a(JSONObject jSONObject) {
        this.e = jSONObject.getInt("id");
    }

    public final boolean a(SharedPreferences sharedPreferences, String str, String str2) {
        boolean z;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            b(jSONObject);
            jSONObject2.put(str2, jSONObject);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(str, jSONObject2.toString());
            z = edit.commit();
        } catch (JSONException e) {
            z = false;
        }
        return z;
    }

    public void b(JSONObject jSONObject) {
        jSONObject.put("id", this.e);
    }

    public final int c() {
        return this.e;
    }
}
