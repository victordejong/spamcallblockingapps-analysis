package com.bumptech.glide.load.p081b.p082a;

import android.net.Uri;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1532g;
import com.bumptech.glide.load.p081b.C1554r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.b.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/b.class */
public class C1500b implements AbstractC1546n<Uri, InputStream> {

    /* renamed from: a */
    private static final Set<String> f4851a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final AbstractC1546n<C1532g, InputStream> f4852b;

    /* renamed from: com.bumptech.glide.load.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/b$a.class */
    public static class C1501a implements AbstractC1548o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1500b(c1554r.m16830a(C1532g.class, InputStream.class));
        }
    }

    public C1500b(AbstractC1546n<C1532g, InputStream> abstractC1546n) {
        this.f4852b = abstractC1546n;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<InputStream> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return this.f4852b.mo16802a(new C1532g(uri.toString()), i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return f4851a.contains(uri.getScheme());
    }
}
