package kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018�� \u00172\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0017B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020��H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lkotlin/KotlinVersion;", "", "major", "", "minor", "(II)V", "patch", "(III)V", "getMajor", "()I", "getMinor", "getPatch", "version", "compareTo", "other", "equals", "", "", "hashCode", "isAtLeast", "toString", "", "versionOf", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.f */
/* loaded from: classes5-dex2jar.jar:kotlin/f.class */
public final class C18356f implements Comparable<C18356f> {

    /* renamed from: c */
    private final int f63454c;

    /* renamed from: d */
    private final int f63455d;

    /* renamed from: e */
    private final int f63456e;

    /* renamed from: f */
    private final int f63457f;

    /* renamed from: b */
    public static final C18357a f63453b = new C18357a(null);

    /* renamed from: a */
    public static final C18356f f63452a = C18366g.m4049a();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lkotlin/KotlinVersion$Companion;", "", "()V", "CURRENT", "Lkotlin/KotlinVersion;", "MAX_COMPONENT_VALUE", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/f$a.class */
    public static final class C18357a {
        private C18357a() {
        }

        public /* synthetic */ C18357a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C18356f(int i, int i2) {
        this(i, i2, 0);
    }

    public C18356f(int i, int i2, int i3) {
        this.f63455d = i;
        this.f63456e = i2;
        this.f63457f = i3;
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            this.f63454c = (i << 16) + (i2 << 8) + i3;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C18356f c18356f) {
        C18356f other = c18356f;
        C18524p.m3840d(other, "other");
        return this.f63454c - other.f63454c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof C18356f)) {
            obj2 = null;
        }
        C18356f c18356f = (C18356f) obj2;
        return c18356f != null && this.f63454c == c18356f.f63454c;
    }

    public final int hashCode() {
        return this.f63454c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f63455d);
        sb.append('.');
        sb.append(this.f63456e);
        sb.append('.');
        sb.append(this.f63457f);
        return sb.toString();
    }
}
