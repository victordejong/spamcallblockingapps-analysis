package p193e.p1538j;

import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.C1210j;
import com.facebook.internal.p037u0.p041n.C1224d;
import java.util.Random;
import kotlin.Metadata;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0016\u0018�� \u00112\u00060\u0001j\u0002`\u0002:\u0001\u0011B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0011\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B)\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u001b\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eB\u0011\b\u0016\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0005H\u0016¨\u0006\u0012"}, d2 = {"Lcom/facebook/FacebookException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "()V", "message", "", "(Ljava/lang/String;)V", "format", "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "throwable", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "(Ljava/lang/Throwable;)V", "toString", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.c0 */
/* loaded from: classes2-dex2jar.jar:e/j/c0.class */
public class C23222c0 extends RuntimeException {
    public C23222c0() {
    }

    public C23222c0(final String str) {
        super(str);
        Random random = new Random();
        if (str != null) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C23228f0.m7345j() || random.nextInt(100) <= 50) {
                return;
            }
            C1115a0 c1115a0 = C1115a0.f3048a;
            C1115a0.m41752a(C1115a0.EnumC1117b.ErrorReport, new C1115a0.AbstractC1116a() { // from class: e.j.e
                @Override // com.facebook.internal.C1115a0.AbstractC1116a
                /* renamed from: a */
                public final void mo7331a(boolean z) {
                    String str2 = str;
                    if (z) {
                        try {
                            C1224d c1224d = new C1224d(str2);
                            if (!((c1224d.f3305b == null || c1224d.f3306c == null) ? false : true)) {
                                return;
                            }
                            C1210j.m41628f(c1224d.f3304a, c1224d.toString());
                        } catch (Exception e) {
                        }
                    }
                }
            });
        }
    }

    public C23222c0(String str, Throwable th) {
        super(str, th);
    }

    public C23222c0(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        String message = getMessage();
        String str = message;
        if (message == null) {
            str = "";
        }
        return str;
    }
}
