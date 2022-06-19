package com.bumptech.glide.p111d;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.d.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/b.class */
public final class C3564b {

    /* renamed from: a */
    private final List<ImageHeaderParser> f13566a = new ArrayList();

    /* renamed from: a */
    public final List<ImageHeaderParser> m37710a() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.f13566a;
        }
        return list;
    }

    /* renamed from: a */
    public final void m37709a(ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.f13566a.add(imageHeaderParser);
        }
    }
}
