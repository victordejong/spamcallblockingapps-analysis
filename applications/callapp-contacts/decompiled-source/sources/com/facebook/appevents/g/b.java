package com.facebook.appevents.g;

import com.facebook.appevents.g.c;
import com.facebook.internal.b.b.a;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private a f19579a;

    /* renamed from: b  reason: collision with root package name */
    private a f19580b;

    /* renamed from: c  reason: collision with root package name */
    private a f19581c;

    /* renamed from: d  reason: collision with root package name */
    private a f19582d;
    private a e;
    private a f;
    private a g;
    private a h;
    private a i;
    private a j;
    private a k;
    private final Map<String, a> l = new HashMap();

    private b(Map<String, a> map) {
        this.f19579a = map.get("embed.weight");
        this.f19580b = d.e(map.get("convs.0.weight"));
        this.f19581c = d.e(map.get("convs.1.weight"));
        this.f19582d = d.e(map.get("convs.2.weight"));
        this.e = map.get("convs.0.bias");
        this.f = map.get("convs.1.bias");
        this.g = map.get("convs.2.bias");
        this.h = d.d(map.get("fc1.weight"));
        this.i = d.d(map.get("fc2.weight"));
        this.j = map.get("fc1.bias");
        this.k = map.get("fc2.bias");
        for (String str : new HashSet<String>() { // from class: com.facebook.appevents.g.b.1
            {
                add(c.a.MTML_INTEGRITY_DETECT.toKey());
                add(c.a.MTML_APP_EVENT_PREDICTION.toKey());
            }
        }) {
            String str2 = str + ".weight";
            String str3 = str + ".bias";
            a aVar = map.get(str2);
            a aVar2 = map.get(str3);
            if (aVar != null) {
                this.l.put(str2, d.d(aVar));
            }
            if (aVar2 != null) {
                this.l.put(str3, aVar2);
            }
        }
    }

    public static b a(File file) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            try {
                return new b(b(file));
            } catch (Exception e) {
                return null;
            }
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Map<String, String> a() {
        if (a.a(b.class)) {
            return null;
        }
        try {
            return new HashMap<String, String>() { // from class: com.facebook.appevents.g.b.2
                {
                    put("embedding.weight", "embed.weight");
                    put("dense1.weight", "fc1.weight");
                    put("dense2.weight", "fc2.weight");
                    put("dense3.weight", "fc3.weight");
                    put("dense1.bias", "fc1.bias");
                    put("dense2.bias", "fc2.bias");
                    put("dense3.bias", "fc3.bias");
                }
            };
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Map<String, a> b(File file) {
        Map<String, a> map;
        if (a.a(b.class)) {
            return null;
        }
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                int available = fileInputStream.available();
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[available];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                if (available < 4) {
                    return null;
                }
                ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                int i = wrap.getInt();
                int i2 = i + 4;
                if (available < i2) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(new String(bArr, 4, i));
                JSONArray names = jSONObject.names();
                int length = names.length();
                String[] strArr = new String[length];
                for (int i3 = 0; i3 < length; i3++) {
                    strArr[i3] = names.getString(i3);
                }
                Arrays.sort(strArr);
                HashMap hashMap = new HashMap();
                Map<String, String> a2 = a();
                int i4 = 0;
                while (i4 < length) {
                    String str = strArr[i4];
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    int length2 = jSONArray.length();
                    int[] iArr = new int[length2];
                    int i5 = 1;
                    for (int i6 = 0; i6 < length2; i6++) {
                        try {
                            iArr[i6] = jSONArray.getInt(i6);
                            i5 *= iArr[i6];
                        } catch (Exception e) {
                            map = null;
                            return map;
                        }
                    }
                    int i7 = i5 * 4;
                    int i8 = i2 + i7;
                    if (i8 > available) {
                        return null;
                    }
                    ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i2, i7);
                    wrap2.order(ByteOrder.LITTLE_ENDIAN);
                    a aVar = new a(iArr);
                    wrap2.asFloatBuffer().get(aVar.f19576a, 0, i5);
                    String str2 = str;
                    if (a2.containsKey(str)) {
                        str2 = a2.get(str);
                    }
                    hashMap.put(str2, aVar);
                    i4++;
                    i2 = i8;
                }
                return hashMap;
            } catch (Exception e2) {
                map = null;
            }
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    public final a a(a aVar, String[] strArr, String str) {
        if (a.a(this)) {
            return null;
        }
        try {
            a b2 = d.b(d.a(strArr, this.f19579a), this.f19580b);
            d.a(b2, this.e);
            d.a(b2);
            a b3 = d.b(b2, this.f19581c);
            d.a(b3, this.f);
            d.a(b3);
            a a2 = d.a(b3, 2);
            a b4 = d.b(a2, this.f19582d);
            d.a(b4, this.g);
            d.a(b4);
            a a3 = d.a(b2, b2.f19577b[1]);
            a a4 = d.a(a2, a2.f19577b[1]);
            a a5 = d.a(b4, b4.f19577b[1]);
            d.b(a3);
            d.b(a4);
            d.b(a5);
            a a6 = d.a(d.a(new a[]{a3, a4, a5, aVar}), this.h, this.j);
            d.a(a6);
            a a7 = d.a(a6, this.i, this.k);
            d.a(a7);
            Map<String, a> map = this.l;
            a aVar2 = map.get(str + ".weight");
            Map<String, a> map2 = this.l;
            a aVar3 = map2.get(str + ".bias");
            if (aVar2 == null || aVar3 == null) {
                return null;
            }
            a a8 = d.a(a7, aVar2, aVar3);
            d.c(a8);
            return a8;
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }
}
