package p193e.p194a.p1365y.p1387e;

import java.io.Serializable;
/* renamed from: e.a.y.e.i */
/* loaded from: classes9-dex2jar.jar:e/a/y/e/i.class */
public class C21733i implements Serializable {

    /* renamed from: a */
    public final String f60541a;

    public C21733i(String str) {
        this.f60541a = str;
    }

    /* renamed from: a */
    public static C21733i m9144a(char c) {
        return new C21733i(Character.toString(c));
    }

    /* renamed from: b */
    public static C21733i m9143b(String str) {
        return new C21733i(str);
    }

    /* renamed from: c */
    public static C21733i m9142c(int i) {
        return new C21733i(Character.charCount(i) == 1 ? String.valueOf(i) : new String(Character.toChars(i)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof C21733i) && this.f60541a.contentEquals(((C21733i) obj).f60541a);
    }

    public int hashCode() {
        return this.f60541a.hashCode();
    }
}
