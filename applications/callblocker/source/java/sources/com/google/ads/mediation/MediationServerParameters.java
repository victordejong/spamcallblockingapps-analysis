package com.google.ads.mediation;

import com.google.android.gms.internal.ads.C3645yb;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters.class */
public class MediationServerParameters {

    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$MappingException.class */
    public static final class MappingException extends Exception {
        public MappingException(String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.google.ads.mediation.MediationServerParameters$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$a.class */
    public @interface AbstractC2223a {
        /* renamed from: a */
        String m14917a();

        /* renamed from: b */
        boolean m14916b() default true;
    }

    /* renamed from: a */
    public void m14918a(Map<String, String> map) {
        Field[] fields;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            AbstractC2223a abstractC2223a = (AbstractC2223a) field.getAnnotation(AbstractC2223a.class);
            if (abstractC2223a != null) {
                hashMap.put(abstractC2223a.m14917a(), field);
            }
        }
        if (hashMap.isEmpty()) {
            C3645yb.m6745e("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    String key = entry.getKey();
                    C3645yb.m6745e(new StringBuilder(String.valueOf(key).length() + 49).append("Server option \"").append(key).append("\" could not be set: Illegal Access").toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    C3645yb.m6745e(new StringBuilder(String.valueOf(key2).length() + 43).append("Server option \"").append(key2).append("\" could not be set: Bad Type").toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                C3645yb.m6751b(new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length()).append("Unexpected server option: ").append(key3).append(" = \"").append(value).append("\"").toString());
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((AbstractC2223a) field3.getAnnotation(AbstractC2223a.class)).m14916b()) {
                String valueOf = String.valueOf(((AbstractC2223a) field3.getAnnotation(AbstractC2223a.class)).m14917a());
                C3645yb.m6745e(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(((AbstractC2223a) field3.getAnnotation(AbstractC2223a.class)).m14917a());
            }
        }
        if (sb.length() > 0) {
            String valueOf2 = String.valueOf(sb.toString());
            throw new MappingException(valueOf2.length() != 0 ? "Required server option(s) missing: ".concat(valueOf2) : new String("Required server option(s) missing: "));
        }
    }
}
