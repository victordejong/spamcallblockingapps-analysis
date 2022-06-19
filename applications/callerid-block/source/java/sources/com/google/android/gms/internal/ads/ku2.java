package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ku2.class */
public final class ku2 {

    /* renamed from: a */
    private final zt2 f7074a;

    /* renamed from: b */
    private final int f7075b;

    /* renamed from: c */
    private final int f7076c;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r7 < 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ku2(int r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = r6
            r0.f7075b = r1
            r0 = r7
            r1 = 64
            if (r0 > r1) goto L15
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 >= 0) goto L18
        L15:
            r0 = 64
            r6 = r0
        L18:
            r0 = r8
            if (r0 > 0) goto L24
            r0 = r5
            r1 = 1
            r0.f7076c = r1
            goto L29
        L24:
            r0 = r5
            r1 = r8
            r0.f7076c = r1
        L29:
            r0 = r5
            com.google.android.gms.internal.ads.iu2 r1 = new com.google.android.gms.internal.ads.iu2
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f7074a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ku2.<init>(int, int, int):void");
    }

    /* renamed from: a */
    public final String m6749a(ArrayList<String> arrayList, ArrayList<yt2> arrayList2) {
        Collections.sort(arrayList2, new ju2(this));
        HashSet hashSet = new HashSet();
        loop0: for (int i = 0; i < arrayList2.size(); i++) {
            String[] split = Normalizer.normalize(arrayList.get(arrayList2.get(i).m4697e()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (split.length != 0) {
                for (String str : split) {
                    String str2 = str;
                    if (str.indexOf("'") != -1) {
                        StringBuilder sb = new StringBuilder(str);
                        int i2 = 1;
                        boolean z = false;
                        while (true) {
                            int i3 = i2 + 2;
                            if (i3 > sb.length()) {
                                break;
                            }
                            int i4 = i2;
                            if (sb.charAt(i2) == '\'') {
                                if (sb.charAt(i2 - 1) != ' ') {
                                    int i5 = i2 + 1;
                                    if ((sb.charAt(i5) == 's' || sb.charAt(i5) == 'S') && (i3 == sb.length() || sb.charAt(i3) == ' ')) {
                                        sb.insert(i2, ' ');
                                        i2 = i3;
                                        z = true;
                                        i4 = i2;
                                    }
                                }
                                sb.setCharAt(i2, ' ');
                                z = true;
                                i4 = i2;
                            }
                            i2 = i4 + 1;
                        }
                        String sb2 = z ? sb.toString() : null;
                        str2 = str;
                        if (sb2 != null) {
                            str2 = sb2;
                        }
                    }
                    String[] m7682b = du2.m7682b(str2, true);
                    if (m7682b.length >= this.f7076c) {
                        for (int i6 = 0; i6 < m7682b.length; i6++) {
                            String str3 = "";
                            for (int i7 = 0; i7 < this.f7076c; i7++) {
                                int i8 = i6 + i7;
                                if (i8 >= m7682b.length) {
                                    break;
                                }
                                String str4 = str3;
                                if (i7 > 0) {
                                    str4 = String.valueOf(str3).concat(" ");
                                }
                                String valueOf = String.valueOf(str4);
                                String valueOf2 = String.valueOf(m7682b[i8]);
                                str3 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= this.f7075b) {
                                break loop0;
                            }
                        }
                        if (hashSet.size() >= this.f7075b) {
                            break loop0;
                        }
                    }
                }
                continue;
            }
        }
        bu2 bu2Var = new bu2();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                bu2Var.f6207b.write(this.f7074a.m4515a((String) it.next()));
            } catch (IOException e) {
                C1894po.m6182d("Error while writing hash to byteStream", e);
            }
        }
        return bu2Var.toString();
    }
}
