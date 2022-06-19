package p278w8;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.util.regex.Pattern;
import p124i4.C3102d;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
/* renamed from: w8.j */
/* loaded from: classes2-dex2jar.jar:w8/j.class */
public class C4779j implements AbstractC4654a {

    /* renamed from: a */
    public final String f14697a;

    /* renamed from: b */
    public final String f14698b;

    /* renamed from: c */
    public final String f14699c;

    /* renamed from: d */
    public final boolean f14700d;

    /* renamed from: e */
    public final boolean f14701e;

    /* renamed from: w8.j$b */
    /* loaded from: classes2-dex2jar.jar:w8/j$b.class */
    public static class C4781b {

        /* renamed from: a */
        public final String f14702a;

        /* renamed from: b */
        public boolean f14703b = true;

        /* renamed from: c */
        public boolean f14704c = true;

        public C4781b(String str) {
            this.f14702a = str;
        }

        /* renamed from: a */
        public C4779j m471a() {
            return new C4779j(this, null);
        }
    }

    public C4779j(C4781b c4781b, C4780a c4780a) {
        if (c4781b.f14703b) {
            this.f14697a = C4655b.m674h(c4781b.f14702a);
        } else {
            this.f14697a = c4781b.f14702a;
        }
        Pattern pattern = C4655b.f14349b;
        this.f14698b = null;
        if (C3102d.m2651A(null)) {
            this.f14699c = null;
        } else {
            this.f14699c = null;
        }
        this.f14700d = c4781b.f14704c;
        this.f14701e = true;
    }

    /* renamed from: e */
    public static C4781b m472e(String str) {
        C4781b c4781b = new C4781b(str);
        c4781b.f14703b = false;
        c4781b.f14704c = false;
        return c4781b;
    }

    /* renamed from: a */
    public String m475a() {
        return (!C3102d.m2651A(this.f14698b) || !this.f14701e) ? this.f14698b : C4655b.m675g(this.f14698b);
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        return C3102d.m2651A(this.f14698b) ? m475a() : C3102d.m2651A(this.f14697a) ? m474c() : "";
    }

    /* renamed from: c */
    public String m474c() {
        StringBuilder sb = new StringBuilder();
        sb.append(C3102d.m2651A(this.f14699c) ? C0082b.m8754h(new StringBuilder(), this.f14699c, ".") : "");
        sb.append((!C3102d.m2651A(this.f14697a) || !this.f14700d) ? this.f14697a : C4655b.m675g(this.f14697a));
        return sb.toString();
    }

    /* renamed from: d */
    public String m473d() {
        String m474c = m474c();
        String str = m474c;
        if (C3102d.m2651A(this.f14698b)) {
            StringBuilder m7624k = C0608b.m7624k(m474c, " AS ");
            m7624k.append(m475a());
            str = m7624k.toString();
        }
        String str2 = str;
        if (C3102d.m2651A(null)) {
            str2 = C0082b.m8755g(null, " ", str);
        }
        return str2;
    }

    public String toString() {
        return m473d();
    }
}
