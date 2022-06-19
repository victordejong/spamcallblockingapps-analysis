package p193e.p1538j;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\u0018�� \r2\u00020\u0001:\u0001\rB!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/facebook/FacebookDialogException;", "Lcom/facebook/FacebookException;", "message", "", "errorCode", "", "failingUrl", "(Ljava/lang/String;ILjava/lang/String;)V", "getErrorCode", "()I", "getFailingUrl", "()Ljava/lang/String;", "toString", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.b0 */
/* loaded from: classes2-dex2jar.jar:e/j/b0.class */
public final class C23220b0 extends C23222c0 {

    /* renamed from: a */
    public final int f64274a;

    /* renamed from: b */
    public final String f64275b;

    public C23220b0(String str, int i, String str2) {
        super(str);
        this.f64274a = i;
        this.f64275b = str2;
    }

    @Override // p193e.p1538j.C23222c0, java.lang.Throwable
    public String toString() {
        StringBuilder m8696K = C22128a.m8696K("{FacebookDialogException: ", "errorCode: ");
        m8696K.append(this.f64274a);
        m8696K.append(", message: ");
        m8696K.append(getMessage());
        m8696K.append(", url: ");
        m8696K.append(this.f64275b);
        m8696K.append("}");
        String sb = m8696K.toString();
        l.d(sb, "StringBuilder()\n        .append(\"{FacebookDialogException: \")\n        .append(\"errorCode: \")\n        .append(errorCode)\n        .append(\", message: \")\n        .append(message)\n        .append(\", url: \")\n        .append(failingUrl)\n        .append(\"}\")\n        .toString()");
        return sb;
    }
}
