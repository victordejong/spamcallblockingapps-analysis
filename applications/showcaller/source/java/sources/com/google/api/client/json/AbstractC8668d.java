package com.google.api.client.json;

import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8710i;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.GenericData;
import java.io.Closeable;
import java.io.Flushable;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
/* renamed from: com.google.api.client.json.d */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/d.class */
public abstract class AbstractC8668d implements Closeable, Flushable {
    /* renamed from: f */
    private void m3022f(boolean z, Object obj) {
        boolean z2;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (C8712j.m2880d(obj)) {
            mo2983u();
        } else if (obj instanceof String) {
            mo2989N((String) obj);
        } else if (obj instanceof Number) {
            if (z) {
                mo2989N(obj.toString());
            } else if (obj instanceof BigDecimal) {
                mo2993D((BigDecimal) obj);
            } else if (obj instanceof BigInteger) {
                mo2992E((BigInteger) obj);
            } else if (obj instanceof Long) {
                mo2994C(((Long) obj).longValue());
            } else if (obj instanceof Float) {
                float floatValue = ((Number) obj).floatValue();
                C8731w.m2839a(!Float.isInfinite(floatValue) && !Float.isNaN(floatValue));
                mo2981z(floatValue);
            } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                mo2995A(((Number) obj).intValue());
            } else {
                double doubleValue = ((Number) obj).doubleValue();
                C8731w.m2839a(!Double.isInfinite(doubleValue) && !Double.isNaN(doubleValue));
                mo2982y(doubleValue);
            }
        } else if (obj instanceof Boolean) {
            mo2987g(((Boolean) obj).booleanValue());
        } else if (obj instanceof DateTime) {
            mo2989N(((DateTime) obj).toStringRfc3339());
        } else if (((obj instanceof Iterable) || cls.isArray()) && !(obj instanceof Map) && !(obj instanceof GenericData)) {
            mo2991I();
            for (Object obj2 : C8695d0.m2916l(obj)) {
                m3022f(z, obj2);
            }
            mo2986k();
        } else if (cls.isEnum()) {
            String m2862e = C8717l.m2857j((Enum) obj).m2862e();
            if (m2862e == null) {
                mo2983u();
            } else {
                mo2989N(m2862e);
            }
        } else {
            mo2990L();
            boolean z3 = (obj instanceof Map) && !(obj instanceof GenericData);
            C8710i m2886e = z3 ? null : C8710i.m2886e(cls);
            for (Map.Entry<String, Object> entry : C8712j.m2877g(obj).entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    String key = entry.getKey();
                    if (z3) {
                        z2 = z;
                    } else {
                        Field m2890a = m2886e.m2890a(key);
                        z2 = (m2890a == null || m2890a.getAnnotation(AbstractC8675h.class) == null) ? false : true;
                    }
                    mo2984q(key);
                    m3022f(z2, value);
                }
            }
            mo2985p();
        }
    }

    /* renamed from: A */
    public abstract void mo2995A(int i);

    /* renamed from: C */
    public abstract void mo2994C(long j);

    /* renamed from: D */
    public abstract void mo2993D(BigDecimal bigDecimal);

    /* renamed from: E */
    public abstract void mo2992E(BigInteger bigInteger);

    /* renamed from: I */
    public abstract void mo2991I();

    /* renamed from: L */
    public abstract void mo2990L();

    /* renamed from: N */
    public abstract void mo2989N(String str);

    /* renamed from: a */
    public abstract void mo2988a();

    /* renamed from: e */
    public final void m3023e(Object obj) {
        m3022f(false, obj);
    }

    @Override // java.io.Flushable
    public abstract void flush();

    /* renamed from: g */
    public abstract void mo2987g(boolean z);

    /* renamed from: k */
    public abstract void mo2986k();

    /* renamed from: p */
    public abstract void mo2985p();

    /* renamed from: q */
    public abstract void mo2984q(String str);

    /* renamed from: u */
    public abstract void mo2983u();

    /* renamed from: y */
    public abstract void mo2982y(double d);

    /* renamed from: z */
    public abstract void mo2981z(float f);
}
