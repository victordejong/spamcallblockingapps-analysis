package p193e.p1538j;

import android.content.SharedPreferences;
import com.mopub.common.AdType;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/ProfileCache;", "", "()V", "sharedPreferences", "Landroid/content/SharedPreferences;", AdType.CLEAR, "", "load", "Lcom/facebook/Profile;", "save", "profile", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.p0 */
/* loaded from: classes2-dex2jar.jar:e/j/p0.class */
public final class C23252p0 {

    /* renamed from: a */
    public final SharedPreferences f64355a;

    public C23252p0() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
        l.d(sharedPreferences, "FacebookSdk.getApplicationContext()\n            .getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)");
        this.f64355a = sharedPreferences;
    }
}
