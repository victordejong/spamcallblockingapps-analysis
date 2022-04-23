package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qw1.class */
public final class qw1 implements Iterable<String> {

    /* renamed from: b */
    final /* synthetic */ CharSequence f8281b;

    /* renamed from: c */
    final /* synthetic */ sw1 f8282c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qw1(sw1 sw1Var, CharSequence charSequence) {
        this.f8282c = sw1Var;
        this.f8281b = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> f;
        f = this.f8282c.m5554f(this.f8281b);
        return f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                CharSequence a = gw1.m7335a(it.next(), ", ");
                while (true) {
                    sb.append(a);
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) ", ");
                    a = gw1.m7335a(it.next(), ", ");
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
