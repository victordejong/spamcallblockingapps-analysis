package kotlin.reflect.jvm.internal.impl.b.b;

import java.util.LinkedList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.s;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/d.class */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final a.o f37149a;

    /* renamed from: b  reason: collision with root package name */
    private final a.n f37150b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/d$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37151a;

        static {
            int[] iArr = new int[a.n.b.EnumC0644b.values().length];
            iArr[a.n.b.EnumC0644b.CLASS.ordinal()] = 1;
            iArr[a.n.b.EnumC0644b.PACKAGE.ordinal()] = 2;
            iArr[a.n.b.EnumC0644b.LOCAL.ordinal()] = 3;
            f37151a = iArr;
        }
    }

    public d(a.o strings, a.n qualifiedNames) {
        p.d(strings, "strings");
        p.d(qualifiedNames, "qualifiedNames");
        this.f37149a = strings;
        this.f37150b = qualifiedNames;
    }

    private final s<List<String>, List<String>, Boolean> d(int i) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i != -1) {
            a.n.b a2 = this.f37150b.a(i);
            String a3 = this.f37149a.a(a2.f37073c);
            a.n.b.EnumC0644b bVar = a2.f37074d;
            p.a(bVar);
            int i2 = a.f37151a[bVar.ordinal()];
            if (i2 == 1) {
                linkedList2.addFirst(a3);
            } else if (i2 == 2) {
                linkedList.addFirst(a3);
            } else if (i2 == 3) {
                linkedList2.addFirst(a3);
                z = true;
            }
            i = a2.f37072b;
        }
        return new s<>(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final String a(int i) {
        String a2 = this.f37149a.a(i);
        p.b(a2, "strings.getString(index)");
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final String b(int i) {
        s<List<String>, List<String>, Boolean> d2 = d(i);
        List<String> list = d2.f38650a;
        String a2 = n.a(d2.f38651b, ".", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        if (list.isEmpty()) {
            return a2;
        }
        return n.a(list, "/", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + '/' + a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final boolean c(int i) {
        return d(i).f38652c.booleanValue();
    }
}
