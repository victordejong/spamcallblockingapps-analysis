package p081h.p154f;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.FacebookRequestError;
/* renamed from: h.f.p */
/* loaded from: classes-dex2jar.jar:h/f/p.class */
public class C6143p extends C6131k {

    /* renamed from: a */
    public final FacebookRequestError f15265a;

    public C6143p(FacebookRequestError facebookRequestError, String str) {
        super(str);
        this.f15265a = facebookRequestError;
    }

    /* renamed from: a */
    public final FacebookRequestError m23725a() {
        return this.f15265a;
    }

    @Override // p081h.p154f.C6131k, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f15265a.m35469s() + ", facebookErrorCode: " + this.f15265a.m35475a() + ", facebookErrorType: " + this.f15265a.m35472c() + ", message: " + this.f15265a.m35473b() + CssParser.BLOCK_END;
    }
}
