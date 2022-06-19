package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzby;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzw.class */
public final class zzw extends zzby {
    @zzcc(AbstractC1468a.HEADER_ACCEPT)
    private List<String> accept;
    @zzcc("Accept-Encoding")
    private List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    @zzcc("Age")
    private List<Long> age;
    @zzcc("WWW-Authenticate")
    private List<String> authenticate;
    @zzcc("Authorization")
    private List<String> authorization;
    @zzcc("Cache-Control")
    private List<String> cacheControl;
    @zzcc("Content-Encoding")
    private List<String> contentEncoding;
    @zzcc("Content-Length")
    private List<Long> contentLength;
    @zzcc("Content-MD5")
    private List<String> contentMD5;
    @zzcc("Content-Range")
    private List<String> contentRange;
    @zzcc("Content-Type")
    private List<String> contentType;
    @zzcc("Cookie")
    private List<String> cookie;
    @zzcc("Date")
    private List<String> date;
    @zzcc("ETag")
    private List<String> etag;
    @zzcc("Expires")
    private List<String> expires;
    @zzcc("If-Match")
    private List<String> ifMatch;
    @zzcc("If-Modified-Since")
    private List<String> ifModifiedSince;
    @zzcc("If-None-Match")
    private List<String> ifNoneMatch;
    @zzcc("If-Range")
    private List<String> ifRange;
    @zzcc("If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @zzcc("Last-Modified")
    private List<String> lastModified;
    @zzcc("Location")
    private List<String> location;
    @zzcc("MIME-Version")
    private List<String> mimeVersion;
    @zzcc("Range")
    private List<String> range;
    @zzcc("Retry-After")
    private List<String> retryAfter;
    @zzcc(AbstractC1468a.HEADER_USER_AGENT)
    private List<String> userAgent;

    public zzw() {
        super(EnumSet.of(zzby.zzc.IGNORE_CASE));
    }

    private static Object zza(Type type, List<Type> list, String str) {
        return zzbt.zza(zzbt.zza(list, type), str);
    }

    private static <T> T zza(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    private static <T> List<T> zza(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    public static void zza(zzw zzwVar, StringBuilder sb, StringBuilder sb2, Logger logger, zzaj zzajVar) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : zzwVar.entrySet()) {
            String key = entry.getKey();
            if (!hashSet.add(key)) {
                throw new IllegalArgumentException(zzdy.zza("multiple headers of the same name (headers are case insensitive): %s", key));
            }
            Object value = entry.getValue();
            if (value != null) {
                zzbz zzae = zzwVar.zzby().zzae(key);
                if (zzae != null) {
                    key = zzae.getName();
                }
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : zzco.zzi(value)) {
                        zza(logger, sb, sb2, zzajVar, key, obj, null);
                    }
                } else {
                    zza(logger, sb, sb2, zzajVar, key, value, null);
                }
            }
        }
    }

    private static void zza(Logger logger, StringBuilder sb, StringBuilder sb2, zzaj zzajVar, String str, Object obj, Writer writer) {
        if (obj == null || zzbt.isNull(obj)) {
            return;
        }
        String name = obj instanceof Enum ? zzbz.zza((Enum) obj).getName() : obj.toString();
        String str2 = (("Authorization".equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : name;
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            sb.append(zzcl.zzgg);
        }
        if (sb2 != null) {
            sb2.append(" -H '");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            sb2.append("'");
        }
        if (zzajVar != null) {
            zzajVar.addHeader(str, name);
        }
        if (writer == null) {
            return;
        }
        writer.write(str);
        writer.write(": ");
        writer.write(name);
        writer.write("\r\n");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzby, java.util.AbstractMap
    public final /* synthetic */ Object clone() {
        return (zzw) super.clone();
    }

    public final String getContentType() {
        return (String) zza((List<Object>) this.contentType);
    }

    public final String getLocation() {
        return (String) zza((List<Object>) this.location);
    }

    public final String getUserAgent() {
        return (String) zza((List<Object>) this.userAgent);
    }

    public final void zza(zzai zzaiVar, StringBuilder sb) {
        clear();
        zzz zzzVar = new zzz(this, sb);
        int zzah = zzaiVar.zzah();
        for (int i = 0; i < zzah; i++) {
            String zzc = zzaiVar.zzc(i);
            String zzd = zzaiVar.zzd(i);
            List<Type> list = zzzVar.zzaz;
            zzbr zzbrVar = zzzVar.zzay;
            zzbn zzbnVar = zzzVar.zzaw;
            StringBuilder sb2 = zzzVar.zzax;
            if (sb2 != null) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(zzc).length() + 2 + String.valueOf(zzd).length());
                sb3.append(zzc);
                sb3.append(": ");
                sb3.append(zzd);
                sb2.append(sb3.toString());
                sb2.append(zzcl.zzgg);
            }
            zzbz zzae = zzbrVar.zzae(zzc);
            if (zzae != null) {
                Type zza = zzbt.zza(list, zzae.getGenericType());
                if (zzco.zzc(zza)) {
                    Class<?> zzb = zzco.zzb(list, zzco.zzd(zza));
                    zzbnVar.zza(zzae.zzbz(), zzb, zza(zzb, list, zzd));
                } else if (zzco.zza(zzco.zzb(list, zza), (Class<?>) Iterable.class)) {
                    Collection<Object> collection = (Collection) zzae.zzh(this);
                    Collection<Object> collection2 = collection;
                    if (collection == null) {
                        collection2 = zzbt.zzb(zza);
                        zzae.zzb(this, collection2);
                    }
                    collection2.add(zza(zza == Object.class ? null : zzco.zze(zza), list, zzd));
                } else {
                    zzae.zzb(this, zza(zza, list, zzd));
                }
            } else {
                ArrayList arrayList = (ArrayList) get(zzc);
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                    zzb(zzc, arrayList2);
                }
                arrayList2.add(zzd);
            }
        }
        zzzVar.zzaw.zzbu();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb() {
        return (zzw) clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb(String str, Object obj) {
        return (zzw) super.zzb(str, obj);
    }

    public final zzw zzo(String str) {
        this.authorization = zza((Object) null);
        return this;
    }

    public final zzw zzp(String str) {
        this.ifModifiedSince = zza((Object) null);
        return this;
    }

    public final zzw zzq(String str) {
        this.ifMatch = zza((Object) null);
        return this;
    }

    public final String zzq() {
        return (String) zza((List<Object>) this.etag);
    }

    public final zzw zzr(String str) {
        this.ifNoneMatch = zza(str);
        return this;
    }

    public final zzw zzs(String str) {
        this.ifUnmodifiedSince = zza((Object) null);
        return this;
    }

    public final zzw zzt(String str) {
        this.ifRange = zza((Object) null);
        return this;
    }

    public final zzw zzu(String str) {
        this.userAgent = zza(str);
        return this;
    }
}
