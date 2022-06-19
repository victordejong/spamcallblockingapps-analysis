package com.bumptech.glide.load.p212i;

import android.net.Uri;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.i.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/x.class */
public class C4221x<Data> implements AbstractC4191n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f13100a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final AbstractC4191n<C4177g, Data> f13101b;

    /* renamed from: com.bumptech.glide.load.i.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/x$a.class */
    public static class C4222a implements AbstractC4193o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, InputStream> mo23078b(C4199r c4199r) {
            return new C4221x(c4199r.m23121d(C4177g.class, InputStream.class));
        }
    }

    public C4221x(AbstractC4191n<C4177g, Data> abstractC4191n) {
        this.f13101b = abstractC4191n;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        return this.f13101b.mo23081b(new C4177g(uri.toString()), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
        return f13100a.contains(uri.getScheme());
    }
}
