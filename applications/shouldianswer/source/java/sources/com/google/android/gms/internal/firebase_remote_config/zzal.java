package com.google.android.gms.internal.firebase_remote_config;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzal.class */
public final class zzal {
    static final Map<Character, zzak> zzcr = new HashMap();

    static {
        zzak.values();
    }

    public static String zza(String str, String str2, Object obj, boolean z) {
        String str3;
        String str4;
        if (str2.startsWith("/")) {
            zzt zztVar = new zzt(str);
            zztVar.zzl(null);
            String valueOf = String.valueOf(zztVar.zzp());
            String valueOf2 = String.valueOf(str2);
            str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            str3 = str2;
            if (!str2.startsWith("http://")) {
                if (str2.startsWith("https://")) {
                    str3 = str2;
                } else {
                    String valueOf3 = String.valueOf(str);
                    String valueOf4 = String.valueOf(str2);
                    str3 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                }
            }
        }
        Map<String, Object> zzb = zzb(obj);
        StringBuilder sb = new StringBuilder();
        int length = str3.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            int indexOf = str3.indexOf(123, i2);
            if (indexOf == -1) {
                sb.append(str3.substring(i2));
                break;
            }
            sb.append(str3.substring(i2, indexOf));
            int indexOf2 = str3.indexOf(125, indexOf + 2);
            String substring = str3.substring(indexOf + 1, indexOf2);
            zzak zzakVar = zzcr.get(Character.valueOf(substring.charAt(0)));
            zzak zzakVar2 = zzakVar;
            if (zzakVar == null) {
                zzakVar2 = zzak.SIMPLE;
            }
            ListIterator<String> listIterator = zzds.zza(zzdj.zza(',')).zza(substring).listIterator();
            boolean z2 = true;
            while (listIterator.hasNext()) {
                String next = listIterator.next();
                boolean endsWith = next.endsWith("*");
                int zzan = listIterator.nextIndex() == 1 ? zzakVar2.zzan() : 0;
                int length2 = next.length();
                int i3 = length2;
                if (endsWith) {
                    i3 = length2 - 1;
                }
                String substring2 = next.substring(zzan, i3);
                Object remove = zzb.remove(substring2);
                if (remove != null) {
                    if (!z2) {
                        sb.append(zzakVar2.zzal());
                    } else {
                        sb.append(zzakVar2.zzak());
                        z2 = false;
                    }
                    if (remove instanceof Iterator) {
                        str4 = zza(substring2, (Iterator) remove, endsWith, zzakVar2);
                    } else if ((remove instanceof Iterable) || remove.getClass().isArray()) {
                        str4 = zza(substring2, zzco.zzi(remove).iterator(), endsWith, zzakVar2);
                    } else if (remove.getClass().isEnum()) {
                        String str5 = remove;
                        if (zzbz.zza((Enum) remove).getName() != null) {
                            String str6 = remove;
                            if (zzakVar2.zzam()) {
                                str6 = String.format("%s=%s", substring2, remove);
                            }
                            str5 = zzcs.zzaj(str6.toString());
                        }
                        str4 = str5;
                    } else if (!zzbt.zzg(remove)) {
                        Map<String, Object> zzb2 = zzb(remove);
                        if (zzb2.isEmpty()) {
                            str4 = "";
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            String str7 = "=";
                            String str8 = ",";
                            if (endsWith) {
                                str8 = zzakVar2.zzal();
                            } else {
                                if (zzakVar2.zzam()) {
                                    sb2.append(zzcs.zzaj(substring2));
                                    sb2.append("=");
                                }
                                str7 = ",";
                            }
                            Iterator<Map.Entry<String, Object>> it = zzb2.entrySet().iterator();
                            while (it.hasNext()) {
                                Map.Entry<String, Object> next2 = it.next();
                                String zzaa = zzakVar2.zzaa(next2.getKey());
                                String zzaa2 = zzakVar2.zzaa(next2.getValue().toString());
                                sb2.append(zzaa);
                                sb2.append(str7);
                                sb2.append(zzaa2);
                                if (it.hasNext()) {
                                    sb2.append(str8);
                                }
                            }
                            str4 = sb2.toString();
                        }
                    } else {
                        String str9 = remove;
                        if (zzakVar2.zzam()) {
                            str9 = String.format("%s=%s", substring2, remove);
                        }
                        str4 = zzakVar2.zzao() ? zzcs.zzak(str9.toString()) : zzcs.zzaj(str9.toString());
                    }
                    sb.append((Object) str4);
                }
            }
            i = indexOf2 + 1;
        }
        zzt.zza(zzb.entrySet(), sb);
        return sb.toString();
    }

    private static String zza(String str, Iterator<?> it, boolean z, zzak zzakVar) {
        String str2;
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = zzakVar.zzal();
        } else {
            if (zzakVar.zzam()) {
                sb.append(zzcs.zzaj(str));
                sb.append("=");
            }
            str2 = ",";
        }
        while (it.hasNext()) {
            if (z && zzakVar.zzam()) {
                sb.append(zzcs.zzaj(str));
                sb.append("=");
            }
            sb.append(zzakVar.zzaa(it.next().toString()));
            if (it.hasNext()) {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    private static Map<String, Object> zzb(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : zzbt.zzf(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !zzbt.isNull(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return linkedHashMap;
    }
}
