package p000;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import ym0;
/* renamed from: ap0 */
/* loaded from: classes-dex2jar.jar:ap0.class */
public final class ap0 {
    /* renamed from: A */
    public static JSONObject m5874A(UUID uuid, ShareOpenGraphContent shareOpenGraphContent) {
        ShareOpenGraphAction h = shareOpenGraphContent.h();
        ArrayList arrayList = new ArrayList();
        JSONObject b = wo0.b(h, new h(uuid, arrayList));
        ym0.a(arrayList);
        if (shareOpenGraphContent.m4960d() != null && fn0.Q(b.optString("place"))) {
            b.put("place", shareOpenGraphContent.m4960d());
        }
        if (shareOpenGraphContent.m4961c() != null) {
            JSONArray optJSONArray = b.optJSONArray("tags");
            HashSet hashSet = optJSONArray == null ? new HashSet() : fn0.T(optJSONArray);
            for (String str : shareOpenGraphContent.m4961c()) {
                hashSet.add(str);
            }
            b.put("tags", new JSONArray((Collection) hashSet));
        }
        return b;
    }

    /* renamed from: B */
    public static JSONObject m5873B(ShareOpenGraphContent shareOpenGraphContent) {
        return wo0.b(shareOpenGraphContent.h(), new i());
    }

    /* renamed from: b */
    public static yl0 m5871b(int i, int i2, Intent intent) {
        UUID r = zm0.r(intent);
        if (r == null) {
            return null;
        }
        return yl0.a(r, i);
    }

    /* renamed from: c */
    public static ym0.b m5870c(UUID uuid, Uri uri, Bitmap bitmap) {
        return bitmap != null ? ym0.d(uuid, bitmap) : uri != null ? ym0.e(uuid, uri) : null;
    }

    /* renamed from: d */
    public static ym0.b m5869d(UUID uuid, ShareMedia shareMedia) {
        Bitmap bitmap;
        Uri uri = null;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.c();
            uri = sharePhoto.e();
        } else if (shareMedia instanceof ShareVideo) {
            uri = ((ShareVideo) shareMedia).c();
            bitmap = null;
        } else {
            bitmap = null;
        }
        return m5870c(uuid, uri, bitmap);
    }

    /* renamed from: e */
    public static Bundle m5868e(ShareStoryContent shareStoryContent, UUID uuid) {
        if (shareStoryContent == null || shareStoryContent.i() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(shareStoryContent.i());
        ArrayList arrayList2 = new ArrayList();
        List Y = fn0.Y(arrayList, new b(uuid, arrayList2));
        ym0.a(arrayList2);
        return (Bundle) Y.get(0);
    }

    /* renamed from: f */
    public static Pair<String, String> m5867f(String str) {
        String str2;
        String str3;
        int i;
        int indexOf = str.indexOf(58);
        if (indexOf == -1 || str.length() <= (i = indexOf + 1)) {
            str2 = str;
            str3 = null;
        } else {
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(i);
            str3 = substring;
            str2 = substring2;
        }
        return new Pair<>(str3, str2);
    }

    /* renamed from: g */
    public static List<Bundle> m5866g(ShareMediaContent shareMediaContent, UUID uuid) {
        List h;
        if (shareMediaContent == null || (h = shareMediaContent.h()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<Bundle> Y = fn0.Y(h, new g(uuid, arrayList));
        ym0.a(arrayList);
        return Y;
    }

    /* renamed from: h */
    public static LikeView.EnumC0377g m5865h(LikeView.EnumC0377g enumC0377g, LikeView.EnumC0377g enumC0377g2) {
        if (enumC0377g == enumC0377g2) {
            return enumC0377g;
        }
        LikeView.EnumC0377g enumC0377g3 = LikeView.EnumC0377g.UNKNOWN;
        if (enumC0377g == enumC0377g3) {
            return enumC0377g2;
        }
        if (enumC0377g2 != enumC0377g3) {
            return null;
        }
        return enumC0377g;
    }

    /* renamed from: i */
    public static String m5864i(Bundle bundle) {
        return bundle.containsKey("completionGesture") ? bundle.getString("completionGesture") : bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }

    /* renamed from: j */
    public static List<String> m5863j(SharePhotoContent sharePhotoContent, UUID uuid) {
        List h;
        if (sharePhotoContent == null || (h = sharePhotoContent.h()) == null) {
            return null;
        }
        List Y = fn0.Y(h, new e(uuid));
        List<String> Y2 = fn0.Y(Y, new f());
        ym0.a(Y);
        return Y2;
    }

    /* renamed from: k */
    public static String m5862k(Bundle bundle) {
        return bundle.containsKey("postId") ? bundle.getString("postId") : bundle.containsKey("com.facebook.platform.extra.POST_ID") ? bundle.getString("com.facebook.platform.extra.POST_ID") : bundle.getString("post_id");
    }

    /* renamed from: l */
    public static xo0 m5861l(pi0<jo0> pi0Var) {
        return new c(pi0Var, pi0Var);
    }

    /* renamed from: m */
    public static Bundle m5860m(ShareStoryContent shareStoryContent, UUID uuid) {
        if (shareStoryContent == null || shareStoryContent.k() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(shareStoryContent.k());
        List Y = fn0.Y(arrayList, new j(uuid));
        List Y2 = fn0.Y(Y, new a());
        ym0.a(Y);
        return (Bundle) Y2.get(0);
    }

    /* renamed from: n */
    public static Bundle m5859n(ShareCameraEffectContent shareCameraEffectContent, UUID uuid) {
        CameraEffectTextures j;
        if (shareCameraEffectContent == null || (j = shareCameraEffectContent.j()) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : j.m4972d()) {
            ym0.b m5870c = m5870c(uuid, j.m4973c(str), j.m4974b(str));
            arrayList.add(m5870c);
            bundle.putString(str, m5870c.g());
        }
        ym0.a(arrayList);
        return bundle;
    }

    /* renamed from: o */
    public static String m5858o(Uri uri) {
        String uri2;
        int lastIndexOf;
        if (uri == null || (lastIndexOf = (uri2 = uri.toString()).lastIndexOf(46)) == -1) {
            return null;
        }
        return uri2.substring(lastIndexOf);
    }

    /* renamed from: p */
    public static String m5857p(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent == null || shareVideoContent.k() == null) {
            return null;
        }
        ym0.b e = ym0.e(uuid, shareVideoContent.k().c());
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(e);
        ym0.a(arrayList);
        return e.g();
    }

    /* renamed from: q */
    public static boolean m5856q(int i, int i2, Intent intent, xo0 xo0Var) {
        yl0 m5871b = m5871b(i, i2, intent);
        if (m5871b == null) {
            return false;
        }
        ym0.c(m5871b.b());
        if (xo0Var == null) {
            return true;
        }
        ri0 t = zm0.t(zm0.s(intent));
        if (t == null) {
            xo0Var.c(m5871b, zm0.A(intent));
            return true;
        } else if (t instanceof ti0) {
            xo0Var.a(m5871b);
            return true;
        } else {
            xo0Var.b(m5871b, t);
            return true;
        }
    }

    /* renamed from: r */
    public static void m5855r(pi0<jo0> pi0Var) {
        m5852u("cancelled", null);
        if (pi0Var != null) {
            pi0Var.a();
        }
    }

    /* renamed from: s */
    public static void m5854s(pi0<jo0> pi0Var, ri0 ri0Var) {
        m5852u("error", ri0Var.getMessage());
        if (pi0Var != null) {
            pi0Var.b(ri0Var);
        }
    }

    /* renamed from: t */
    public static void m5853t(pi0<jo0> pi0Var, String str) {
        m5852u("succeeded", null);
        if (pi0Var != null) {
            pi0Var.onSuccess(new jo0(str));
        }
    }

    /* renamed from: u */
    public static void m5852u(String str, String str2) {
        xj0 xj0Var = new xj0(ui0.e());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_outcome", str);
        if (str2 != null) {
            bundle.putString("error_message", str2);
        }
        xj0Var.i("fb_share_dialog_result", bundle);
    }

    /* renamed from: v */
    public static GraphRequest m5851v(AccessToken accessToken, Uri uri, GraphRequest.AbstractC0343e abstractC0343e) {
        if (fn0.P(uri)) {
            return m5850w(accessToken, new File(uri.getPath()), abstractC0343e);
        }
        if (!fn0.N(uri)) {
            throw new ri0("The image Uri must be either a file:// or content:// Uri");
        }
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, bj0.POST, abstractC0343e);
    }

    /* renamed from: w */
    public static GraphRequest m5850w(AccessToken accessToken, File file, GraphRequest.AbstractC0343e abstractC0343e) {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, bj0.POST, abstractC0343e);
    }

    /* renamed from: x */
    public static void m5849x(int i) {
        bm0.c(i, new d(i));
    }

    /* renamed from: y */
    public static JSONArray m5848y(JSONArray jSONArray, boolean z) {
        JSONArray jSONArray2;
        JSONArray jSONArray3 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                jSONArray2 = m5848y((JSONArray) obj, z);
            } else {
                jSONArray2 = obj;
                if (obj instanceof JSONObject) {
                    jSONArray2 = m5847z((JSONObject) obj, z);
                }
            }
            jSONArray3.put(jSONArray2);
        }
        return jSONArray3;
    }

    /* renamed from: z */
    public static JSONObject m5847z(JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObject4 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof JSONObject) {
                    jSONObject2 = m5847z((JSONObject) obj, true);
                } else {
                    jSONObject2 = obj;
                    if (obj instanceof JSONArray) {
                        jSONObject2 = m5848y((JSONArray) obj, true);
                    }
                }
                Pair<String, String> m5867f = m5867f(string);
                String str = (String) m5867f.first;
                String str2 = (String) m5867f.second;
                if (z) {
                    if (str == null || !str.equals("fbsdk")) {
                        if (str != null && !str.equals("og")) {
                            jSONObject4.put(str2, jSONObject2);
                        }
                        jSONObject3.put(str2, jSONObject2);
                    }
                    jSONObject3.put(string, jSONObject2);
                } else {
                    if (str != null && str.equals("fb")) {
                        jSONObject3.put(string, jSONObject2);
                    }
                    jSONObject3.put(str2, jSONObject2);
                }
            }
            if (jSONObject4.length() > 0) {
                jSONObject3.put("data", jSONObject4);
            }
            return jSONObject3;
        } catch (JSONException e) {
            throw new ri0("Failed to create json object from share content");
        }
    }
}
