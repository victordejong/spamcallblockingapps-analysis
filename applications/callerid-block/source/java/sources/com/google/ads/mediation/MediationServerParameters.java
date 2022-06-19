package com.google.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.C1894po;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters.class */
public abstract class MediationServerParameters {

    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$MappingException.class */
    public static final class MappingException extends Exception {
        public MappingException(@RecentlyNonNull String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.google.ads.mediation.MediationServerParameters$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$a.class */
    protected @interface AbstractC1270a {
        @RecentlyNonNull
        String name();

        boolean required() default true;
    }

    /* renamed from: a */
    public void m9347a(@RecentlyNonNull Map<String, String> map) {
        Field[] fields;
        StringBuilder sb;
        String str;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            AbstractC1270a abstractC1270a = (AbstractC1270a) field.getAnnotation(AbstractC1270a.class);
            if (abstractC1270a != null) {
                hashMap.put(abstractC1270a.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            C1894po.m6180f("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    String key = entry.getKey();
                    sb = new StringBuilder(String.valueOf(key).length() + 49);
                    sb.append("Server option \"");
                    sb.append(key);
                    str = "\" could not be set: Illegal Access";
                    sb.append(str);
                    C1894po.m6180f(sb.toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    sb = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb.append("Server option \"");
                    sb.append(key2);
                    str = "\" could not be set: Bad Type";
                    sb.append(str);
                    C1894po.m6180f(sb.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sb2 = new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length());
                sb2.append("Unexpected server option: ");
                sb2.append(key3);
                sb2.append(" = \"");
                sb2.append(value);
                sb2.append("\"");
                C1894po.m6185a(sb2.toString());
            }
        }
        StringBuilder sb3 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((AbstractC1270a) field3.getAnnotation(AbstractC1270a.class)).required()) {
                String valueOf = String.valueOf(((AbstractC1270a) field3.getAnnotation(AbstractC1270a.class)).name());
                C1894po.m6180f(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb3.length() > 0) {
                    sb3.append(", ");
                }
                sb3.append(((AbstractC1270a) field3.getAnnotation(AbstractC1270a.class)).name());
            }
        }
        if (sb3.length() > 0) {
            String valueOf2 = String.valueOf(sb3.toString());
            throw new MappingException(valueOf2.length() != 0 ? "Required server option(s) missing: ".concat(valueOf2) : new String("Required server option(s) missing: "));
        }
    }
}
