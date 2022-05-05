package p081h.p154f;

import com.facebook.internal.C2455m;
import com.facebook.internal.p042k0.p044d.C2449b;
import java.util.Random;
/* renamed from: h.f.k */
/* loaded from: classes-dex2jar.jar:h/f/k.class */
public class C6131k extends RuntimeException {

    /* renamed from: h.f.k$a */
    /* loaded from: classes-dex2jar.jar:h/f/k$a.class */
    public class C6132a implements C2455m.AbstractC2458c {

        /* renamed from: a */
        public final /* synthetic */ String f15241a;

        public C6132a(C6131k kVar, String str) {
            this.f15241a = str;
        }

        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                try {
                    C2449b.m34693a(this.f15241a);
                } catch (Exception e) {
                }
            }
        }
    }

    public C6131k() {
    }

    public C6131k(String str) {
        super(str);
        Random random = new Random();
        if (str != null && C6135n.m23730u() && random.nextInt(100) > 50) {
            C2455m.m34685a(C2455m.EnumC2459d.ErrorReport, new C6132a(this, str));
        }
    }

    public C6131k(String str, Throwable th) {
        super(str, th);
    }

    public C6131k(String str, Object... objArr) {
        this(String.format(str, objArr));
    }

    public C6131k(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
