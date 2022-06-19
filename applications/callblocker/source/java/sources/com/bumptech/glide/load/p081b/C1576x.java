package com.bumptech.glide.load.p081b;

import android.net.Uri;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.b.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/x.class */
public class C1576x<Data> implements AbstractC1546n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f4943a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final AbstractC1546n<C1532g, Data> f4944b;

    /* renamed from: com.bumptech.glide.load.b.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/x$a.class */
    public static class C1577a implements AbstractC1548o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1576x(c1554r.m16830a(C1532g.class, InputStream.class));
        }
    }

    public C1576x(AbstractC1546n<C1532g, Data> abstractC1546n) {
        this.f4944b = abstractC1546n;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return this.f4944b.mo16802a(new C1532g(uri.toString()), i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return f4943a.contains(uri.getScheme());
    }
}
