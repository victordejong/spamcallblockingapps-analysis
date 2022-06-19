package com.bumptech.glide.p072e;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.e.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b.class */
public final class C1394b {

    /* renamed from: a */
    private final List<ImageHeaderParser> f4609a = new ArrayList();

    /* renamed from: a */
    public List<ImageHeaderParser> m17217a() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.f4609a;
        }
        return list;
    }

    /* renamed from: a */
    public void m17216a(ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.f4609a.add(imageHeaderParser);
        }
    }
}
