package p193e.p194a.p294b.p354l;

import p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a;
/* renamed from: e.a.b.l.q */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/q.class */
public abstract class AbstractC8042q<T> {

    /* renamed from: a */
    public final T f24773a;

    /* renamed from: b */
    public final String f24774b;

    /* renamed from: e.a.b.l.q$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/q$a.class */
    public static final class C8043a<T> extends AbstractC8042q<T> {

        /* renamed from: c */
        public final Integer f24775c;

        /* renamed from: d */
        public final AbstractC7602a.AbstractC7604b<T> f24776d;

        public C8043a() {
            this(null, null, null, 7);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8043a(java.lang.String r6, java.lang.Integer r7, p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a.AbstractC7604b r8, int r9) {
            /*
                r5 = this;
                r0 = r9
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L9
                r0 = 0
                r6 = r0
            L9:
                r0 = r9
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L12
                r0 = 0
                r7 = r0
            L12:
                r0 = r9
                r1 = 4
                r0 = r0 & r1
                if (r0 == 0) goto L1b
                r0 = 0
                r8 = r0
            L1b:
                r0 = r5
                r1 = 0
                r2 = r6
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r7
                r0.f24775c = r1
                r0 = r5
                r1 = r8
                r0.f24776d = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p354l.AbstractC8042q.C8043a.<init>(java.lang.String, java.lang.Integer, e.a.b.a.a.b.d.a$b, int):void");
        }
    }

    /* renamed from: e.a.b.l.q$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/q$b.class */
    public static final class C8044b<T> extends AbstractC8042q<T> {
        public C8044b() {
            super(null, null, 3);
        }
    }

    /* renamed from: e.a.b.l.q$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/q$c.class */
    public static final class C8045c<T> extends AbstractC8042q<T> {
        public C8045c(T t) {
            super(t, null, 2);
        }
    }

    public AbstractC8042q(Object obj, String str, int i) {
        obj = (i & 1) != 0 ? null : obj;
        str = (i & 2) != 0 ? null : str;
        this.f24773a = (T) obj;
        this.f24774b = str;
    }
}
