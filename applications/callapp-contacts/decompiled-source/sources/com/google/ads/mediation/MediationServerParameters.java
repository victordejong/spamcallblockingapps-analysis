package com.google.ads.mediation;

import com.google.android.gms.internal.ads.za;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationServerParameters.class */
public class MediationServerParameters {

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$MappingException.class */
    public static final class MappingException extends Exception {
        public MappingException(String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$a.class */
    public @interface a {
        String a();

        boolean b() default true;
    }

    public final void a(Map<String, String> map) throws MappingException {
        Field[] fields;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            a aVar = (a) field.getAnnotation(a.class);
            if (aVar != null) {
                hashMap.put(aVar.a(), field);
            }
        }
        if (hashMap.isEmpty()) {
            za.zzez("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
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
                    za.zzez(sb.toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    za.zzez(sb2.toString());
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
                za.zzdz(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((a) field3.getAnnotation(a.class)).b()) {
                String valueOf = String.valueOf(((a) field3.getAnnotation(a.class)).a());
                za.zzez(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb4.length() > 0) {
                    sb4.append(", ");
                }
                sb4.append(((a) field3.getAnnotation(a.class)).a());
            }
        }
        if (sb4.length() > 0) {
            String valueOf2 = String.valueOf(sb4.toString());
            throw new MappingException(valueOf2.length() != 0 ? "Required server option(s) missing: ".concat(valueOf2) : new String("Required server option(s) missing: "));
        }
    }
}
