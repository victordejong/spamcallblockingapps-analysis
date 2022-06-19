package p193e.p1538j;

import android.net.Uri;
import com.facebook.Profile;
import com.facebook.internal.C1168q0;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"com/facebook/Profile$Companion$fetchProfileForCurrentAccessToken$1", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", "userInfo", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.o0 */
/* loaded from: classes2-dex2jar.jar:e/j/o0.class */
public final class C23250o0 implements C1168q0.AbstractC1169a {
    @Override // com.facebook.internal.C1168q0.AbstractC1169a
    /* renamed from: a */
    public void mo7327a(JSONObject jSONObject) {
        Uri uri = null;
        String optString = jSONObject == null ? null : jSONObject.optString("id");
        if (optString == null) {
            String str = Profile.f2567i;
            return;
        }
        String optString2 = jSONObject.optString("link");
        String optString3 = jSONObject.optString("profile_picture", null);
        String optString4 = jSONObject.optString("first_name");
        String optString5 = jSONObject.optString("middle_name");
        String optString6 = jSONObject.optString("last_name");
        String optString7 = jSONObject.optString(AnalyticsConstants.NAME);
        Uri parse = optString2 != null ? Uri.parse(optString2) : null;
        if (optString3 != null) {
            uri = Uri.parse(optString3);
        }
        Profile profile = new Profile(optString, optString4, optString5, optString6, optString7, parse, uri);
        Profile profile2 = Profile.f2566h;
        Profile.m41981b(profile);
    }

    @Override // com.facebook.internal.C1168q0.AbstractC1169a
    /* renamed from: b */
    public void mo7326b(C23222c0 c23222c0) {
        String str = Profile.f2567i;
        l.j("Got unexpected exception: ", c23222c0);
    }
}
