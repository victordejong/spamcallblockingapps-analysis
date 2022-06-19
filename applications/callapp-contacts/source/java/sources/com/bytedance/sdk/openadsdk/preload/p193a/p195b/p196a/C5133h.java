package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5216h;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.util.ArrayList;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/h.class */
public final class C5133h extends AbstractC5274v<Object> {

    /* renamed from: a */
    public static final AbstractC5276w f18411a = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.h.1
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            if (c5236a.m32808a() == Object.class) {
                return new C5133h(c5250f);
            }
            return null;
        }
    };

    /* renamed from: b */
    private final C5250f f18412b;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.h$2 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/h$2.class */
    static /* synthetic */ class C51352 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18413a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC5246b.values().length];
            f18413a = iArr;
            try {
                iArr[EnumC5246b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18413a[EnumC5246b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18413a[EnumC5246b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18413a[EnumC5246b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18413a[EnumC5246b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18413a[EnumC5246b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    C5133h(C5250f c5250f) {
        this.f18412b = c5250f;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, Object obj) throws IOException {
        if (obj == null) {
            c5247c.mo32745f();
            return;
        }
        AbstractC5274v m32724a = this.f18412b.m32724a((Class) obj.getClass());
        if (!(m32724a instanceof C5133h)) {
            m32724a.mo32518a(c5247c, obj);
            return;
        }
        c5247c.mo32749d();
        c5247c.mo32746e();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: b */
    public final Object mo32517b(C5244a c5244a) throws IOException {
        switch (C51352.f18413a[c5244a.mo32787f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                c5244a.mo32801a();
                while (c5244a.mo32788e()) {
                    arrayList.add(mo32517b(c5244a));
                }
                c5244a.mo32796b();
                return arrayList;
            case 2:
                C5216h c5216h = new C5216h();
                c5244a.mo32791c();
                while (c5244a.mo32788e()) {
                    c5216h.put(c5244a.mo32786g(), mo32517b(c5244a));
                }
                c5244a.mo32789d();
                return c5216h;
            case 3:
                return c5244a.mo32785h();
            case 4:
                return Double.valueOf(c5244a.mo32782k());
            case 5:
                return Boolean.valueOf(c5244a.mo32784i());
            case 6:
                c5244a.mo32783j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
