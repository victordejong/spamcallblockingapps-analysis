package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18276l;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/a.class */
public abstract class AbstractC18806a {

    /* renamed from: d */
    public static final C18807a f64260d = new C18807a(null);

    /* renamed from: a */
    private final int[] f64261a;

    /* renamed from: b */
    private final List<Integer> f64262b;

    /* renamed from: e */
    public final int f64263e;

    /* renamed from: f */
    public final int f64264f;

    /* renamed from: g */
    public final int f64265g;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/a$a.class */
    public static final class C18807a {
        private C18807a() {
        }

        public /* synthetic */ C18807a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AbstractC18806a(int... asList) {
        C18297z c18297z;
        C18524p.m3840d(asList, "numbers");
        this.f64261a = asList;
        Integer a = C18273i.m4207a(asList, 0);
        this.f64263e = a == null ? -1 : a.intValue();
        Integer a2 = C18273i.m4207a(asList, 1);
        this.f64264f = a2 == null ? -1 : a2.intValue();
        Integer a3 = C18273i.m4207a(asList, 2);
        this.f64265g = a3 == null ? -1 : a3.intValue();
        if (asList.length > 3) {
            C18524p.m3840d(asList, "$this$asList");
            c18297z = C18282n.m4118h((Iterable) new C18276l.C18277a(asList).subList(3, asList.length));
        } else {
            c18297z = C18297z.f63400a;
        }
        this.f64262b = c18297z;
    }

    /* renamed from: a */
    public final boolean m3071a(int i, int i2, int i3) {
        int i4 = this.f64263e;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.f64264f;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.f64265g >= i3;
    }

    /* renamed from: a */
    public final boolean m3070a(AbstractC18806a ourVersion) {
        C18524p.m3840d(ourVersion, "ourVersion");
        int i = this.f64263e;
        return i == 0 ? ourVersion.f64263e == 0 && this.f64264f == ourVersion.f64264f : i == ourVersion.f64263e && this.f64264f <= ourVersion.f64264f;
    }

    public boolean equals(Object obj) {
        if (obj == null || !C18524p.m3850a(getClass(), obj.getClass())) {
            return false;
        }
        AbstractC18806a abstractC18806a = (AbstractC18806a) obj;
        return this.f64263e == abstractC18806a.f64263e && this.f64264f == abstractC18806a.f64264f && this.f64265g == abstractC18806a.f64265g && C18524p.m3850a(this.f64262b, abstractC18806a.f64262b);
    }

    public int hashCode() {
        int i = this.f64263e;
        int i2 = i + (i * 31) + this.f64264f;
        int i3 = i2 + (i2 * 31) + this.f64265g;
        return i3 + (i3 * 31) + this.f64262b.hashCode();
    }

    public String toString() {
        int[] iArr = this.f64261a;
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (!(i2 != -1)) {
                break;
            }
            arrayList.add(Integer.valueOf(i2));
        }
        ArrayList arrayList2 = arrayList;
        return arrayList2.isEmpty() ? "unknown" : C18282n.m4148a(arrayList2, ".", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
    }
}
