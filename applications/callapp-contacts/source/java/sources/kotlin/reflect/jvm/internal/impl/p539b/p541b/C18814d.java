package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import java.util.LinkedList;
import java.util.List;
import kotlin.C20125s;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/d.class */
public final class C18814d implements AbstractC18813c {

    /* renamed from: a */
    private final C18702a.C18765o f64309a;

    /* renamed from: b */
    private final C18702a.C18757n f64310b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/d$a.class */
    public final /* synthetic */ class C18815a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64311a;

        static {
            int[] iArr = new int[C18702a.C18757n.C18760b.EnumC18763b.values().length];
            iArr[C18702a.C18757n.C18760b.EnumC18763b.CLASS.ordinal()] = 1;
            iArr[C18702a.C18757n.C18760b.EnumC18763b.PACKAGE.ordinal()] = 2;
            iArr[C18702a.C18757n.C18760b.EnumC18763b.LOCAL.ordinal()] = 3;
            f64311a = iArr;
        }
    }

    public C18814d(C18702a.C18765o strings, C18702a.C18757n qualifiedNames) {
        C18524p.m3840d(strings, "strings");
        C18524p.m3840d(qualifiedNames, "qualifiedNames");
        this.f64309a = strings;
        this.f64310b = qualifiedNames;
    }

    /* renamed from: d */
    private final C20125s<List<String>, List<String>, Boolean> m3058d(int i) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i != -1) {
            C18702a.C18757n.C18760b m3331a = this.f64310b.m3331a(i);
            String m3301a = this.f64309a.m3301a(m3331a.f64075c);
            C18702a.C18757n.C18760b.EnumC18763b enumC18763b = m3331a.f64076d;
            C18524p.m3851a(enumC18763b);
            int i2 = C18815a.f64311a[enumC18763b.ordinal()];
            if (i2 == 1) {
                linkedList2.addFirst(m3301a);
            } else if (i2 == 2) {
                linkedList.addFirst(m3301a);
            } else if (i2 == 3) {
                linkedList2.addFirst(m3301a);
                z = true;
            }
            i = m3331a.f64074b;
        }
        return new C20125s<>(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: a */
    public final String mo2927a(int i) {
        String m3301a = this.f64309a.m3301a(i);
        C18524p.m3843b(m3301a, "strings.getString(index)");
        return m3301a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: b */
    public final String mo2926b(int i) {
        C20125s<List<String>, List<String>, Boolean> m3058d = m3058d(i);
        List<String> list = m3058d.f66525a;
        String a = C18282n.m4148a(m3058d.f66526b, ".", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        if (list.isEmpty()) {
            return a;
        }
        return C18282n.m4148a(list, "/", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + '/' + a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: c */
    public final boolean mo2925c(int i) {
        return m3058d(i).f66527c.booleanValue();
    }
}
