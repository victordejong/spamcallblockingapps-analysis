package com.bumptech.glide.p221n;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.n.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/b.class */
public final class C4357b {

    /* renamed from: a */
    private final List<ImageHeaderParser> f13347a = new ArrayList();

    /* renamed from: a */
    public void m22778a(ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.f13347a.add(imageHeaderParser);
        }
    }

    /* renamed from: b */
    public List<ImageHeaderParser> m22777b() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.f13347a;
        }
        return list;
    }
}
