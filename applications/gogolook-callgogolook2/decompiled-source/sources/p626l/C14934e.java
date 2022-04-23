package p626l;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018�� \u00172\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0017B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020��H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m815d2 = {"Lkotlin/KotlinVersion;", "", "major", "", "minor", "(II)V", "patch", "(III)V", "getMajor", "()I", "getMinor", "getPatch", "version", "compareTo", "other", "equals", "", "", "hashCode", "isAtLeast", "toString", "", "versionOf", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.e */
/* loaded from: classes3-dex2jar.jar:l/e.class */
public final class C14934e implements Comparable<C14934e> {

    /* renamed from: e */
    public static final C14934e f32974e = new C14934e(1, 3, 72);

    /* renamed from: a */
    public final int f32975a;

    /* renamed from: b */
    public final int f32976b;

    /* renamed from: c */
    public final int f32977c;

    /* renamed from: d */
    public final int f32978d;

    /* renamed from: l.e$a */
    /* loaded from: classes3-dex2jar.jar:l/e$a.class */
    public static final class C14935a {
        public C14935a() {
        }

        public /* synthetic */ C14935a(C15145g gVar) {
            this();
        }
    }

    static {
        new C14935a(null);
    }

    public C14934e(int i, int i2, int i3) {
        this.f32976b = i;
        this.f32977c = i2;
        this.f32978d = i3;
        this.f32975a = m765a(this.f32976b, this.f32977c, this.f32978d);
    }

    /* renamed from: a */
    public final int m765a(int i, int i2, int i3) {
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    /* renamed from: a */
    public int compareTo(C14934e eVar) {
        C15149k.m377b(eVar, "other");
        return this.f32975a - eVar.f32975a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof C14934e)) {
            obj2 = null;
        }
        C14934e eVar = (C14934e) obj2;
        if (eVar == null) {
            return false;
        }
        if (this.f32975a != eVar.f32975a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f32975a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f32976b);
        sb.append('.');
        sb.append(this.f32977c);
        sb.append('.');
        sb.append(this.f32978d);
        return sb.toString();
    }
}
