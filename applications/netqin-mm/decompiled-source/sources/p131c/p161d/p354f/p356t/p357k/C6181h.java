package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.h */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/h.class */
public final class C6181h extends AbstractC6129q<Object> {

    /* renamed from: b */
    public static final AbstractC6131r f19708b = new C6182a();

    /* renamed from: a */
    public final C6111e f19709a;

    /* renamed from: c.d.f.t.k.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/h$a.class */
    public class C6182a implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            if (aVar.m21836a() == Object.class) {
                return new C6181h(eVar);
            }
            return null;
        }
    }

    /* renamed from: c.d.f.t.k.h$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/h$b.class */
    public static /* synthetic */ class C6183b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19710a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f19710a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19710a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19710a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19710a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19710a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19710a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public C6181h(C6111e eVar) {
        this.f19709a = eVar;
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Object read(C6240a aVar) throws IOException {
        switch (C6183b.f19710a[aVar.mo21802u().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.mo21830a();
                while (aVar.mo21813i()) {
                    arrayList.add(read(aVar));
                }
                aVar.mo21816f();
                return arrayList;
            case 2:
                LinkedTreeMap linkedTreeMap = new LinkedTreeMap();
                aVar.mo21825b();
                while (aVar.mo21813i()) {
                    linkedTreeMap.put(aVar.mo21806q(), read(aVar));
                }
                aVar.mo21815g();
                return linkedTreeMap;
            case 3:
                return aVar.mo21804s();
            case 4:
                return Double.valueOf(aVar.mo21809m());
            case 5:
                return Boolean.valueOf(aVar.mo21810l());
            case 6:
                aVar.mo21805r();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public void write(C6242b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.mo21770k();
            return;
        }
        AbstractC6129q a = this.f19709a.m21985a((Class) obj.getClass());
        if (a instanceof C6181h) {
            bVar.mo21780d();
            bVar.mo21775f();
            return;
        }
        a.write(bVar, obj);
    }
}
