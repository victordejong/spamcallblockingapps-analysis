package com.google.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzcgt;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationServerParameters.class */
public abstract class MediationServerParameters {

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$MappingException.class */
    public static final class MappingException extends Exception {
        public MappingException(@RecentlyNonNull String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationServerParameters$Parameter.class */
    public @interface Parameter {
        @RecentlyNonNull
        String name();

        boolean required() default true;
    }

    public void load(@RecentlyNonNull Map<String, String> map) throws MappingException {
        Field[] fields;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            Parameter parameter = (Parameter) field.getAnnotation(Parameter.class);
            if (parameter != null) {
                hashMap.put(parameter.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            zzcgt.zzi("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
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
                    zzcgt.zzi(sb.toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    zzcgt.zzi(sb2.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sb3 = new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length());
                C22128a.m8666T0(sb3, "Unexpected server option: ", key3, " = \"", value);
                sb3.append("\"");
                zzcgt.zzd(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((Parameter) field3.getAnnotation(Parameter.class)).required()) {
                String valueOf = String.valueOf(((Parameter) field3.getAnnotation(Parameter.class)).name());
                zzcgt.zzi(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb4.length() > 0) {
                    sb4.append(", ");
                }
                sb4.append(((Parameter) field3.getAnnotation(Parameter.class)).name());
            }
        }
        if (sb4.length() > 0) {
            String sb5 = sb4.toString();
            throw new MappingException(sb5.length() != 0 ? "Required server option(s) missing: ".concat(sb5) : new String("Required server option(s) missing: "));
        }
    }
}
