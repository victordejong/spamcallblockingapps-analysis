package p193e.p1538j;

import com.facebook.FacebookRequestError;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018�� \n2\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/facebook/FacebookServiceException;", "Lcom/facebook/FacebookException;", "requestError", "Lcom/facebook/FacebookRequestError;", "errorMessage", "", "(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V", "getRequestError", "()Lcom/facebook/FacebookRequestError;", "toString", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.h0 */
/* loaded from: classes2-dex2jar.jar:e/j/h0.class */
public final class C23234h0 extends C23222c0 {

    /* renamed from: a */
    public final FacebookRequestError f64314a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C23234h0(FacebookRequestError facebookRequestError, String str) {
        super(str);
        l.e(facebookRequestError, "requestError");
        this.f64314a = facebookRequestError;
    }

    @Override // p193e.p1538j.C23222c0, java.lang.Throwable
    public String toString() {
        StringBuilder m8696K = C22128a.m8696K("{FacebookServiceException: ", "httpResponseCode: ");
        m8696K.append(this.f64314a.f2529a);
        m8696K.append(", facebookErrorCode: ");
        m8696K.append(this.f64314a.f2530b);
        m8696K.append(", facebookErrorType: ");
        m8696K.append(this.f64314a.f2532d);
        m8696K.append(", message: ");
        m8696K.append(this.f64314a.m42021a());
        m8696K.append("}");
        String sb = m8696K.toString();
        l.d(sb, "StringBuilder()\n        .append(\"{FacebookServiceException: \")\n        .append(\"httpResponseCode: \")\n        .append(requestError.requestStatusCode)\n        .append(\", facebookErrorCode: \")\n        .append(requestError.errorCode)\n        .append(\", facebookErrorType: \")\n        .append(requestError.errorType)\n        .append(\", message: \")\n        .append(requestError.errorMessage)\n        .append(\"}\")\n        .toString()");
        return sb;
    }
}
