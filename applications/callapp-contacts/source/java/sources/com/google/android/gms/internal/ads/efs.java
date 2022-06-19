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

    /* renamed from: a */
    private final efh f48976a;

    /* renamed from: b */
    private final int f48977b;

    /* renamed from: c */
    private String f48978c;

    /* renamed from: d */
    private String f48979d;

    /* renamed from: e */
    private final boolean f48980e = false;

    /* renamed from: f */
    private final int f48981f;

    /* renamed from: g */
    private final int f48982g;

    public efs(int i, int i2, int i3) {
        this.f48977b = i;
        if (i2 > 64 || i2 < 0) {
            this.f48981f = 64;
        } else {
            this.f48981f = i2;
        }
        if (i3 <= 0) {
            this.f48982g = 1;
        } else {
            this.f48982g = i3;
        }
        this.f48976a = new eft(this.f48981f);
    }

    /* renamed from: a */
    public final String m15083a(ArrayList<String> arrayList, ArrayList<efi> arrayList2) {
        boolean z;
        boolean z2;
        Collections.sort(arrayList2, new efv(this));
        HashSet hashSet = new HashSet();
        for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).f48962e), Normalizer.Form.NFKC).toLowerCase(Locale.US).split(StringUtils.f67179LF);
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
                            this.f48979d = sb2;
                            str2 = sb2;
                        }
                    }
                    String[] m15091a = efm.m15091a(str2, true);
                    if (m15091a.length >= this.f48982g) {
                        for (int i5 = 0; i5 < m15091a.length; i5++) {
                            String str3 = "";
                            int i6 = 0;
                            while (true) {
                                if (i6 >= this.f48982g) {
                                    z2 = true;
                                    break;
                                }
                                int i7 = i5 + i6;
                                if (i7 >= m15091a.length) {
                                    z2 = false;
                                    break;
                                }
                                String str4 = str3;
                                if (i6 > 0) {
                                    str4 = String.valueOf(str3).concat(StringUtils.SPACE);
                                }
                                String valueOf = String.valueOf(str4);
                                String valueOf2 = String.valueOf(m15091a[i7]);
                                str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                                i6++;
                            }
                            if (!z2) {
                                break;
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.f48977b) {
                                break;
                            }
                        }
                        if (hashSet.size() >= this.f48977b) {
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
        this.f48978c = "";
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            try {
                efnVar.m15090a(this.f48976a.mo15082a((String) it2.next()));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return efnVar.toString();
    }
}
