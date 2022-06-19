package com.google.ads.mediation;

import android.support.p012v4.media.C0082b;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzciz;
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
    public @interface AbstractC1637a {
        @RecentlyNonNull
        String name();

        boolean required() default true;
    }

    /* renamed from: a */
    public void m4831a(@RecentlyNonNull Map<String, String> map) throws MappingException {
        Field[] fields;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            AbstractC1637a abstractC1637a = (AbstractC1637a) field.getAnnotation(AbstractC1637a.class);
            if (abstractC1637a != null) {
                hashMap.put(abstractC1637a.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            zzciz.zzj("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
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
                    zzciz.zzj(sb.toString());
                } catch (IllegalArgumentException e2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    zzciz.zzj(sb2.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sb3 = new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length());
                C0082b.m8749m(sb3, "Unexpected server option: ", key3, " = \"", value);
                sb3.append("\"");
                zzciz.zze(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((AbstractC1637a) field3.getAnnotation(AbstractC1637a.class)).required()) {
                String valueOf = String.valueOf(((AbstractC1637a) field3.getAnnotation(AbstractC1637a.class)).name());
                zzciz.zzj(valueOf.length() != 0 ? "Required server option missing: ".concat(valueOf) : new String("Required server option missing: "));
                if (sb4.length() > 0) {
                    sb4.append(", ");
                }
                sb4.append(((AbstractC1637a) field3.getAnnotation(AbstractC1637a.class)).name());
            }
        }
        if (sb4.length() > 0) {
            String sb5 = sb4.toString();
            throw new MappingException(sb5.length() != 0 ? "Required server option(s) missing: ".concat(sb5) : new String("Required server option(s) missing: "));
        }
    }
}
