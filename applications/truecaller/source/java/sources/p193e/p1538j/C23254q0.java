package p193e.p1538j;

import android.content.Intent;
import android.net.Uri;
import com.facebook.Profile;
import com.facebook.internal.C1168q0;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1872x.p1873a.C27062a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\f\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0014\u001a\u00020\u0010H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/ProfileManager;", "", "localBroadcastManager", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "profileCache", "Lcom/facebook/ProfileCache;", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V", "value", "Lcom/facebook/Profile;", "currentProfile", "getCurrentProfile", "()Lcom/facebook/Profile;", "setCurrentProfile", "(Lcom/facebook/Profile;)V", "currentProfileField", "loadCurrentProfile", "", "sendCurrentProfileChangedBroadcast", "", "oldProfile", "writeToCache", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.q0 */
/* loaded from: classes2-dex2jar.jar:e/j/q0.class */
public final class C23254q0 {

    /* renamed from: d */
    public static final C23255a f64357d = new C23255a(null);

    /* renamed from: e */
    public static volatile C23254q0 f64358e;

    /* renamed from: a */
    public final C27062a f64359a;

    /* renamed from: b */
    public final C23252p0 f64360b;

    /* renamed from: c */
    public Profile f64361c;

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/facebook/ProfileManager$Companion;", "", "()V", "ACTION_CURRENT_PROFILE_CHANGED", "", "EXTRA_NEW_PROFILE", "EXTRA_OLD_PROFILE", "instance", "Lcom/facebook/ProfileManager;", "getInstance", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.q0$a */
    /* loaded from: classes2-dex2jar.jar:e/j/q0$a.class */
    public static final class C23255a {
        public C23255a(f fVar) {
        }

        /* renamed from: a */
        public final C23254q0 m7323a() {
            C23254q0 c23254q0;
            synchronized (this) {
                if (C23254q0.f64358e == null) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    C27062a m968b = C27062a.m968b(C23228f0.m7354a());
                    l.d(m968b, "getInstance(applicationContext)");
                    C23254q0.f64358e = new C23254q0(m968b, new C23252p0());
                }
                c23254q0 = C23254q0.f64358e;
                if (c23254q0 == null) {
                    l.l("instance");
                    throw null;
                }
            }
            return c23254q0;
        }
    }

    public C23254q0(C27062a c27062a, C23252p0 c23252p0) {
        l.e(c27062a, "localBroadcastManager");
        l.e(c23252p0, "profileCache");
        this.f64359a = c27062a;
        this.f64360b = c23252p0;
    }

    /* renamed from: a */
    public final void m7324a(Profile profile, boolean z) {
        JSONObject jSONObject;
        Profile profile2 = this.f64361c;
        this.f64361c = profile;
        if (z) {
            if (profile != null) {
                C23252p0 c23252p0 = this.f64360b;
                Objects.requireNonNull(c23252p0);
                l.e(profile, "profile");
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("id", profile.f2568a);
                    jSONObject2.put("first_name", profile.f2569b);
                    jSONObject2.put("middle_name", profile.f2570c);
                    jSONObject2.put("last_name", profile.f2571d);
                    jSONObject2.put(AnalyticsConstants.NAME, profile.f2572e);
                    Uri uri = profile.f2573f;
                    if (uri != null) {
                        jSONObject2.put("link_uri", uri.toString());
                    }
                    Uri uri2 = profile.f2574g;
                    jSONObject = jSONObject2;
                    if (uri2 != null) {
                        jSONObject2.put("picture_uri", uri2.toString());
                        jSONObject = jSONObject2;
                    }
                } catch (JSONException e) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    c23252p0.f64355a.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply();
                }
            } else {
                this.f64360b.f64355a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
            }
        }
        if (!C1168q0.m41682a(profile2, profile)) {
            Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
            intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile2);
            intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile);
            this.f64359a.m966d(intent);
        }
    }
}
