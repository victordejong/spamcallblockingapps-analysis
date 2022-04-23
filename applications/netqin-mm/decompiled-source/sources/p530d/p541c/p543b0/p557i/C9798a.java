package p530d.p541c.p543b0.p557i;

import p530d.p541c.p542a0.AbstractC9646i;
/* renamed from: d.c.b0.i.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/a.class */
public class C9798a<T> {

    /* renamed from: a */
    public final int f37002a;

    /* renamed from: b */
    public final Object[] f37003b;

    /* renamed from: c */
    public Object[] f37004c;

    /* renamed from: d */
    public int f37005d;

    /* renamed from: d.c.b0.i.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/i/a$a.class */
    public interface AbstractC9799a<T> extends AbstractC9646i<T> {
        @Override // p530d.p541c.p542a0.AbstractC9646i
        boolean test(T t);
    }

    public C9798a(int i) {
        this.f37002a = i;
        Object[] objArr = new Object[i + 1];
        this.f37003b = objArr;
        this.f37004c = objArr;
    }

    /* renamed from: a */
    public void m2015a(AbstractC9799a<? super T> aVar) {
        Object obj;
        int i = this.f37002a;
        for (Object[] objArr = this.f37003b; objArr != null; objArr = (Object[]) objArr[i]) {
            for (int i2 = 0; i2 < i && (obj = objArr[i2]) != null; i2++) {
                if (aVar.test(obj)) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void m2014a(T t) {
        int i = this.f37002a;
        int i2 = this.f37005d;
        int i3 = i2;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.f37004c[i] = objArr;
            this.f37004c = objArr;
            i3 = 0;
        }
        this.f37004c[i3] = t;
        this.f37005d = i3 + 1;
    }
}
