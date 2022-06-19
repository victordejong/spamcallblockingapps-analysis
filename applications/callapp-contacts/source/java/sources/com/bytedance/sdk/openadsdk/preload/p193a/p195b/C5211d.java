package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5117b;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5235c;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5112a;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5115d;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5116e;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/d.class */
public final class C5211d implements AbstractC5276w, Cloneable {

    /* renamed from: a */
    public static final C5211d f18558a = new C5211d();

    /* renamed from: e */
    private boolean f18562e;

    /* renamed from: b */
    private double f18559b = -1.0d;

    /* renamed from: c */
    private int f18560c = 136;

    /* renamed from: d */
    private boolean f18561d = true;

    /* renamed from: f */
    private List<AbstractC5117b> f18563f = Collections.emptyList();

    /* renamed from: g */
    private List<AbstractC5117b> f18564g = Collections.emptyList();

    /* renamed from: a */
    private boolean m32851a(AbstractC5115d abstractC5115d) {
        return abstractC5115d == null || abstractC5115d.m32991a() <= this.f18559b;
    }

    /* renamed from: a */
    private boolean m32850a(AbstractC5115d abstractC5115d, AbstractC5116e abstractC5116e) {
        return m32851a(abstractC5115d) && m32849a(abstractC5116e);
    }

    /* renamed from: a */
    private boolean m32849a(AbstractC5116e abstractC5116e) {
        return abstractC5116e == null || abstractC5116e.m32990a() > this.f18559b;
    }

    /* renamed from: a */
    private boolean m32848a(Class<?> cls) {
        if (this.f18559b == -1.0d || m32850a((AbstractC5115d) cls.getAnnotation(AbstractC5115d.class), (AbstractC5116e) cls.getAnnotation(AbstractC5116e.class))) {
            return (!this.f18561d && m32843c(cls)) || m32845b(cls);
        }
        return true;
    }

    /* renamed from: b */
    private boolean m32845b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            return cls.isAnonymousClass() || cls.isLocalClass();
        }
        return false;
    }

    /* renamed from: b */
    private boolean m32844b(Class<?> cls, boolean z) {
        for (AbstractC5117b abstractC5117b : z ? this.f18563f : this.f18564g) {
            if (abstractC5117b.m32988a(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private boolean m32843c(Class<?> cls) {
        return cls.isMemberClass() && !m32842d(cls);
    }

    /* renamed from: d */
    private boolean m32842d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    /* renamed from: a */
    public final C5211d clone() {
        try {
            return (C5211d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
    /* renamed from: a */
    public final <T> AbstractC5274v<T> mo32675a(final C5250f c5250f, final C5236a<T> c5236a) {
        Class<? super T> m32808a = c5236a.m32808a();
        boolean m32848a = m32848a(m32808a);
        boolean z = m32848a || m32844b(m32808a, true);
        boolean z2 = m32848a || m32844b(m32808a, false);
        if (z || z2) {
            final boolean z3 = z2;
            final boolean z4 = z;
            return new AbstractC5274v<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.d.1

                /* renamed from: f */
                private AbstractC5274v<T> f18570f;

                /* renamed from: b */
                private AbstractC5274v<T> m32841b() {
                    AbstractC5274v<T> abstractC5274v = this.f18570f;
                    if (abstractC5274v != 0) {
                        return abstractC5274v;
                    }
                    AbstractC5274v<T> m32728a = c5250f.m32728a(C5211d.this, c5236a);
                    this.f18570f = m32728a;
                    return m32728a;
                }

                @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
                /* renamed from: a */
                public void mo32518a(C5247c c5247c, T t) throws IOException {
                    if (z4) {
                        c5247c.mo32745f();
                    } else {
                        m32841b().mo32518a(c5247c, t);
                    }
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
                /* renamed from: b */
                public T mo32517b(C5244a c5244a) throws IOException {
                    if (z3) {
                        c5244a.mo32779n();
                        return null;
                    }
                    return m32841b().mo32517b(c5244a);
                }
            };
        }
        return null;
    }

    /* renamed from: a */
    public final boolean m32847a(Class<?> cls, boolean z) {
        return m32848a(cls) || m32844b(cls, z);
    }

    /* renamed from: a */
    public final boolean m32846a(Field field, boolean z) {
        if ((this.f18560c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f18559b != -1.0d && !m32850a((AbstractC5115d) field.getAnnotation(AbstractC5115d.class), (AbstractC5116e) field.getAnnotation(AbstractC5116e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f18562e) {
            AbstractC5112a abstractC5112a = (AbstractC5112a) field.getAnnotation(AbstractC5112a.class);
            if (abstractC5112a == null) {
                return true;
            }
            if (z) {
                if (!abstractC5112a.m32997a()) {
                    return true;
                }
            } else if (!abstractC5112a.m32996b()) {
                return true;
            }
        }
        if ((!this.f18561d && m32843c(field.getType())) || m32845b(field.getType())) {
            return true;
        }
        List<AbstractC5117b> list = z ? this.f18563f : this.f18564g;
        if (list.isEmpty()) {
            return false;
        }
        C5235c c5235c = new C5235c(field);
        for (AbstractC5117b abstractC5117b : list) {
            if (abstractC5117b.m32989a(c5235c)) {
                return true;
            }
        }
        return false;
    }
}
