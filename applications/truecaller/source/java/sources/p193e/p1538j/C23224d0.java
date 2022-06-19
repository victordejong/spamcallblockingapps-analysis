package p193e.p1538j;

import com.facebook.FacebookRequestError;
import com.tenor.android.core.constant.StringConstant;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0005H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/facebook/FacebookGraphResponseException;", "Lcom/facebook/FacebookException;", "graphResponse", "Lcom/facebook/GraphResponse;", "errorMessage", "", "(Lcom/facebook/GraphResponse;Ljava/lang/String;)V", "getGraphResponse", "()Lcom/facebook/GraphResponse;", "toString", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.d0 */
/* loaded from: classes2-dex2jar.jar:e/j/d0.class */
public final class C23224d0 extends C23222c0 {

    /* renamed from: a */
    public final C23244l0 f64288a;

    public C23224d0(C23244l0 c23244l0, String str) {
        super(str);
        this.f64288a = c23244l0;
    }

    @Override // p193e.p1538j.C23222c0, java.lang.Throwable
    public String toString() {
        C23244l0 c23244l0 = this.f64288a;
        FacebookRequestError facebookRequestError = c23244l0 == null ? null : c23244l0.f64335e;
        StringBuilder sb = new StringBuilder();
        sb.append("{FacebookGraphResponseException: ");
        l.d(sb, "StringBuilder().append(\"{FacebookGraphResponseException: \")");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(StringConstant.SPACE);
        }
        if (facebookRequestError != null) {
            sb.append("httpResponseCode: ");
            sb.append(facebookRequestError.f2529a);
            sb.append(", facebookErrorCode: ");
            sb.append(facebookRequestError.f2530b);
            sb.append(", facebookErrorType: ");
            sb.append(facebookRequestError.f2532d);
            sb.append(", message: ");
            sb.append(facebookRequestError.m42021a());
            sb.append("}");
        }
        String sb2 = sb.toString();
        l.d(sb2, "errorStringBuilder.toString()");
        return sb2;
    }
}
