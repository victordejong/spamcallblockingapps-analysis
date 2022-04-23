package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.a.ag;
import kotlin.f.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.a.a;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b.class */
public final class b extends n implements kotlin.reflect.jvm.internal.impl.builtins.a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f38343c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private final boolean f38344d;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Finally extract failed */
        public static b a(kotlin.reflect.jvm.internal.impl.c.b fqName, kotlin.reflect.jvm.internal.impl.f.n storageManager, ab module, InputStream inputStream, boolean z) {
            p.d(fqName, "fqName");
            p.d(storageManager, "storageManager");
            p.d(module, "module");
            p.d(inputStream, "inputStream");
            InputStream inputStream2 = inputStream;
            try {
                InputStream stream = inputStream2;
                a.C0626a aVar = kotlin.reflect.jvm.internal.impl.b.a.a.f36969a;
                p.d(stream, "stream");
                DataInputStream dataInputStream = new DataInputStream(stream);
                c cVar = new c(1, dataInputStream.readInt());
                ArrayList arrayList = new ArrayList(kotlin.a.n.a(cVar, 10));
                Iterator<Integer> it2 = cVar.iterator();
                while (it2.hasNext()) {
                    ((ag) it2).a();
                    arrayList.add(Integer.valueOf(dataInputStream.readInt()));
                }
                int[] c2 = kotlin.a.n.c((Collection<Integer>) arrayList);
                int[] iArr = new int[c2.length];
                System.arraycopy(c2, 0, iArr, 0, c2.length);
                kotlin.reflect.jvm.internal.impl.b.a.a aVar2 = new kotlin.reflect.jvm.internal.impl.b.a.a(iArr);
                if (aVar2.a()) {
                    a.l proto = a.l.a(stream, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.f38322a);
                    kotlin.io.b.a(inputStream2, null);
                    p.b(proto, "proto");
                    return new b(fqName, storageManager, module, proto, aVar2, z, null);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + kotlin.reflect.jvm.internal.impl.b.a.a.f36970b + ", actual " + aVar2 + ". Please update Kotlin");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    private b(kotlin.reflect.jvm.internal.impl.c.b bVar, kotlin.reflect.jvm.internal.impl.f.n nVar, ab abVar, a.l lVar, kotlin.reflect.jvm.internal.impl.b.a.a aVar, boolean z) {
        super(bVar, nVar, abVar, lVar, aVar, null);
        this.f38344d = z;
    }

    public /* synthetic */ b(kotlin.reflect.jvm.internal.impl.c.b bVar, kotlin.reflect.jvm.internal.impl.f.n nVar, ab abVar, a.l lVar, kotlin.reflect.jvm.internal.impl.b.a.a aVar, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, nVar, abVar, lVar, aVar, z);
    }
}
