package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.EnumC10352k;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.GraphRequest;
import com.facebook.internal.C10203a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10338y;
import com.facebook.internal.C10340z;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.share.internal.OpenGraphJSONUtility;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.share.internal.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/e.class */
public final class C10480e {
    /* renamed from: a */
    private static Pair<String, String> m22705a(String str) {
        String str2;
        int i;
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            int indexOf = str.indexOf(58);
            if (indexOf == -1 || str.length() <= (i = indexOf + 1)) {
                str2 = null;
            } else {
                str2 = str.substring(0, indexOf);
                str = str.substring(i);
            }
            return new Pair<>(str2, str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static GraphRequest m22709a(AccessToken accessToken, Uri uri, GraphRequest.AbstractC9933b abstractC9933b) throws FileNotFoundException {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            if (C10213ae.m23201c(uri)) {
                return m22708a(accessToken, new File(uri.getPath()), abstractC9933b);
            }
            if (!C10213ae.m23210b(uri)) {
                throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
            }
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC10352k.POST, abstractC9933b);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static GraphRequest m22708a(AccessToken accessToken, File file, GraphRequest.AbstractC9933b abstractC9933b) throws FileNotFoundException {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC10352k.POST, abstractC9933b);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static C10203a m22711a(int i, Intent intent) {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            UUID m22967a = C10340z.m22967a(intent);
            if (m22967a != null) {
                return C10203a.m23268a(m22967a, i);
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static C10338y.C10339a m22704a(UUID uuid, Uri uri, Bitmap bitmap) {
        C10338y.C10339a c10339a;
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            c10339a = null;
        }
        if (bitmap == null) {
            c10339a = null;
            if (uri != null) {
                c10339a = C10338y.m22976a(uuid, uri);
            }
            return c10339a;
        }
        c10339a = C10338y.m22977a(uuid, bitmap);
        return c10339a;
    }

    /* renamed from: a */
    public static /* synthetic */ C10338y.C10339a m22703a(UUID uuid, ShareMedia shareMedia) {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            return m22700b(uuid, shareMedia);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static LikeView.EnumC10509e m22706a(LikeView.EnumC10509e enumC10509e, LikeView.EnumC10509e enumC10509e2) {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        if (enumC10509e == enumC10509e2) {
            return enumC10509e;
        }
        try {
            if (enumC10509e == LikeView.EnumC10509e.UNKNOWN) {
                return enumC10509e2;
            }
            if (enumC10509e2 != LikeView.EnumC10509e.UNKNOWN) {
                return null;
            }
            return enumC10509e;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static JSONArray m22702a(JSONArray jSONArray, boolean z) throws JSONException {
        JSONArray jSONArray2;
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            JSONArray jSONArray3 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof JSONArray) {
                    jSONArray2 = m22702a((JSONArray) obj, z);
                } else {
                    jSONArray2 = obj;
                    if (obj instanceof JSONObject) {
                        jSONArray2 = m22701a((JSONObject) obj, z);
                    }
                }
                jSONArray3.put(jSONArray2);
            }
            return jSONArray3;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m22707a(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            return OpenGraphJSONUtility.toJSONObject(shareOpenGraphContent.getAction(), new OpenGraphJSONUtility.PhotoJSONProcessor() { // from class: com.facebook.share.internal.ShareInternalUtility$8
                @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
                public final JSONObject toJSONObject(SharePhoto sharePhoto) {
                    Uri imageUrl = sharePhoto.getImageUrl();
                    if (C10213ae.m23246a(imageUrl)) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("url", imageUrl.toString());
                            return jSONObject;
                        } catch (JSONException e) {
                            throw new FacebookException("Unable to attach images", e);
                        }
                    }
                    throw new FacebookException("Only web images may be used in OG objects shared via the web dialog");
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m22701a(JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2;
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
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
                        jSONObject2 = m22701a((JSONObject) obj, true);
                    } else {
                        jSONObject2 = obj;
                        if (obj instanceof JSONArray) {
                            jSONObject2 = m22702a((JSONArray) obj, true);
                        }
                    }
                    Pair<String, String> m22705a = m22705a(string);
                    String str = (String) m22705a.first;
                    String str2 = (String) m22705a.second;
                    if (z) {
                        if (str == null || !str.equals("fbsdk")) {
                            if (str != null && !str.equals("og")) {
                                jSONObject4.put(str2, jSONObject2);
                            }
                            jSONObject3.put(str2, jSONObject2);
                        } else {
                            jSONObject3.put(string, jSONObject2);
                        }
                    } else if (str == null || !str.equals("fb")) {
                        jSONObject3.put(str2, jSONObject2);
                    } else {
                        jSONObject3.put(string, jSONObject2);
                    }
                }
                if (jSONObject4.length() > 0) {
                    jSONObject3.put("data", jSONObject4);
                }
                return jSONObject3;
            } catch (JSONException e) {
                throw new FacebookException("Failed to create json object from share content");
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m22710a(int i, Intent intent, AbstractC10479d abstractC10479d) {
        if (C10249a.m23108a(C10480e.class)) {
            return false;
        }
        try {
            C10203a m22711a = m22711a(i, intent);
            if (m22711a == null) {
                return false;
            }
            C10338y.m22978a(m22711a.m23269a());
            FacebookException m22965a = C10340z.m22965a(C10340z.m22947e(intent));
            if (m22965a == null) {
                abstractC10479d.mo22713a(m22711a, C10340z.m22951c(intent));
                return true;
            } else if (m22965a instanceof FacebookOperationCanceledException) {
                abstractC10479d.mo22714a(m22711a);
                return true;
            } else {
                abstractC10479d.mo22712a(m22711a, m22965a);
                return true;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return false;
        }
    }

    /* renamed from: b */
    private static C10338y.C10339a m22700b(UUID uuid, ShareMedia shareMedia) {
        Uri uri;
        Bitmap bitmap;
        if (C10249a.m23108a(C10480e.class)) {
            return null;
        }
        try {
            if (shareMedia instanceof SharePhoto) {
                SharePhoto sharePhoto = (SharePhoto) shareMedia;
                bitmap = sharePhoto.getBitmap();
                uri = sharePhoto.getImageUrl();
            } else if (shareMedia instanceof ShareVideo) {
                uri = ((ShareVideo) shareMedia).getLocalUrl();
                bitmap = null;
            } else {
                uri = null;
                bitmap = null;
            }
            return m22704a(uuid, uri, bitmap);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10480e.class);
            return null;
        }
    }
}
