package com.google.android.exoplayer2.text.p341e;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.google.android.exoplayer2.text.e.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/b.class */
final class C11381b {

    /* renamed from: a */
    public final int f37529a;

    /* renamed from: b */
    public final int f37530b;

    /* renamed from: c */
    public final int f37531c;

    /* renamed from: d */
    public final int f37532d;

    /* renamed from: e */
    public final int f37533e;

    private C11381b(int i, int i2, int i3, int i4, int i5) {
        this.f37529a = i;
        this.f37530b = i2;
        this.f37531c = i3;
        this.f37532d = i4;
        this.f37533e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C11381b m20713a(String str) {
        boolean z;
        C11593a.m20022a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String m19927d = C11599af.m19927d(split[i5].trim());
            m19927d.hashCode();
            switch (m19927d.hashCode()) {
                case 100571:
                    if (m19927d.equals("end")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 3556653:
                    if (m19927d.equals("text")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109757538:
                    if (m19927d.equals(EventConstants.START)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109780401:
                    if (m19927d.equals("style")) {
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
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new C11381b(i, i2, i3, i4, split.length);
    }
}
