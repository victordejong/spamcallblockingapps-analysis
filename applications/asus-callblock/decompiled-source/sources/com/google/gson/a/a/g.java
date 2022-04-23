package com.google.gson.a.a;

import com.google.gson.b.a;
import com.google.gson.c.b;
import com.google.gson.c.c;
import com.google.gson.f;
import com.google.gson.x;
import com.google.gson.y;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/g.class */
public final class g extends x<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4453a = new y() { // from class: com.google.gson.a.a.g.1
        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, a<T> aVar) {
            return aVar.f4531a == Object.class ? new g(fVar, (byte) 0) : null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final f f4454b;

    /* renamed from: com.google.gson.a.a.g$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/g$2.class */
    static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4455a = new int[b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:21:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:29:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:27:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:25:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0061 -> B:23:0x0014). Please submit an issue!!! */
        static {
            try {
                f4455a[b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4455a[b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4455a[b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4455a[b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4455a[b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4455a[b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private g(f fVar) {
        this.f4454b = fVar;
    }

    /* synthetic */ g(f fVar, byte b2) {
        this(fVar);
    }

    @Override // com.google.gson.x
    public final Object a(com.google.gson.c.a aVar) {
        Object obj;
        switch (AnonymousClass2.f4455a[aVar.f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(a(aVar));
                }
                aVar.b();
                obj = arrayList;
                break;
            case 2:
                com.google.gson.a.g gVar = new com.google.gson.a.g();
                aVar.c();
                while (aVar.e()) {
                    gVar.put(aVar.h(), a(aVar));
                }
                aVar.d();
                obj = gVar;
                break;
            case 3:
                obj = aVar.i();
                break;
            case 4:
                obj = Double.valueOf(aVar.l());
                break;
            case 5:
                obj = Boolean.valueOf(aVar.j());
                break;
            case 6:
                aVar.k();
                obj = null;
                break;
            default:
                throw new IllegalStateException();
        }
        return obj;
    }

    @Override // com.google.gson.x
    public final void a(c cVar, Object obj) {
        if (obj == null) {
            cVar.e();
            return;
        }
        x a2 = this.f4454b.a(obj.getClass());
        if (a2 instanceof g) {
            cVar.c();
            cVar.d();
            return;
        }
        a2.a(cVar, obj);
    }
}
