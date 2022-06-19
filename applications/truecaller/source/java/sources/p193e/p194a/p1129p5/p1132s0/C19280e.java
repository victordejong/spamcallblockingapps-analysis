package p193e.p194a.p1129p5.p1132s0;

import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import s1.a.c;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.e */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e.class */
public final class C19280e<T> {

    /* renamed from: a */
    public Integer f53682a;

    /* renamed from: b */
    public final AbstractC19281a<T> f53683b;

    /* renamed from: c */
    public final String f53684c;

    /* renamed from: d */
    public final c<?> f53685d;

    /* renamed from: e */
    public final T f53686e;

    /* renamed from: e.a.p5.s0.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e$a.class */
    public interface AbstractC19281a<T> {
        /* renamed from: a */
        T mo13704a(Cursor cursor);
    }

    /* renamed from: e.a.p5.s0.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e$b.class */
    public static final class C19282b implements AbstractC19281a<String> {
        public C19282b() {
            C19280e.this = r4;
        }

        @Override // p193e.p194a.p1129p5.p1132s0.C19280e.AbstractC19281a
        /* renamed from: a */
        public String mo13704a(Cursor cursor) {
            l.e(cursor, "cursor");
            return cursor.getString(C19280e.this.m13706a(cursor));
        }
    }

    /* renamed from: e.a.p5.s0.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e$c.class */
    public static final class C19283c implements AbstractC19281a<Integer> {
        public C19283c() {
            C19280e.this = r4;
        }

        @Override // p193e.p194a.p1129p5.p1132s0.C19280e.AbstractC19281a
        /* renamed from: a */
        public Integer mo13704a(Cursor cursor) {
            l.e(cursor, "cursor");
            return Integer.valueOf(cursor.getInt(C19280e.this.m13706a(cursor)));
        }
    }

    /* renamed from: e.a.p5.s0.e$d */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/e$d.class */
    public static final class C19284d implements AbstractC19281a<Long> {
        public C19284d() {
            C19280e.this = r4;
        }

        @Override // p193e.p194a.p1129p5.p1132s0.C19280e.AbstractC19281a
        /* renamed from: a */
        public Long mo13704a(Cursor cursor) {
            l.e(cursor, "cursor");
            return Long.valueOf(cursor.getLong(C19280e.this.m13706a(cursor)));
        }
    }

    public C19280e(String str, c<?> cVar, T t) {
        C19282b c19282b;
        l.e(str, AnalyticsConstants.NAME);
        l.e(cVar, "type");
        this.f53684c = str;
        this.f53685d = cVar;
        this.f53686e = t;
        if (l.a(cVar, d0.a(String.class))) {
            c19282b = new C19282b();
        } else if (l.a(cVar, d0.a(Integer.TYPE))) {
            c19282b = new C19283c();
        } else if (!l.a(cVar, d0.a(Long.TYPE))) {
            throw new IllegalArgumentException("Unsupported variable type " + cVar);
        } else {
            c19282b = new C19284d();
        }
        this.f53683b = c19282b;
    }

    /* renamed from: a */
    public final int m13706a(Cursor cursor) {
        Integer num = this.f53682a;
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(cursor.getColumnIndexOrThrow(this.f53684c));
            this.f53682a = num2;
        }
        return num2.intValue();
    }

    /* renamed from: b */
    public final T m13705b(Cursor cursor, s1.a.l<?> lVar) {
        l.e(cursor, "cursor");
        l.e(lVar, "property");
        return cursor.isNull(m13706a(cursor)) ? this.f53686e : this.f53683b.mo13704a(cursor);
    }
}
