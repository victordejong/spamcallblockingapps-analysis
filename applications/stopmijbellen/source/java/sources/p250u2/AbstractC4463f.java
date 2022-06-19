package p250u2;

import com.google.auto.value.AutoValue;
import java.util.HashMap;
import java.util.Map;
import p250u2.C4453a;
@AutoValue
/* renamed from: u2.f */
/* loaded from: classes-dex2jar.jar:u2/f.class */
public abstract class AbstractC4463f {

    @AutoValue.Builder
    /* renamed from: u2.f$a */
    /* loaded from: classes-dex2jar.jar:u2/f$a.class */
    public static abstract class AbstractC4464a {
        /* renamed from: a */
        public final AbstractC4464a m896a(String str, String str2) {
            mo894c().put(str, str2);
            return this;
        }

        /* renamed from: b */
        public abstract AbstractC4463f mo895b();

        /* renamed from: c */
        public abstract Map<String, String> mo894c();
    }

    /* renamed from: a */
    public final String m905a(String str) {
        String str2 = mo904b().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: b */
    public abstract Map<String, String> mo904b();

    /* renamed from: c */
    public abstract Integer mo903c();

    /* renamed from: d */
    public abstract C4462e mo902d();

    /* renamed from: e */
    public abstract long mo901e();

    /* renamed from: f */
    public final int m900f(String str) {
        String str2 = mo904b().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* renamed from: g */
    public abstract String mo899g();

    /* renamed from: h */
    public abstract long mo898h();

    /* renamed from: i */
    public AbstractC4464a m897i() {
        C4453a.C4455b c4455b = new C4453a.C4455b();
        c4455b.m907f(mo899g());
        c4455b.f13826b = mo903c();
        c4455b.m909d(mo902d());
        c4455b.m908e(mo901e());
        c4455b.m906g(mo898h());
        c4455b.f13830f = new HashMap(mo904b());
        return c4455b;
    }
}
