package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxw.class */
public final class cxw {

    /* renamed from: a  reason: collision with root package name */
    private final String f26551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cxw(String str) {
        this.f26551a = (String) cyg.a(str);
    }

    private static CharSequence a(Object obj) {
        cyg.a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder a(StringBuilder sb, Iterator<?> it2) {
        try {
            cyg.a(sb);
            if (it2.hasNext()) {
                sb.append(a(it2.next()));
                while (it2.hasNext()) {
                    sb.append((CharSequence) this.f26551a);
                    sb.append(a(it2.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
