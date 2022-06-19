package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18361c;
import kotlin.p533io.C18442b;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18889a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p540a.C18802a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19952n;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b.class */
public final class C19878b extends AbstractC19952n implements AbstractC18889a {

    /* renamed from: c */
    public static final C19879a f66096c = new C19879a(null);

    /* renamed from: d */
    private final boolean f66097d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a.class */
    public static final class C19879a {
        private C19879a() {
        }

        public /* synthetic */ C19879a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public static C19878b m1366a(C18961b fqName, AbstractC19302n storageManager, AbstractC18999ab module, InputStream inputStream, boolean z) {
            C18524p.m3840d(fqName, "fqName");
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(module, "module");
            C18524p.m3840d(inputStream, "inputStream");
            InputStream inputStream2 = inputStream;
            try {
                InputStream stream = inputStream2;
                C18802a.C18803a c18803a = C18802a.f64245a;
                C18524p.m3840d(stream, "stream");
                DataInputStream dataInputStream = new DataInputStream(stream);
                C18361c c18361c = new C18361c(1, dataInputStream.readInt());
                ArrayList arrayList = new ArrayList(C18282n.m4163a(c18361c, 10));
                Iterator<Integer> it2 = c18361c.iterator();
                while (it2.hasNext()) {
                    ((AbstractC18245ag) it2).mo4059a();
                    arrayList.add(Integer.valueOf(dataInputStream.readInt()));
                }
                int[] c = C18282n.m4130c((Collection<Integer>) arrayList);
                int[] iArr = new int[c.length];
                System.arraycopy(c, 0, iArr, 0, c.length);
                C18802a c18802a = new C18802a(iArr);
                if (c18802a.m3701a()) {
                    C18702a.C18751l proto = C18702a.C18751l.m3398a(stream, C19877a.f66095m.f66060a);
                    C18442b.m3909a(inputStream2, null);
                    C18524p.m3843b(proto, "proto");
                    return new C19878b(fqName, storageManager, module, proto, c18802a, z, null);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + C18802a.f64246b + ", actual " + c18802a + ". Please update Kotlin");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    private C19878b(C18961b c18961b, AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, C18702a.C18751l c18751l, C18802a c18802a, boolean z) {
        super(c18961b, abstractC19302n, abstractC18999ab, c18751l, c18802a, null);
        this.f66097d = z;
    }

    public /* synthetic */ C19878b(C18961b c18961b, AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, C18702a.C18751l c18751l, C18802a c18802a, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(c18961b, abstractC19302n, abstractC18999ab, c18751l, c18802a, z);
    }
}
