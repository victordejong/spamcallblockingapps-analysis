package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import p000a.AbstractC0006d;
import p000a.C0005c;
/* renamed from: okhttp3.q */
/* loaded from: classes-dex2jar.jar:okhttp3/q.class */
public final class C5536q extends AbstractC5402ab {

    /* renamed from: a */
    private static final C5546v f23116a = C5546v.m209a("application/x-www-form-urlencoded");

    /* renamed from: b */
    private final List<String> f23117b;

    /* renamed from: c */
    private final List<String> f23118c;

    /* renamed from: okhttp3.q$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/q$a.class */
    public static final class C5537a {

        /* renamed from: a */
        private final List<String> f23119a;

        /* renamed from: b */
        private final List<String> f23120b;

        /* renamed from: c */
        private final Charset f23121c;

        public C5537a() {
            this(null);
        }

        public C5537a(Charset charset) {
            this.f23119a = new ArrayList();
            this.f23120b = new ArrayList();
            this.f23121c = charset;
        }

        /* renamed from: a */
        public C5537a m289a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f23119a.add(C5541t.m261a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f23121c));
            this.f23120b.add(C5541t.m261a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f23121c));
            return this;
        }

        /* renamed from: a */
        public C5536q m290a() {
            return new C5536q(this.f23119a, this.f23120b);
        }

        /* renamed from: b */
        public C5537a m288b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f23119a.add(C5541t.m261a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f23121c));
            this.f23120b.add(C5541t.m261a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f23121c));
            return this;
        }
    }

    C5536q(List<String> list, List<String> list2) {
        this.f23117b = C5449c.m658a(list);
        this.f23118c = C5449c.m658a(list2);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    private long m291a(@Nullable AbstractC0006d abstractC0006d, boolean z) {
        char c = 0;
        C0005c c0005c = z ? new C0005c() : abstractC0006d.mo22495c();
        int size = this.f23117b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                c0005c.mo22508i(38);
            }
            c0005c.mo22513b(this.f23117b.get(i));
            c0005c.mo22508i(61);
            c0005c.mo22513b(this.f23118c.get(i));
        }
        if (z) {
            c = c0005c.m22562b();
            c0005c.m22544q();
        }
        return c;
    }

    @Override // okhttp3.AbstractC5402ab
    /* renamed from: a */
    public C5546v mo60a() {
        return f23116a;
    }

    @Override // okhttp3.AbstractC5402ab
    /* renamed from: a */
    public void mo59a(AbstractC0006d abstractC0006d) {
        m291a(abstractC0006d, false);
    }

    @Override // okhttp3.AbstractC5402ab
    /* renamed from: b */
    public long mo58b() {
        return m291a((AbstractC0006d) null, true);
    }
}
