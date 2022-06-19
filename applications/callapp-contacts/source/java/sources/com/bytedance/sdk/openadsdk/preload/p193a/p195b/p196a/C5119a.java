package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5189b;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/a.class */
public final class C5119a<E> extends AbstractC5274v<Object> {

    /* renamed from: a */
    public static final AbstractC5276w f18384a = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.a.1
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            Type m32805b = c5236a.m32805b();
            if ((m32805b instanceof GenericArrayType) || ((m32805b instanceof Class) && ((Class) m32805b).isArray())) {
                Type m32863g = C5189b.m32863g(m32805b);
                return new C5119a(c5250f, c5250f.m32735a((C5236a) C5236a.m32806a(m32863g)), C5189b.m32865e(m32863g));
            }
            return null;
        }
    };

    /* renamed from: b */
    private final Class<E> f18385b;

    /* renamed from: c */
    private final AbstractC5274v<E> f18386c;

    public C5119a(C5250f c5250f, AbstractC5274v<E> abstractC5274v, Class<E> cls) {
        this.f18386c = new C5148m(c5250f, abstractC5274v, cls);
        this.f18385b = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, Object obj) throws IOException {
        if (obj == null) {
            c5247c.mo32745f();
            return;
        }
        c5247c.mo32756b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f18386c.mo32518a(c5247c, Array.get(obj, i));
        }
        c5247c.mo32752c();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: b */
    public final Object mo32517b(C5244a c5244a) throws IOException {
        if (c5244a.mo32787f() == EnumC5246b.NULL) {
            c5244a.mo32783j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        c5244a.mo32801a();
        while (c5244a.mo32788e()) {
            arrayList.add(this.f18386c.mo32517b(c5244a));
        }
        c5244a.mo32796b();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f18385b, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
