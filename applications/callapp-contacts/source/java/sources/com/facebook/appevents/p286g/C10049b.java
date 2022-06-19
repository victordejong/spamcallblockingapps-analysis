package com.facebook.appevents.p286g;

import com.facebook.appevents.p286g.C10052c;
import com.facebook.internal.p299b.p301b.C10249a;
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
/* renamed from: com.facebook.appevents.g.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/b.class */
public final class C10049b {

    /* renamed from: a */
    private C10048a f33345a;

    /* renamed from: b */
    private C10048a f33346b;

    /* renamed from: c */
    private C10048a f33347c;

    /* renamed from: d */
    private C10048a f33348d;

    /* renamed from: e */
    private C10048a f33349e;

    /* renamed from: f */
    private C10048a f33350f;

    /* renamed from: g */
    private C10048a f33351g;

    /* renamed from: h */
    private C10048a f33352h;

    /* renamed from: i */
    private C10048a f33353i;

    /* renamed from: j */
    private C10048a f33354j;

    /* renamed from: k */
    private C10048a f33355k;

    /* renamed from: l */
    private final Map<String, C10048a> f33356l = new HashMap();

    private C10049b(Map<String, C10048a> map) {
        this.f33345a = map.get("embed.weight");
        this.f33346b = C10061d.m23494e(map.get("convs.0.weight"));
        this.f33347c = C10061d.m23494e(map.get("convs.1.weight"));
        this.f33348d = C10061d.m23494e(map.get("convs.2.weight"));
        this.f33349e = map.get("convs.0.bias");
        this.f33350f = map.get("convs.1.bias");
        this.f33351g = map.get("convs.2.bias");
        this.f33352h = C10061d.m23495d(map.get("fc1.weight"));
        this.f33353i = C10061d.m23495d(map.get("fc2.weight"));
        this.f33354j = map.get("fc1.bias");
        this.f33355k = map.get("fc2.bias");
        for (String str : new HashSet<String>() { // from class: com.facebook.appevents.g.b.1
            {
                C10049b.this = this;
                add(C10052c.EnumC10057a.MTML_INTEGRITY_DETECT.toKey());
                add(C10052c.EnumC10057a.MTML_APP_EVENT_PREDICTION.toKey());
            }
        }) {
            String str2 = str + ".weight";
            String str3 = str + ".bias";
            C10048a c10048a = map.get(str2);
            C10048a c10048a2 = map.get(str3);
            if (c10048a != null) {
                this.f33356l.put(str2, C10061d.m23495d(c10048a));
            }
            if (c10048a2 != null) {
                this.f33356l.put(str3, c10048a2);
            }
        }
    }

    /* renamed from: a */
    public static C10049b m23526a(File file) {
        if (C10249a.m23108a(C10049b.class)) {
            return null;
        }
        try {
            try {
                return new C10049b(m23525b(file));
            } catch (Exception e) {
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10049b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Map<String, String> m23528a() {
        if (C10249a.m23108a(C10049b.class)) {
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
            C10249a.m23106a(th, C10049b.class);
            return null;
        }
    }

    /* renamed from: b */
    private static Map<String, C10048a> m23525b(File file) {
        Map<String, C10048a> map;
        if (C10249a.m23108a(C10049b.class)) {
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
                Map<String, String> m23528a = m23528a();
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
                    C10048a c10048a = new C10048a(iArr);
                    wrap2.asFloatBuffer().get(c10048a.f33342a, 0, i5);
                    String str2 = str;
                    if (m23528a.containsKey(str)) {
                        str2 = m23528a.get(str);
                    }
                    hashMap.put(str2, c10048a);
                    i4++;
                    i2 = i8;
                }
                return hashMap;
            } catch (Exception e2) {
                map = null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10049b.class);
            return null;
        }
    }

    /* renamed from: a */
    public final C10048a m23527a(C10048a c10048a, String[] strArr, String str) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            C10048a m23498b = C10061d.m23498b(C10061d.m23500a(strArr, this.f33345a), this.f33346b);
            C10061d.m23503a(m23498b, this.f33349e);
            C10061d.m23505a(m23498b);
            C10048a m23498b2 = C10061d.m23498b(m23498b, this.f33347c);
            C10061d.m23503a(m23498b2, this.f33350f);
            C10061d.m23505a(m23498b2);
            C10048a m23504a = C10061d.m23504a(m23498b2, 2);
            C10048a m23498b3 = C10061d.m23498b(m23504a, this.f33348d);
            C10061d.m23503a(m23498b3, this.f33351g);
            C10061d.m23505a(m23498b3);
            C10048a m23504a2 = C10061d.m23504a(m23498b, m23498b.f33343b[1]);
            C10048a m23504a3 = C10061d.m23504a(m23504a, m23504a.f33343b[1]);
            C10048a m23504a4 = C10061d.m23504a(m23498b3, m23498b3.f33343b[1]);
            C10061d.m23499b(m23504a2);
            C10061d.m23499b(m23504a3);
            C10061d.m23499b(m23504a4);
            C10048a m23502a = C10061d.m23502a(C10061d.m23501a(new C10048a[]{m23504a2, m23504a3, m23504a4, c10048a}), this.f33352h, this.f33354j);
            C10061d.m23505a(m23502a);
            C10048a m23502a2 = C10061d.m23502a(m23502a, this.f33353i, this.f33355k);
            C10061d.m23505a(m23502a2);
            Map<String, C10048a> map = this.f33356l;
            C10048a c10048a2 = map.get(str + ".weight");
            Map<String, C10048a> map2 = this.f33356l;
            C10048a c10048a3 = map2.get(str + ".bias");
            if (c10048a2 == null || c10048a3 == null) {
                return null;
            }
            C10048a m23502a3 = C10061d.m23502a(m23502a2, c10048a2, c10048a3);
            C10061d.m23497c(m23502a3);
            return m23502a3;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }
}
