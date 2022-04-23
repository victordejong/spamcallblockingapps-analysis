package kotlin.reflect.jvm.internal.impl.b.b;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.i;
import kotlin.a.l;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/a.class */
public abstract class a {

    /* renamed from: d  reason: collision with root package name */
    public static final C0654a f37139d = new C0654a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int[] f37140a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Integer> f37141b;
    public final int e;
    public final int f;
    public final int g;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/a$a.class */
    public static final class C0654a {
        private C0654a() {
        }

        public /* synthetic */ C0654a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(int... asList) {
        z zVar;
        p.d(asList, "numbers");
        this.f37140a = asList;
        Integer a2 = i.a(asList, 0);
        int i = -1;
        this.e = a2 == null ? -1 : a2.intValue();
        Integer a3 = i.a(asList, 1);
        this.f = a3 == null ? -1 : a3.intValue();
        Integer a4 = i.a(asList, 2);
        if (a4 != null) {
            i = a4.intValue();
        }
        this.g = i;
        if (asList.length > 3) {
            p.d(asList, "$this$asList");
            zVar = n.h((Iterable) new l.a(asList).subList(3, asList.length));
        } else {
            zVar = z.f36608a;
        }
        this.f37141b = zVar;
    }

    public final boolean a(int i, int i2, int i3) {
        int i4 = this.e;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.f;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.g >= i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(a ourVersion) {
        p.d(ourVersion, "ourVersion");
        int i = this.e;
        return i == 0 ? ourVersion.e == 0 && this.f == ourVersion.f : i == ourVersion.e && this.f <= ourVersion.f;
    }

    public boolean equals(Object obj) {
        if (obj == null || !p.a(getClass(), obj.getClass())) {
            return false;
        }
        a aVar = (a) obj;
        return this.e == aVar.e && this.f == aVar.f && this.g == aVar.g && p.a(this.f37141b, aVar.f37141b);
    }

    public int hashCode() {
        int i = this.e;
        int i2 = i + (i * 31) + this.f;
        int i3 = i2 + (i2 * 31) + this.g;
        return i3 + (i3 * 31) + this.f37141b.hashCode();
    }

    public String toString() {
        int[] iArr = this.f37140a;
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
        return arrayList2.isEmpty() ? "unknown" : n.a(arrayList2, ".", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
    }
}
