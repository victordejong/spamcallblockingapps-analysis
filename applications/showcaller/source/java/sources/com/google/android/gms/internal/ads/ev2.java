package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ev2.class */
public final class ev2 implements Iterable<String> {

    /* renamed from: d */
    final /* synthetic */ CharSequence f22564d;

    /* renamed from: e */
    final /* synthetic */ hv2 f22565e;

    public ev2(hv2 hv2Var, CharSequence charSequence) {
        this.f22565e = hv2Var;
        this.f22564d = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> m14530g;
        m14530g = this.f22565e.m14530g(this.f22564d);
        return m14530g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(ou2.m12501a(it.next(), ", "));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(ou2.m12501a(it.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
