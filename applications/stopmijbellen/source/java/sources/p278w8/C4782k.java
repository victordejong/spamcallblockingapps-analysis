package p278w8;

import com.raizlabs.android.dbflow.config.C2120f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p235s8.AbstractC4332g;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
/* renamed from: w8.k */
/* loaded from: classes2-dex2jar.jar:w8/k.class */
public class C4782k<T> extends AbstractC4772c implements AbstractC4654a {

    /* renamed from: f */
    public AbstractC4332g f14705f;

    /* renamed from: g */
    public boolean f14706g;

    /* renamed from: w8.k$b */
    /* loaded from: classes2-dex2jar.jar:w8/k$b.class */
    public static class C4784b<T> extends AbstractC4772c implements AbstractC4654a {

        /* renamed from: f */
        public List<T> f14707f;

        public C4784b(C4782k c4782k, Object obj, boolean z, Object[] objArr, C4783a c4783a) {
            super(c4782k.f14687c);
            ArrayList arrayList = new ArrayList();
            this.f14707f = arrayList;
            arrayList.add(obj);
            Collections.addAll(this.f14707f, objArr);
            this.f14685a = String.format(" %1s ", z ? "IN" : "NOT IN");
        }

        @Override // p267v8.AbstractC4654a
        /* renamed from: b */
        public String mo238b() {
            C4655b c4655b = new C4655b();
            mo465c(c4655b);
            return c4655b.mo238b();
        }

        @Override // p278w8.AbstractC4787n
        /* renamed from: c */
        public void mo465c(C4655b c4655b) {
            c4655b.f14350a.append((Object) mo466a());
            c4655b.f14350a.append((Object) this.f14685a);
            c4655b.f14350a.append((Object) "(");
            List<T> list = this.f14707f;
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (T t : list) {
                if (z) {
                    z = false;
                } else {
                    sb.append((CharSequence) ",");
                }
                sb.append(mo470h(t, false));
            }
            c4655b.f14350a.append((Object) sb.toString());
            c4655b.f14350a.append((Object) ")");
        }
    }

    public C4782k(C4779j c4779j) {
        super(c4779j);
    }

    public C4782k(C4779j c4779j, AbstractC4332g abstractC4332g, boolean z) {
        super(c4779j);
        this.f14705f = abstractC4332g;
        this.f14706g = z;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        C4655b c4655b = new C4655b();
        mo465c(c4655b);
        return c4655b.mo238b();
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: c */
    public void mo465c(C4655b c4655b) {
        c4655b.f14350a.append((Object) mo466a());
        c4655b.f14350a.append((Object) this.f14685a);
        if (this.f14689e) {
            c4655b.f14350a.append((Object) mo470h(this.f14686b, true));
        }
    }

    @Override // p278w8.AbstractC4772c, p278w8.AbstractC4787n
    /* renamed from: d */
    public AbstractC4787n mo464d(String str) {
        this.f14688d = str;
        return this;
    }

    @Override // p278w8.AbstractC4772c
    /* renamed from: h */
    public String mo470h(Object obj, boolean z) {
        AbstractC4332g abstractC4332g = this.f14705f;
        if (abstractC4332g != null) {
            Object obj2 = obj;
            try {
                if (this.f14706g) {
                    obj2 = abstractC4332g.mo1095a(obj);
                }
            } catch (ClassCastException e) {
                C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7694b;
                C2120f.m3889a(enumC2122b, "Value passed to operation is not valid type for TypeConverter in the column. Preserving value " + obj + " to be used as is.", null);
                obj2 = obj;
            }
            return AbstractC4772c.m483i(obj2, z, false);
        }
        return super.mo470h(obj, z);
    }

    @SafeVarargs
    /* renamed from: j */
    public final C4784b<T> m469j(T t, T... tArr) {
        return new C4784b<>(this, t, true, tArr, null);
    }
}
