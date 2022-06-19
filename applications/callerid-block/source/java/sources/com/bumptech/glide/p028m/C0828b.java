package com.bumptech.glide.p028m;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.m.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/b.class */
public final class C0828b {

    /* renamed from: a */
    private final List<ImageHeaderParser> f3774a = new ArrayList();

    /* renamed from: a */
    public void m10848a(ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.f3774a.add(imageHeaderParser);
        }
    }

    /* renamed from: b */
    public List<ImageHeaderParser> m10847b() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.f3774a;
        }
        return list;
    }
}
