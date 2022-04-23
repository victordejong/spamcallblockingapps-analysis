package com.criteo.publisher.logging;

import com.criteo.publisher.g.a;
import com.criteo.publisher.q;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<d>> f17455a;

    public h(List<a<d>> list) {
        this.f17455a = list;
    }

    public static g a(Class<?> cls) {
        return q.a().A().b(cls);
    }

    public final g b(Class<?> cls) {
        return new g(cls, this.f17455a);
    }
}
