package p1727n3.p1807k.p1808a;

import android.os.Bundle;
import java.util.Set;
/* renamed from: n3.k.a.z */
/* loaded from: classes-dex2jar.jar:n3/k/a/z.class */
public final class C26466z {

    /* renamed from: a */
    public final String f74228a;

    /* renamed from: b */
    public final CharSequence f74229b;

    /* renamed from: c */
    public final CharSequence[] f74230c;

    /* renamed from: d */
    public final boolean f74231d;

    /* renamed from: e */
    public final int f74232e;

    /* renamed from: f */
    public final Bundle f74233f;

    /* renamed from: g */
    public final Set<String> f74234g;

    public C26466z(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.f74228a = str;
        this.f74229b = charSequence;
        this.f74230c = charSequenceArr;
        this.f74231d = z;
        this.f74232e = i;
        this.f74233f = bundle;
        this.f74234g = set;
        if (i != 2 || z) {
            return;
        }
        throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
    }
}
