package p306z5;

import com.google.android.gms.internal.ads.C1676a;
import com.google.auto.value.AutoValue;
import p237t.C4350g;
@AutoValue
/* renamed from: z5.d */
/* loaded from: classes-dex2jar.jar:z5/d.class */
public abstract class AbstractC5107d {

    /* renamed from: a */
    public static final /* synthetic */ int f15478a = 0;

    @AutoValue.Builder
    /* renamed from: z5.d$a */
    /* loaded from: classes-dex2jar.jar:z5/d$a.class */
    public static abstract class AbstractC5108a {
        /* renamed from: a */
        public abstract AbstractC5107d mo19a();

        /* renamed from: b */
        public abstract AbstractC5108a mo18b(int i);
    }

    static {
        Long l = 0L;
        C4350g.m1023a(1, "Null registrationStatus");
        String str = l == null ? " expiresInSecs" : "";
        String str2 = str;
        if (l == null) {
            str2 = C1676a.m4789h(str, " tokenCreationEpochInSecs");
        }
        if (str2.isEmpty()) {
            l.longValue();
            l.longValue();
            return;
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str2));
    }

    /* renamed from: a */
    public abstract String mo30a();

    /* renamed from: b */
    public abstract long mo29b();

    /* renamed from: c */
    public abstract String mo28c();

    /* renamed from: d */
    public abstract String mo27d();

    /* renamed from: e */
    public abstract String mo26e();

    /* renamed from: f */
    public abstract int mo25f();

    /* renamed from: g */
    public abstract long mo24g();

    /* renamed from: h */
    public boolean m23h() {
        return mo25f() == 5;
    }

    /* renamed from: i */
    public boolean m22i() {
        int i = ((C5102a) this).f15460c;
        boolean z = true;
        if (i != 2) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m21j() {
        return mo25f() == 4;
    }

    /* renamed from: k */
    public abstract AbstractC5108a mo20k();
}
