package com.google.android.exoplayer2.text.e;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f21797a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21798b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21799c;

    /* renamed from: d  reason: collision with root package name */
    public final int f21800d;
    public final int e;

    private b(int i, int i2, int i3, int i4, int i5) {
        this.f21797a = i;
        this.f21798b = i2;
        this.f21799c = i3;
        this.f21800d = i4;
        this.e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static b a(String str) {
        char c2;
        a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String d2 = af.d(split[i5].trim());
            d2.hashCode();
            switch (d2.hashCode()) {
                case 100571:
                    if (d2.equals("end")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3556653:
                    if (d2.equals("text")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109757538:
                    if (d2.equals(EventConstants.START)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109780401:
                    if (d2.equals("style")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    i2 = i5;
                    break;
                case 1:
                    i4 = i5;
                    break;
                case 2:
                    i = i5;
                    break;
                case 3:
                    i3 = i5;
                    break;
            }
        }
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new b(i, i2, i3, i4, split.length);
    }
}
