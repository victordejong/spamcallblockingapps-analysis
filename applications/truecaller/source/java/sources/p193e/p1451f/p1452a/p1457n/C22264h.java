package p193e.p1451f.p1452a.p1457n;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.n.h */
/* loaded from: classes-dex2jar.jar:e/f/a/n/h.class */
public final class C22264h<T> {

    /* renamed from: e */
    public static final AbstractC22266b<Object> f61896e = new C22265a();

    /* renamed from: a */
    public final T f61897a;

    /* renamed from: b */
    public final AbstractC22266b<T> f61898b;

    /* renamed from: c */
    public final String f61899c;

    /* renamed from: d */
    public volatile byte[] f61900d;

    /* renamed from: e.f.a.n.h$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/h$a.class */
    public class C22265a implements AbstractC22266b<Object> {
        @Override // p193e.p1451f.p1452a.p1457n.C22264h.AbstractC22266b
        /* renamed from: a */
        public void mo8201a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* renamed from: e.f.a.n.h$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/h$b.class */
    public interface AbstractC22266b<T> {
        /* renamed from: a */
        void mo8201a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    public C22264h(String str, T t, AbstractC22266b<T> abstractC22266b) {
        if (!TextUtils.isEmpty(str)) {
            this.f61899c = str;
            this.f61897a = t;
            Objects.requireNonNull(abstractC22266b, "Argument must not be null");
            this.f61898b = abstractC22266b;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    /* renamed from: a */
    public static <T> C22264h<T> m8362a(String str, T t) {
        return new C22264h<>(str, t, f61896e);
    }

    public boolean equals(Object obj) {
        if (obj instanceof C22264h) {
            return this.f61899c.equals(((C22264h) obj).f61899c);
        }
        return false;
    }

    public int hashCode() {
        return this.f61899c.hashCode();
    }

    public String toString() {
        return C22128a.m8626f(C22128a.m8728C("Option{key='"), this.f61899c, '\'', '}');
    }
}
