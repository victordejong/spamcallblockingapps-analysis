package com.google.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.ei0;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.google.ads.mediation.MediationServerParameters$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$a.class */
    public @interface AbstractC4585a {
        @RecentlyNonNull
        String name();

        boolean required() default true;
    }

    /* renamed from: a */
    public void m22186a(@RecentlyNonNull Map<String, String> map) {
        Field[] fields;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            AbstractC4585a abstractC4585a = (AbstractC4585a) field.getAnnotation(AbstractC4585a.class);
            if (abstractC4585a != null) {
                hashMap.put(abstractC4585a.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            ei0.m15464f("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    String key = entry.getKey();
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 49);
                    sb.append("Server option \"");
                    sb.append(key);
                    sb.append("\" could not be set: Illegal Access");
                    ei0.m15464f(sb.toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    ei0.m15464f(sb2.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sb3 = new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length());
                sb3.append("Unexpected server option: ");
                sb3.append(key3);
                sb3.append(" = \"");
                sb3.append(value);
                sb3.append("\"");
                ei0.m15469a(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((AbstractC4585a) field3.getAnnotation(AbstractC4585a.class)).required()) {
                String valueOf = String.valueOf(((AbstractC4585a) field3.getAnnotation(AbstractC4585a.class)).name());
                ei0.m15464f(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb4.length() > 0) {
                    sb4.append(", ");
                }
                sb4.append(((AbstractC4585a) field3.getAnnotation(AbstractC4585a.class)).name());
            }
        }
        if (sb4.length() > 0) {
            String sb5 = sb4.toString();
            throw new MappingException(sb5.length() != 0 ? "Required server option(s) missing: ".concat(sb5) : new String("Required server option(s) missing: "));
        }
    }
}
