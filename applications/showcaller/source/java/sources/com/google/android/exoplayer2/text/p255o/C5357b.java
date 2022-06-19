package com.google.android.exoplayer2.text.p255o;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.text.o.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/b.class */
final class C5357b {

    /* renamed from: a */
    public final int f17106a;

    /* renamed from: b */
    public final int f17107b;

    /* renamed from: c */
    public final int f17108c;

    /* renamed from: d */
    public final int f17109d;

    /* renamed from: e */
    public final int f17110e;

    private C5357b(int i, int i2, int i3, int i4, int i5) {
        this.f17106a = i;
        this.f17107b = i2;
        this.f17108c = i3;
        this.f17109d = i4;
        this.f17110e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C5357b m19530a(String str) {
        boolean z;
        C5508e.m18915a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String m18804u0 = C5515h0.m18804u0(split[i5].trim());
            m18804u0.hashCode();
            switch (m18804u0.hashCode()) {
                case 100571:
                    if (m18804u0.equals("end")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 3556653:
                    if (m18804u0.equals("text")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109757538:
                    if (m18804u0.equals("start")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109780401:
                    if (m18804u0.equals("style")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    i2 = i5;
                    break;
                case true:
                    i4 = i5;
                    break;
                case true:
                    i = i5;
                    break;
                case true:
                    i3 = i5;
                    break;
            }
        }
        return (i == -1 || i2 == -1) ? null : new C5357b(i, i2, i3, i4, split.length);
    }
}
