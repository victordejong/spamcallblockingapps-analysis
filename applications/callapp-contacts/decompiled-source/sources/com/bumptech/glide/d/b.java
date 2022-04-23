package com.bumptech.glide.d;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f7247a = new ArrayList();

    public final List<ImageHeaderParser> a() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.f7247a;
        }
        return list;
    }

    public final void a(ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.f7247a.add(imageHeaderParser);
        }
    }
}
