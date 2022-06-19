package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sw1.class */
public final class sw1 {

    /* renamed from: a */
    private final bw1 f8576a;

    /* renamed from: b */
    private final pw1 f8577b;

    private sw1(pw1 pw1Var, byte[] bArr) {
        aw1 aw1Var = aw1.b;
        this.f8577b = pw1Var;
        this.f8576a = aw1Var;
    }

    /* renamed from: a */
    public static sw1 m5559a(bw1 bw1Var) {
        return new sw1(new pw1(bw1Var), null);
    }

    /* renamed from: f */
    public final Iterator<String> m5554f(CharSequence charSequence) {
        return new ow1(this.f8577b, this, charSequence);
    }

    /* renamed from: b */
    public final Iterable<String> m5558b(CharSequence charSequence) {
        charSequence.getClass();
        return new qw1(this, charSequence);
    }

    /* renamed from: c */
    public final List<String> m5557c(CharSequence charSequence) {
        Iterator<String> m5554f = m5554f(charSequence);
        ArrayList arrayList = new ArrayList();
        while (m5554f.hasNext()) {
            arrayList.add(m5554f.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
