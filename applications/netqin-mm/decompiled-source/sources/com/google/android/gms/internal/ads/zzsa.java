package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p252g.p253a.bg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsa.class */
public final class zzsa {

    /* renamed from: a */
    public final zzrq f28947a;

    /* renamed from: b */
    public final int f28948b;

    /* renamed from: c */
    public final int f28949c;

    /* renamed from: d */
    public final int f28950d;

    public zzsa(int i, int i2, int i3) {
        this.f28948b = i;
        if (i2 > 64 || i2 < 0) {
            this.f28949c = 64;
        } else {
            this.f28949c = i2;
        }
        if (i3 <= 0) {
            this.f28950d = 1;
        } else {
            this.f28950d = i3;
        }
        this.f28947a = new zzrx(this.f28949c);
    }

    /* renamed from: a */
    public final String m11479a(ArrayList<String> arrayList, ArrayList<zzrn> arrayList2) {
        boolean z;
        Collections.sort(arrayList2, new zzrz(this));
        HashSet hashSet = new HashSet();
        for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).m11492e()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            boolean z2 = true;
            if (split.length != 0) {
                int i2 = 0;
                while (true) {
                    z2 = true;
                    if (i2 >= split.length) {
                        break;
                    }
                    String str = split[i2];
                    String str2 = str;
                    if (str.indexOf("'") != -1) {
                        StringBuilder sb = new StringBuilder(str);
                        int i3 = 1;
                        boolean z3 = false;
                        while (true) {
                            int i4 = i3 + 2;
                            if (i4 > sb.length()) {
                                break;
                            }
                            i3 = i3;
                            if (sb.charAt(i3) == '\'') {
                                if (sb.charAt(i3 - 1) != ' ') {
                                    int i5 = i3 + 1;
                                    if ((sb.charAt(i5) == 's' || sb.charAt(i5) == 'S') && (i4 == sb.length() || sb.charAt(i4) == ' ')) {
                                        sb.insert(i3, ' ');
                                        i3 = i4;
                                        z3 = true;
                                    }
                                }
                                sb.setCharAt(i3, ' ');
                                z3 = true;
                            }
                            i3++;
                        }
                        String sb2 = z3 ? sb.toString() : null;
                        str2 = str;
                        if (sb2 != null) {
                            str2 = sb2;
                        }
                    }
                    String[] a = zzru.m11487a(str2, true);
                    if (a.length >= this.f28950d) {
                        for (int i6 = 0; i6 < a.length; i6++) {
                            String str3 = "";
                            int i7 = 0;
                            while (true) {
                                if (i7 >= this.f28950d) {
                                    z = true;
                                    break;
                                }
                                int i8 = i6 + i7;
                                if (i8 >= a.length) {
                                    z = false;
                                    break;
                                }
                                String str4 = str3;
                                if (i7 > 0) {
                                    str4 = String.valueOf(str3).concat(" ");
                                }
                                String valueOf = String.valueOf(str4);
                                String valueOf2 = String.valueOf(a[i8]);
                                str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                                i7++;
                            }
                            if (!z) {
                                break;
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.f28948b) {
                                break;
                            }
                        }
                        if (hashSet.size() >= this.f28948b) {
                            break;
                        }
                    }
                    i2++;
                }
                z2 = false;
            }
            if (!z2) {
                break;
            }
        }
        bg0 bg0Var = new bg0();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                bg0Var.m27119a(this.f28947a.mo11480a((String) it.next()));
            } catch (IOException e) {
                zzbbq.m15855b("Error while writing hash to byteStream", e);
            }
        }
        return bg0Var.toString();
    }
}
