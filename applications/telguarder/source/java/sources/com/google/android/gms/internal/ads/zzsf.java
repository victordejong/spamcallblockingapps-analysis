package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsf.class */
public final class zzsf {
    private final int zzbud;
    private final zzrv zzbuf;
    private String zzbun;
    private String zzbuo;
    private final boolean zzbup = false;
    private final int zzbuq;
    private final int zzbur;

    public zzsf(int i, int i2, int i3) {
        this.zzbud = i;
        if (i2 > 64 || i2 < 0) {
            this.zzbuq = 64;
        } else {
            this.zzbuq = i2;
        }
        if (i3 <= 0) {
            this.zzbur = 1;
        } else {
            this.zzbur = i3;
        }
        this.zzbuf = new zzsc(this.zzbuq);
    }

    public final String zza(ArrayList<String> arrayList, ArrayList<zzrs> arrayList2) {
        boolean z;
        boolean z2;
        Collections.sort(arrayList2, new zzse(this));
        HashSet hashSet = new HashSet();
        for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).zzmr()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (split.length != 0) {
                for (String str : split) {
                    String str2 = str;
                    if (str.indexOf("'") != -1) {
                        StringBuilder sb = new StringBuilder(str);
                        int i2 = 1;
                        boolean z3 = false;
                        while (true) {
                            int i3 = i2 + 2;
                            if (i3 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i2) == '\'') {
                                if (sb.charAt(i2 - 1) != ' ') {
                                    int i4 = i2 + 1;
                                    if ((sb.charAt(i4) == 's' || sb.charAt(i4) == 'S') && (i3 == sb.length() || sb.charAt(i3) == ' ')) {
                                        sb.insert(i2, ' ');
                                        i2 = i3;
                                        z3 = true;
                                    }
                                }
                                sb.setCharAt(i2, ' ');
                                z3 = true;
                            }
                            i2++;
                        }
                        String sb2 = z3 ? sb.toString() : null;
                        str2 = str;
                        if (sb2 != null) {
                            this.zzbuo = sb2;
                            str2 = sb2;
                        }
                    }
                    String[] zze = zzrz.zze(str2, true);
                    if (zze.length >= this.zzbur) {
                        for (int i5 = 0; i5 < zze.length; i5++) {
                            String str3 = "";
                            int i6 = 0;
                            while (true) {
                                if (i6 >= this.zzbur) {
                                    z2 = true;
                                    break;
                                }
                                int i7 = i5 + i6;
                                if (i7 >= zze.length) {
                                    z2 = false;
                                    break;
                                }
                                String str4 = str3;
                                if (i6 > 0) {
                                    str4 = String.valueOf(str3).concat(" ");
                                }
                                String valueOf = String.valueOf(str4);
                                String valueOf2 = String.valueOf(zze[i7]);
                                str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                                i6++;
                            }
                            if (!z2) {
                                break;
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.zzbud) {
                                break;
                            }
                        }
                        if (hashSet.size() >= this.zzbud) {
                            z = false;
                            break;
                        }
                    }
                }
            }
            z = true;
            if (!z) {
                break;
            }
        }
        zzrw zzrwVar = new zzrw();
        this.zzbun = "";
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                zzrwVar.write(this.zzbuf.zzbq((String) it.next()));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return zzrwVar.toString();
    }
}
