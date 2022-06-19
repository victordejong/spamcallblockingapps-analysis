package com.google.android.gms.internal.firebase_remote_config;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzy.class */
public final class zzy {
    private static final Pattern zzap = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
    private static final Pattern zzaq = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private static final Pattern zzar;
    private static final Pattern zzas;
    private String type;
    private String zzat;
    private final SortedMap<String, String> zzau = new TreeMap();
    private String zzav;

    static {
        StringBuilder sb = new StringBuilder("[^\\s/=;\"]+".length() + 14 + "[^\\s/=;\"]+".length() + ";.*".length());
        sb.append("\\s*(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")/(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")\\s*(");
        sb.append(";.*");
        sb.append(")?");
        zzar = Pattern.compile(sb.toString(), 32);
        StringBuilder sb2 = new StringBuilder("\"([^\"]*)\"".length() + 1 + "[^\\s;\"]*".length());
        sb2.append("\"([^\"]*)\"");
        sb2.append("|");
        sb2.append("[^\\s;\"]*");
        String sb3 = sb2.toString();
        StringBuilder sb4 = new StringBuilder("[^\\s/=;\"]+".length() + 12 + String.valueOf(sb3).length());
        sb4.append("\\s*;\\s*(");
        sb4.append("[^\\s/=;\"]+");
        sb4.append(")=(");
        sb4.append(sb3);
        sb4.append(")");
        zzas = Pattern.compile(sb4.toString());
    }

    public zzy(String str) {
        this.type = "application";
        this.zzat = "octet-stream";
        Matcher matcher = zzar.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            if (!zzap.matcher(group).matches()) {
                throw new IllegalArgumentException("Type contains reserved characters");
            }
            this.type = group;
            this.zzav = null;
            String group2 = matcher.group(2);
            if (!zzap.matcher(group2).matches()) {
                throw new IllegalArgumentException("Subtype contains reserved characters");
            }
            this.zzat = group2;
            this.zzav = null;
            String group3 = matcher.group(3);
            if (group3 == null) {
                return;
            }
            Matcher matcher2 = zzas.matcher(group3);
            while (matcher2.find()) {
                String group4 = matcher2.group(1);
                String group5 = matcher2.group(3);
                String str2 = group5;
                if (group5 == null) {
                    str2 = matcher2.group(2);
                }
                zza(group4, str2);
            }
            return;
        }
        throw new IllegalArgumentException("Type must be in the 'maintype/subtype; parameter=value' format");
    }

    private final zzy zza(String str, String str2) {
        if (str2 == null) {
            this.zzav = null;
            this.zzau.remove(str.toLowerCase(Locale.US));
            return this;
        } else if (!zzaq.matcher(str).matches()) {
            throw new IllegalArgumentException("Name contains reserved characters");
        } else {
            this.zzav = null;
            this.zzau.put(str.toLowerCase(Locale.US), str2);
            return this;
        }
    }

    private final boolean zza(zzy zzyVar) {
        return zzyVar != null && this.type.equalsIgnoreCase(zzyVar.type) && this.zzat.equalsIgnoreCase(zzyVar.zzat);
    }

    public static boolean zzb(String str, String str2) {
        return str2 != null && new zzy(str).zza(new zzy(str2));
    }

    public static boolean zzv(String str) {
        return zzaq.matcher(str).matches();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzy)) {
            return false;
        }
        zzy zzyVar = (zzy) obj;
        return zza(zzyVar) && this.zzau.equals(zzyVar.zzau);
    }

    public final int hashCode() {
        return zzp().hashCode();
    }

    public final String toString() {
        return zzp();
    }

    public final zzy zza(Charset charset) {
        zza("charset", charset == null ? null : charset.name());
        return this;
    }

    public final String zzp() {
        String str = this.zzav;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.zzat);
        SortedMap<String, String> sortedMap = this.zzau;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                String str2 = value;
                if (!zzv(value)) {
                    String replace = value.replace("\\", "\\\\").replace("\"", "\\\"");
                    StringBuilder sb2 = new StringBuilder(String.valueOf(replace).length() + 2);
                    sb2.append("\"");
                    sb2.append(replace);
                    sb2.append("\"");
                    str2 = sb2.toString();
                }
                sb.append(str2);
            }
        }
        this.zzav = sb.toString();
        return this.zzav;
    }

    public final Charset zzr() {
        String str = this.zzau.get("charset".toLowerCase(Locale.US));
        if (str == null) {
            return null;
        }
        return Charset.forName(str);
    }
}
