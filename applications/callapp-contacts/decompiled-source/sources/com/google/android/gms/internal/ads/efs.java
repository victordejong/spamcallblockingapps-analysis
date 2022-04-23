package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efs.class */
public final class efs {

    /* renamed from: a  reason: collision with root package name */
    private final efh f27795a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27796b;

    /* renamed from: c  reason: collision with root package name */
    private String f27797c;

    /* renamed from: d  reason: collision with root package name */
    private String f27798d;
    private final boolean e = false;
    private final int f;
    private final int g;

    public efs(int i, int i2, int i3) {
        this.f27796b = i;
        if (i2 > 64 || i2 < 0) {
            this.f = 64;
        } else {
            this.f = i2;
        }
        if (i3 <= 0) {
            this.g = 1;
        } else {
            this.g = i3;
        }
        this.f27795a = new eft(this.f);
    }

    public final String a(ArrayList<String> arrayList, ArrayList<efi> arrayList2) {
        boolean z;
        boolean z2;
        Collections.sort(arrayList2, new efv(this));
        HashSet hashSet = new HashSet();
        for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).e), Normalizer.Form.NFKC).toLowerCase(Locale.US).split(StringUtils.LF);
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
                            this.f27798d = sb2;
                            str2 = sb2;
                        }
                    }
                    String[] a2 = efm.a(str2, true);
                    if (a2.length >= this.g) {
                        for (int i5 = 0; i5 < a2.length; i5++) {
                            String str3 = "";
                            int i6 = 0;
                            while (true) {
                                if (i6 >= this.g) {
                                    z2 = true;
                                    break;
                                }
                                int i7 = i5 + i6;
                                if (i7 >= a2.length) {
                                    z2 = false;
                                    break;
                                }
                                String str4 = str3;
                                if (i6 > 0) {
                                    str4 = String.valueOf(str3).concat(StringUtils.SPACE);
                                }
                                String valueOf = String.valueOf(str4);
                                String valueOf2 = String.valueOf(a2[i7]);
                                str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                                i6++;
                            }
                            if (!z2) {
                                break;
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.f27796b) {
                                break;
                            }
                        }
                        if (hashSet.size() >= this.f27796b) {
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
        efn efnVar = new efn();
        this.f27797c = "";
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            try {
                efnVar.a(this.f27795a.a((String) it2.next()));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return efnVar.toString();
    }
}
