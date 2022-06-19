package p193e.p1538j;

import android.content.SharedPreferences;
import com.mopub.common.AdType;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018�� \u00112\u00020\u0001:\u0001\u0011B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0007R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/AuthenticationTokenCache;", "", "()V", "sharedPreferences", "Landroid/content/SharedPreferences;", "(Landroid/content/SharedPreferences;)V", "cachedAuthenticationToken", "Lcom/facebook/AuthenticationToken;", "getCachedAuthenticationToken", "()Lcom/facebook/AuthenticationToken;", AdType.CLEAR, "", "hasCachedAuthenticationToken", "", "load", "save", "authenticationToken", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.x */
/* loaded from: classes2-dex2jar.jar:e/j/x.class */
public final class C23276x {

    /* renamed from: a */
    public final SharedPreferences f64432a;

    public C23276x() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.AuthenticationTokenManager.SharedPreferences", 0);
        l.d(sharedPreferences, "FacebookSdk.getApplicationContext()\n              .getSharedPreferences(\n                  AuthenticationTokenManager.SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)");
        l.e(sharedPreferences, "sharedPreferences");
        this.f64432a = sharedPreferences;
    }
}
