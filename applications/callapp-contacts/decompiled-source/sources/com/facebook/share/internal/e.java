package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.GraphRequest;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import com.facebook.internal.y;
import com.facebook.internal.z;
import com.facebook.k;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/e.class */
public final class e {
    private static Pair<String, String> a(String str) {
        String str2;
        int i;
        if (a.a(e.class)) {
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
            a.a(th, e.class);
            return null;
        }
    }

    public static GraphRequest a(AccessToken accessToken, Uri uri, GraphRequest.b bVar) throws FileNotFoundException {
        if (a.a(e.class)) {
            return null;
        }
        try {
            if (ae.c(uri)) {
                return a(accessToken, new File(uri.getPath()), bVar);
            }
            if (ae.b(uri)) {
                GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
                Bundle bundle = new Bundle(1);
                bundle.putParcelable("file", parcelableResourceWithMimeType);
                return new GraphRequest(accessToken, "me/staging_resources", bundle, k.POST, bVar);
            }
            throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static GraphRequest a(AccessToken accessToken, File file, GraphRequest.b bVar) throws FileNotFoundException {
        if (a.a(e.class)) {
            return null;
        }
        try {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, k.POST, bVar);
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static com.facebook.internal.a a(int i, Intent intent) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            UUID a2 = z.a(intent);
            if (a2 == null) {
                return null;
            }
            return com.facebook.internal.a.a(a2, i);
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static y.a a(UUID uuid, Uri uri, Bitmap bitmap) {
        y.a aVar;
        if (a.a(e.class)) {
            return null;
        }
        try {
        } catch (Throwable th) {
            a.a(th, e.class);
            aVar = null;
        }
        if (bitmap != null) {
            aVar = y.a(uuid, bitmap);
        } else {
            aVar = null;
            if (uri != null) {
                aVar = y.a(uuid, uri);
            }
            return aVar;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ y.a a(UUID uuid, ShareMedia shareMedia) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return b(uuid, shareMedia);
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static LikeView.e a(LikeView.e eVar, LikeView.e eVar2) {
        if (a.a(e.class)) {
            return null;
        }
        if (eVar == eVar2) {
            return eVar;
        }
        try {
            if (eVar == LikeView.e.UNKNOWN) {
                return eVar2;
            }
            if (eVar2 == LikeView.e.UNKNOWN) {
                return eVar;
            }
            return null;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static JSONArray a(JSONArray jSONArray, boolean z) throws JSONException {
        Object obj;
        if (a.a(e.class)) {
            return null;
        }
        try {
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj2 = jSONArray.get(i);
                if (obj2 instanceof JSONArray) {
                    obj = a((JSONArray) obj2, z);
                } else {
                    obj = obj2;
                    if (obj2 instanceof JSONObject) {
                        obj = a((JSONObject) obj2, z);
                    }
                }
                jSONArray2.put(obj);
            }
            return jSONArray2;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static JSONObject a(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return OpenGraphJSONUtility.toJSONObject(shareOpenGraphContent.getAction(), new OpenGraphJSONUtility.PhotoJSONProcessor() { // from class: com.facebook.share.internal.ShareInternalUtility$8
                @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
                public final JSONObject toJSONObject(SharePhoto sharePhoto) {
                    Uri imageUrl = sharePhoto.getImageUrl();
                    if (ae.a(imageUrl)) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("url", imageUrl.toString());
                            return jSONObject;
                        } catch (JSONException e) {
                            throw new FacebookException("Unable to attach images", e);
                        }
                    } else {
                        throw new FacebookException("Only web images may be used in OG objects shared via the web dialog");
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static JSONObject a(JSONObject jSONObject, boolean z) {
        Object obj;
        if (a.a(e.class)) {
            return null;
        }
        try {
            if (jSONObject == null) {
                return null;
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONArray names = jSONObject.names();
                for (int i = 0; i < names.length(); i++) {
                    String string = names.getString(i);
                    Object obj2 = jSONObject.get(string);
                    if (obj2 instanceof JSONObject) {
                        obj = a((JSONObject) obj2, true);
                    } else {
                        obj = obj2;
                        if (obj2 instanceof JSONArray) {
                            obj = a((JSONArray) obj2, true);
                        }
                    }
                    Pair<String, String> a2 = a(string);
                    String str = (String) a2.first;
                    String str2 = (String) a2.second;
                    if (z) {
                        if (str == null || !str.equals("fbsdk")) {
                            if (str != null && !str.equals("og")) {
                                jSONObject3.put(str2, obj);
                            }
                            jSONObject2.put(str2, obj);
                        } else {
                            jSONObject2.put(string, obj);
                        }
                    } else if (str == null || !str.equals("fb")) {
                        jSONObject2.put(str2, obj);
                    } else {
                        jSONObject2.put(string, obj);
                    }
                }
                if (jSONObject3.length() > 0) {
                    jSONObject2.put("data", jSONObject3);
                }
                return jSONObject2;
            } catch (JSONException e) {
                throw new FacebookException("Failed to create json object from share content");
            }
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static boolean a(int i, Intent intent, d dVar) {
        if (a.a(e.class)) {
            return false;
        }
        try {
            com.facebook.internal.a a2 = a(i, intent);
            if (a2 == null) {
                return false;
            }
            y.a(a2.a());
            FacebookException a3 = z.a(z.e(intent));
            if (a3 == null) {
                dVar.a(a2, z.c(intent));
                return true;
            } else if (a3 instanceof FacebookOperationCanceledException) {
                dVar.a(a2);
                return true;
            } else {
                dVar.a(a2, a3);
                return true;
            }
        } catch (Throwable th) {
            a.a(th, e.class);
            return false;
        }
    }

    private static y.a b(UUID uuid, ShareMedia shareMedia) {
        Uri uri;
        Bitmap bitmap;
        if (a.a(e.class)) {
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
            return a(uuid, uri, bitmap);
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }
}
