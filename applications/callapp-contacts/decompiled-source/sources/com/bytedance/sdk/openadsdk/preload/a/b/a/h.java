package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/h.class */
public final class h extends v<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final w f9933a = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.h.1
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new h(fVar);
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final f f9934b;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.h$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/h$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9935a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f9935a = iArr;
            try {
                iArr[b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9935a[b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9935a[b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f9935a[b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f9935a[b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f9935a[b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    h(f fVar) {
        this.f9934b = fVar;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final void a(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        v a2 = this.f9934b.a((Class) obj.getClass());
        if (a2 instanceof h) {
            cVar.d();
            cVar.e();
            return;
        }
        a2.a(cVar, obj);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final Object b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        switch (AnonymousClass2.f9935a[aVar.f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(b(aVar));
                }
                aVar.b();
                return arrayList;
            case 2:
                com.bytedance.sdk.openadsdk.preload.a.b.h hVar = new com.bytedance.sdk.openadsdk.preload.a.b.h();
                aVar.c();
                while (aVar.e()) {
                    hVar.put(aVar.g(), b(aVar));
                }
                aVar.d();
                return hVar;
            case 3:
                return aVar.h();
            case 4:
                return Double.valueOf(aVar.k());
            case 5:
                return Boolean.valueOf(aVar.i());
            case 6:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
