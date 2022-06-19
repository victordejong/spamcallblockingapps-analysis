package p193e.p1681q.p1701f.p1702a;

import com.tenor.android.core.constant.StringConstant;
import e.q.f.a.c.a;
import e.q.f.a.c.b;
import e.q.f.a.c.c;
import e.q.f.a.c.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1705e.p1709e.C25238a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1710f.C25241a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1710f.C25242b;
import p193e.p1681q.p1701f.p1702a.p1712f.C25254k;
/* renamed from: e.q.f.a.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/b.class */
public class C25223b {

    /* renamed from: a */
    public C25238a f70517a;

    /* renamed from: d */
    public JSONObject f70520d;

    /* renamed from: b */
    public d f70518b = new d();

    /* renamed from: e */
    public d f70521e = new d();

    /* renamed from: f */
    public d f70522f = new d();

    /* renamed from: g */
    public d f70523g = new d();

    /* renamed from: c */
    public a f70519c = new a();

    /* renamed from: l */
    public d f70528l = new d();

    /* renamed from: i */
    public HashMap<String, List<String>> f70525i = new HashMap<>();

    /* renamed from: j */
    public HashMap<String, c> f70526j = new HashMap<>();

    /* renamed from: k */
    public HashMap<String, b> f70527k = new HashMap<>();

    /* renamed from: h */
    public C25254k f70524h = new C25254k();

    /* renamed from: m */
    public Map<String, List<Integer>> f70529m = new HashMap();

    /* renamed from: n */
    public ArrayList<String[]> f70530n = new ArrayList<>();

    /* renamed from: a */
    public final void m4051a(String str, b bVar) throws Exception {
        String[] split;
        for (String str2 : str.split(StringConstant.SPACE)) {
            bVar.f70533c = true;
            if (str2.startsWith(StringConstant.HASH)) {
                bVar.f70531a = true;
                bVar.f = str2.substring(1);
            } else {
                if (!bVar.e.containsKey(str2)) {
                    bVar.e.put(str2, new b());
                }
                bVar = (b) bVar.e.get(str2);
            }
        }
        bVar.f70532b = true;
    }

    /* renamed from: b */
    public final void m4050b(String str, String str2, d dVar, String str3, String str4) {
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            char charAt = str2.charAt(i);
            dVar.f70533c = true;
            if (!dVar.d.containsKey(Character.valueOf(charAt))) {
                dVar.d.put(Character.valueOf(charAt), new d());
            }
            int i2 = dVar.g;
            if (i2 == 0) {
                dVar.g = 1;
            } else if (i2 == 1) {
                dVar.g = 2;
            }
            if (i == length - 1) {
                ((d) dVar.d.get(Character.valueOf(charAt))).f70532b = true;
                ((d) dVar.d.get(Character.valueOf(charAt))).e = str;
                if (str3 != null) {
                    ((d) dVar.d.get(Character.valueOf(charAt))).i = str3;
                    if (str4 != null) {
                        ((d) dVar.d.get(Character.valueOf(charAt))).h = str4;
                    }
                }
            }
            dVar = (d) dVar.d.get(Character.valueOf(charAt));
        }
    }

    /* renamed from: c */
    public final void m4049c(String str, int i) {
        String str2 = str;
        if (str.charAt(0) == '#') {
            str2 = "GDO_NONDET";
        }
        String[] split = str2.split("\\|");
        if (split.length > 1) {
            str2 = split[0];
        }
        ArrayList arrayList = !this.f70529m.containsKey(str2) ? new ArrayList() : this.f70529m.get(str2);
        arrayList.add(Integer.valueOf(i));
        this.f70529m.put(str2, arrayList);
    }

    /* renamed from: d */
    public void m4048d() throws Exception {
        JSONObject jSONObject = this.f70520d.getJSONObject("CLASSIFIER");
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            this.f70525i.put(next, arrayList);
        }
    }

    /* renamed from: e */
    public int m4047e() throws Exception {
        JSONObject jSONObject = this.f70520d.getJSONObject("GRAMMAR");
        Iterator<String> keys = jSONObject.keys();
        int i = 0;
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            if (!this.f70526j.containsKey(next)) {
                this.f70526j.put(next, new c(jSONObject2.getJSONArray("GRMR"), jSONObject2.getJSONArray("STRUCT"), jSONObject2.getJSONArray("PATTERN")));
            }
            if (jSONObject2.getJSONArray("GRMR").length() > i) {
                i = jSONObject2.getJSONArray("GRMR").length();
            }
        }
        return i;
    }

    /* renamed from: f */
    public void m4046f(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                a aVar = this.f70519c;
                int length = string.length();
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        char charAt = string.charAt(i2);
                        aVar.f70533c = true;
                        if (!aVar.d.containsKey(Character.valueOf(charAt))) {
                            aVar.d.put(Character.valueOf(charAt), new a());
                        }
                        if (i2 == length - 1) {
                            ((a) aVar.d.get(Character.valueOf(charAt))).f70532b = true;
                            if (!((a) aVar.d.get(Character.valueOf(charAt))).e.contains(next)) {
                                ((a) aVar.d.get(Character.valueOf(charAt))).e.add(next);
                            }
                        } else {
                            aVar = (a) aVar.d.get(Character.valueOf(charAt));
                            i2++;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0413, code lost:
        continue;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4045g() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1049
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.C25223b.m4045g():void");
    }

    /* renamed from: h */
    public final void m4044h(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("seedconstants");
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.f70524h.f70643d.f70599a.put(next, Integer.valueOf(jSONObject2.getInt(next)));
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("coredims");
        Iterator<String> keys2 = jSONObject3.keys();
        while (keys2.hasNext()) {
            String next2 = keys2.next();
            JSONArray jSONArray = jSONObject3.getJSONArray(next2);
            for (int i = 0; i < jSONArray.length(); i++) {
                C25241a c25241a = this.f70524h.f70643d;
                String string = jSONArray.getString(i);
                if (!c25241a.f70600b.containsKey(next2)) {
                    c25241a.f70600b.put(next2, new ArrayList());
                }
                c25241a.f70600b.get(next2).add(string);
            }
        }
    }

    /* renamed from: i */
    public final void m4043i(JSONObject jSONObject, JSONObject jSONObject2, String str, List<JSONObject> list) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                try {
                    JSONObject jSONObject3 = jSONObject.getJSONObject(next);
                    String str2 = null;
                    JSONArray jSONArray = jSONObject3.has("tokens") ? jSONObject3.getJSONArray("tokens") : null;
                    StringBuilder sb = new StringBuilder();
                    try {
                        sb.append(str);
                        sb.append(StringConstant.COLON);
                        sb.append(next);
                        String sb2 = sb.toString();
                        JSONObject jSONObject4 = jSONObject3.has("attr") ? jSONObject3.getJSONObject("attr") : null;
                        JSONArray jSONArray2 = jSONObject3.has("operation") ? jSONObject3.getJSONArray("operation") : null;
                        if (jSONObject3.has("type")) {
                            str2 = jSONObject3.getString("type");
                        }
                        try {
                            ArrayList arrayList = new ArrayList();
                            try {
                                arrayList.addAll(list);
                                if (jSONObject2.has(str2)) {
                                    JSONArray jSONArray3 = jSONObject2.getJSONArray(str2);
                                    for (int i = 0; i < jSONArray3.length(); i++) {
                                        try {
                                            arrayList.add(jSONArray3.getJSONObject(i));
                                        } catch (JSONException e) {
                                        }
                                    }
                                }
                                if (jSONArray2 != null) {
                                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                        arrayList.add(jSONArray2.getJSONObject(i2));
                                    }
                                }
                                if (jSONArray != null) {
                                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                                        this.f70524h.f70640a.put(jSONArray.getString(i3), new C25242b(str2, jSONObject4, arrayList, sb2));
                                    }
                                }
                                if (jSONObject3.has("children")) {
                                    m4043i(jSONObject3.getJSONObject("children"), jSONObject2, sb2, arrayList);
                                }
                            } catch (JSONException e2) {
                            }
                        } catch (JSONException e3) {
                        }
                    } catch (JSONException e4) {
                    }
                } catch (JSONException e5) {
                }
            } catch (JSONException e6) {
            }
        }
    }

    /* renamed from: j */
    public void m4042j(JSONObject jSONObject) {
        try {
            m4043i(jSONObject.getJSONObject("ontology"), jSONObject.getJSONObject("typology"), "", new ArrayList());
            JSONArray jSONArray = jSONObject.getJSONArray("contextbreak");
            for (int i = 0; i < jSONArray.length(); i++) {
                this.f70524h.f70642c.add(jSONArray.getString(i));
            }
            m4044h(jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    public void m4041k() throws Exception {
        String str;
        String str2;
        String str3;
        JSONObject jSONObject = this.f70520d.getJSONObject("TOKENS");
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Matcher matcher = Pattern.compile("(.*)\\[(.*)\\]").matcher(next);
            boolean z = true;
            if (!matcher.matches() || matcher.groupCount() != 2) {
                str2 = "type";
                str = next;
            } else {
                str = matcher.group(1);
                str2 = matcher.group(2);
            }
            Matcher matcher2 = Pattern.compile("([^0-9]*)([0-9]+)").matcher(str);
            String group = (!matcher2.matches() || matcher2.groupCount() != 2) ? str : matcher2.group(1);
            String[] split = ((String) jSONObject.get(next)).split(",");
            int length = split.length;
            int i = 0;
            while (true) {
                int i2 = 0;
                if (i < length) {
                    String str4 = split[i];
                    d dVar = this.f70518b;
                    if (str4.contains("|")) {
                        String[] split2 = str4.split("\\|");
                        str4 = split2[0];
                        str3 = split2[z ? 1 : 0];
                    } else {
                        str3 = null;
                    }
                    int length2 = str4.length();
                    while (i2 < length2) {
                        char charAt = str4.charAt(i2);
                        dVar.f70533c = z;
                        if (!dVar.d.containsKey(Character.valueOf(charAt))) {
                            dVar.d.put(Character.valueOf(charAt), new d());
                        }
                        int i3 = dVar.g;
                        if (i3 == 0) {
                            dVar.g = 1;
                        } else if (i3 == 1) {
                            dVar.g = 2;
                        }
                        if (i2 == length2 - 1) {
                            ((d) dVar.d.get(Character.valueOf(charAt))).f70532b = true;
                            ((d) dVar.d.get(Character.valueOf(charAt))).e = group;
                            ((d) dVar.d.get(Character.valueOf(charAt))).f = str;
                            if (str3 != null) {
                                ((d) dVar.d.get(Character.valueOf(charAt))).i = str3;
                                if (str2 != null) {
                                    ((d) dVar.d.get(Character.valueOf(charAt))).h = str2;
                                }
                            }
                        }
                        dVar = (d) dVar.d.get(Character.valueOf(charAt));
                        i2++;
                        z = true;
                    }
                    i++;
                }
            }
        }
    }
}
