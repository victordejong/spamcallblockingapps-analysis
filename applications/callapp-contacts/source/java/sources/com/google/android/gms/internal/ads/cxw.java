package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxw.class */
public final class cxw {

    /* renamed from: a */
    private final String f46745a;

    public cxw(String str) {
        this.f46745a = (String) cyg.m17060a(str);
    }

    /* renamed from: a */
    private static CharSequence m17072a(Object obj) {
        cyg.m17060a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: a */
    public final StringBuilder m17071a(StringBuilder sb, Iterator<?> it2) {
        try {
            cyg.m17060a(sb);
            if (it2.hasNext()) {
                sb.append(m17072a(it2.next()));
                while (it2.hasNext()) {
                    sb.append((CharSequence) this.f46745a);
                    sb.append(m17072a(it2.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
