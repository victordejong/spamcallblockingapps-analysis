package com.facebook.share;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.internal.CollectionMapper;
import com.facebook.internal.Mutable;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.Sharer;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.VideoUploader;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import com.telguarder.features.advertisements.AdvertOrmLiteHelper;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/share/ShareApi.class */
public final class ShareApi {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String DEFAULT_GRAPH_NODE = "me";
    private static final String GRAPH_PATH_FORMAT = "%s/%s";
    private static final String PHOTOS_EDGE = "photos";
    private static final String TAG = "ShareApi";
    private String graphNode = DEFAULT_GRAPH_NODE;
    private String message;
    private final ShareContent shareContent;

    public ShareApi(ShareContent shareContent) {
        this.shareContent = shareContent;
    }

    static /* synthetic */ void access$000(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            handleImagesOnAction(bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    static /* synthetic */ String access$100(ShareApi shareApi, String str) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return null;
        }
        try {
            return shareApi.getGraphPath(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
            return null;
        }
    }

    static /* synthetic */ void access$200(ShareApi shareApi, ArrayList arrayList, CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            shareApi.stageArrayList(arrayList, onMapValueCompleteListener);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    static /* synthetic */ void access$300(ShareApi shareApi, ShareOpenGraphObject shareOpenGraphObject, CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            shareApi.stageOpenGraphObject(shareOpenGraphObject, onMapValueCompleteListener);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    static /* synthetic */ void access$400(ShareApi shareApi, SharePhoto sharePhoto, CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            shareApi.stagePhoto(sharePhoto, onMapValueCompleteListener);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    private void addCommonParameters(Bundle bundle, ShareContent shareContent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            List<String> peopleIds = shareContent.getPeopleIds();
            if (!Utility.isNullOrEmpty(peopleIds)) {
                bundle.putString("tags", TextUtils.join(", ", peopleIds));
            }
            if (!Utility.isNullOrEmpty(shareContent.getPlaceId())) {
                bundle.putString(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE, shareContent.getPlaceId());
            }
            if (!Utility.isNullOrEmpty(shareContent.getPageId())) {
                bundle.putString("page", shareContent.getPageId());
            }
            if (Utility.isNullOrEmpty(shareContent.getRef())) {
                return;
            }
            bundle.putString("ref", shareContent.getRef());
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private String getGraphPath(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return String.format(Locale.ROOT, GRAPH_PATH_FORMAT, URLEncoder.encode(getGraphNode(), "UTF-8"), str);
        } catch (UnsupportedEncodingException e) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private Bundle getSharePhotoCommonParameters(SharePhoto sharePhoto, SharePhotoContent sharePhotoContent) throws JSONException {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Bundle parameters = sharePhoto.getParameters();
            if (!parameters.containsKey(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE) && !Utility.isNullOrEmpty(sharePhotoContent.getPlaceId())) {
                parameters.putString(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE, sharePhotoContent.getPlaceId());
            }
            if (!parameters.containsKey("tags") && !Utility.isNullOrEmpty(sharePhotoContent.getPeopleIds())) {
                List<String> peopleIds = sharePhotoContent.getPeopleIds();
                if (!Utility.isNullOrEmpty(peopleIds)) {
                    JSONArray jSONArray = new JSONArray();
                    for (String str : peopleIds) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("tag_uid", str);
                        jSONArray.put(jSONObject);
                    }
                    parameters.putString("tags", jSONArray.toString());
                }
            }
            if (!parameters.containsKey("ref") && !Utility.isNullOrEmpty(sharePhotoContent.getRef())) {
                parameters.putString("ref", sharePhotoContent.getRef());
            }
            return parameters;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private static void handleImagesOnAction(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            String string = bundle.getString("image");
            if (string == null) {
                return;
            }
            try {
                JSONArray jSONArray = new JSONArray(string);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        putImageInBundleWithArrayFormat(bundle, i, optJSONObject);
                    } else {
                        bundle.putString(String.format(Locale.ROOT, "image[%d][url]", Integer.valueOf(i)), jSONArray.getString(i));
                    }
                }
                bundle.remove("image");
            } catch (JSONException e) {
                try {
                    putImageInBundleWithArrayFormat(bundle, 0, new JSONObject(string));
                    bundle.remove("image");
                } catch (JSONException e2) {
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    private static void putImageInBundleWithArrayFormat(Bundle bundle, int i, JSONObject jSONObject) throws JSONException {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(String.format(Locale.ROOT, "image[%d][%s]", Integer.valueOf(i), next), jSONObject.get(next).toString());
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    public static void share(ShareContent shareContent, FacebookCallback<Sharer.Result> facebookCallback) {
        if (CrashShieldHandler.isObjectCrashing(ShareApi.class)) {
            return;
        }
        try {
            new ShareApi(shareContent).share(facebookCallback);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ShareApi.class);
        }
    }

    private void shareLinkContent(ShareLinkContent shareLinkContent, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.share.ShareApi.4
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    ShareInternalUtility.invokeCallbackWithResults(facebookCallback, jSONObject == null ? null : jSONObject.optString("id"), graphResponse);
                }
            };
            Bundle bundle = new Bundle();
            addCommonParameters(bundle, shareLinkContent);
            bundle.putString("message", getMessage());
            bundle.putString("link", Utility.getUriString(shareLinkContent.getContentUrl()));
            bundle.putString("picture", Utility.getUriString(shareLinkContent.getImageUrl()));
            bundle.putString("name", shareLinkContent.getContentTitle());
            bundle.putString("description", shareLinkContent.getContentDescription());
            bundle.putString("ref", shareLinkContent.getRef());
            new GraphRequest(AccessToken.getCurrentAccessToken(), getGraphPath("feed"), bundle, HttpMethod.POST, callback).executeAsync();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void shareOpenGraphContent(ShareOpenGraphContent shareOpenGraphContent, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            final GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.share.ShareApi.1
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    ShareInternalUtility.invokeCallbackWithResults(facebookCallback, jSONObject == null ? null : jSONObject.optString("id"), graphResponse);
                }
            };
            final ShareOpenGraphAction action = shareOpenGraphContent.getAction();
            final Bundle bundle = action.getBundle();
            addCommonParameters(bundle, shareOpenGraphContent);
            if (!Utility.isNullOrEmpty(getMessage())) {
                bundle.putString("message", getMessage());
            }
            stageOpenGraphAction(bundle, new CollectionMapper.OnMapperCompleteListener() { // from class: com.facebook.share.ShareApi.2
                @Override // com.facebook.internal.CollectionMapper.OnMapperCompleteListener
                public void onComplete() {
                    try {
                        ShareApi.access$000(bundle);
                        new GraphRequest(AccessToken.getCurrentAccessToken(), ShareApi.access$100(ShareApi.this, URLEncoder.encode(action.getActionType(), "UTF-8")), bundle, HttpMethod.POST, callback).executeAsync();
                    } catch (UnsupportedEncodingException e) {
                        ShareInternalUtility.invokeCallbackWithException(facebookCallback, e);
                    }
                }

                @Override // com.facebook.internal.CollectionMapper.OnErrorListener
                public void onError(FacebookException facebookException) {
                    ShareInternalUtility.invokeCallbackWithException(facebookCallback, facebookException);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [T, java.lang.Integer] */
    private void sharePhotoContent(SharePhotoContent sharePhotoContent, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            final Mutable mutable = new Mutable(0);
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.share.ShareApi.3
                /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.Integer] */
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    if (jSONObject != null) {
                        arrayList2.add(jSONObject);
                    }
                    if (graphResponse.getError() != null) {
                        arrayList3.add(graphResponse);
                    }
                    Mutable mutable2 = mutable;
                    mutable2.value = Integer.valueOf(((Integer) mutable2.value).intValue() - 1);
                    if (((Integer) mutable.value).intValue() == 0) {
                        if (!arrayList3.isEmpty()) {
                            ShareInternalUtility.invokeCallbackWithResults(facebookCallback, null, (GraphResponse) arrayList3.get(0));
                        } else if (arrayList2.isEmpty()) {
                        } else {
                            ShareInternalUtility.invokeCallbackWithResults(facebookCallback, ((JSONObject) arrayList2.get(0)).optString("id"), graphResponse);
                        }
                    }
                }
            };
            try {
                for (SharePhoto sharePhoto : sharePhotoContent.getPhotos()) {
                    try {
                        Bundle sharePhotoCommonParameters = getSharePhotoCommonParameters(sharePhoto, sharePhotoContent);
                        Bitmap bitmap = sharePhoto.getBitmap();
                        Uri imageUrl = sharePhoto.getImageUrl();
                        String caption = sharePhoto.getCaption();
                        String str = caption;
                        if (caption == null) {
                            str = getMessage();
                        }
                        if (bitmap != null) {
                            arrayList.add(GraphRequest.newUploadPhotoRequest(currentAccessToken, getGraphPath(PHOTOS_EDGE), bitmap, str, sharePhotoCommonParameters, callback));
                        } else if (imageUrl != null) {
                            arrayList.add(GraphRequest.newUploadPhotoRequest(currentAccessToken, getGraphPath(PHOTOS_EDGE), imageUrl, str, sharePhotoCommonParameters, callback));
                        }
                    } catch (JSONException e) {
                        ShareInternalUtility.invokeCallbackWithException(facebookCallback, e);
                        return;
                    }
                }
                mutable.value = Integer.valueOf(((Integer) mutable.value).intValue() + arrayList.size());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((GraphRequest) it.next()).executeAsync();
                }
            } catch (FileNotFoundException e2) {
                ShareInternalUtility.invokeCallbackWithException(facebookCallback, e2);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void shareVideoContent(ShareVideoContent shareVideoContent, FacebookCallback<Sharer.Result> facebookCallback) {
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                VideoUploader.uploadAsync(shareVideoContent, getGraphNode(), facebookCallback);
            } catch (FileNotFoundException e) {
                ShareInternalUtility.invokeCallbackWithException(facebookCallback, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void stageArrayList(final ArrayList arrayList, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            final JSONArray jSONArray = new JSONArray();
            stageCollectionValues(new CollectionMapper.Collection<Integer>() { // from class: com.facebook.share.ShareApi.5
                public Object get(Integer num) {
                    return arrayList.get(num.intValue());
                }

                @Override // com.facebook.internal.CollectionMapper.Collection
                public Iterator<Integer> keyIterator() {
                    final int size = arrayList.size();
                    final Mutable mutable = new Mutable(0);
                    return new Iterator<Integer>() { // from class: com.facebook.share.ShareApi.5.1
                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return ((Integer) mutable.value).intValue() < size;
                        }

                        /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.Integer] */
                        @Override // java.util.Iterator
                        public Integer next() {
                            Integer num = (Integer) mutable.value;
                            Mutable mutable2 = mutable;
                            mutable2.value = Integer.valueOf(((Integer) mutable2.value).intValue() + 1);
                            return num;
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                        }
                    };
                }

                public void set(Integer num, Object obj, CollectionMapper.OnErrorListener onErrorListener) {
                    try {
                        jSONArray.put(num.intValue(), obj);
                    } catch (JSONException e) {
                        String localizedMessage = e.getLocalizedMessage();
                        String str = localizedMessage;
                        if (localizedMessage == null) {
                            str = "Error staging object.";
                        }
                        onErrorListener.onError(new FacebookException(str));
                    }
                }
            }, new CollectionMapper.OnMapperCompleteListener() { // from class: com.facebook.share.ShareApi.6
                @Override // com.facebook.internal.CollectionMapper.OnMapperCompleteListener
                public void onComplete() {
                    onMapValueCompleteListener.onComplete(jSONArray);
                }

                @Override // com.facebook.internal.CollectionMapper.OnErrorListener
                public void onError(FacebookException facebookException) {
                    onMapValueCompleteListener.onError(facebookException);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private <T> void stageCollectionValues(CollectionMapper.Collection<T> collection, CollectionMapper.OnMapperCompleteListener onMapperCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            CollectionMapper.iterate(collection, new CollectionMapper.ValueMapper() { // from class: com.facebook.share.ShareApi.7
                @Override // com.facebook.internal.CollectionMapper.ValueMapper
                public void mapValue(Object obj, CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
                    if (obj instanceof ArrayList) {
                        ShareApi.access$200(ShareApi.this, (ArrayList) obj, onMapValueCompleteListener);
                    } else if (obj instanceof ShareOpenGraphObject) {
                        ShareApi.access$300(ShareApi.this, (ShareOpenGraphObject) obj, onMapValueCompleteListener);
                    } else if (obj instanceof SharePhoto) {
                        ShareApi.access$400(ShareApi.this, (SharePhoto) obj, onMapValueCompleteListener);
                    } else {
                        onMapValueCompleteListener.onComplete(obj);
                    }
                }
            }, onMapperCompleteListener);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void stageOpenGraphAction(final Bundle bundle, CollectionMapper.OnMapperCompleteListener onMapperCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            stageCollectionValues(new CollectionMapper.Collection<String>() { // from class: com.facebook.share.ShareApi.8
                public Object get(String str) {
                    return bundle.get(str);
                }

                @Override // com.facebook.internal.CollectionMapper.Collection
                public Iterator<String> keyIterator() {
                    return bundle.keySet().iterator();
                }

                public void set(String str, Object obj, CollectionMapper.OnErrorListener onErrorListener) {
                    if (!Utility.putJSONValueInBundle(bundle, str, obj)) {
                        onErrorListener.onError(new FacebookException("Unexpected value: " + obj.toString()));
                    }
                }
            }, onMapperCompleteListener);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void stageOpenGraphObject(final ShareOpenGraphObject shareOpenGraphObject, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            String string = shareOpenGraphObject.getString("type");
            String str = string;
            if (string == null) {
                str = shareOpenGraphObject.getString("og:type");
            }
            if (str == null) {
                onMapValueCompleteListener.onError(new FacebookException("Open Graph objects must contain a type value."));
                return;
            }
            final JSONObject jSONObject = new JSONObject();
            CollectionMapper.Collection<String> collection = new CollectionMapper.Collection<String>() { // from class: com.facebook.share.ShareApi.9
                public Object get(String str2) {
                    return shareOpenGraphObject.get(str2);
                }

                @Override // com.facebook.internal.CollectionMapper.Collection
                public Iterator<String> keyIterator() {
                    return shareOpenGraphObject.keySet().iterator();
                }

                public void set(String str2, Object obj, CollectionMapper.OnErrorListener onErrorListener) {
                    try {
                        jSONObject.put(str2, obj);
                    } catch (JSONException e) {
                        String localizedMessage = e.getLocalizedMessage();
                        String str3 = localizedMessage;
                        if (localizedMessage == null) {
                            str3 = "Error staging object.";
                        }
                        onErrorListener.onError(new FacebookException(str3));
                    }
                }
            };
            final GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.share.ShareApi.10
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    FacebookRequestError error = graphResponse.getError();
                    String str2 = "Error staging Open Graph object.";
                    if (error != null) {
                        String errorMessage = error.getErrorMessage();
                        if (errorMessage != null) {
                            str2 = errorMessage;
                        }
                        onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, str2));
                        return;
                    }
                    JSONObject jSONObject2 = graphResponse.getJSONObject();
                    if (jSONObject2 == null) {
                        onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                        return;
                    }
                    String optString = jSONObject2.optString("id");
                    if (optString == null) {
                        onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                    } else {
                        onMapValueCompleteListener.onComplete(optString);
                    }
                }
            };
            final String str2 = str;
            stageCollectionValues(collection, new CollectionMapper.OnMapperCompleteListener() { // from class: com.facebook.share.ShareApi.11
                @Override // com.facebook.internal.CollectionMapper.OnMapperCompleteListener
                public void onComplete() {
                    String jSONObject2 = jSONObject.toString();
                    Bundle bundle = new Bundle();
                    bundle.putString("object", jSONObject2);
                    try {
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        ShareApi shareApi = ShareApi.this;
                        new GraphRequest(currentAccessToken, ShareApi.access$100(shareApi, "objects/" + URLEncoder.encode(str2, "UTF-8")), bundle, HttpMethod.POST, callback).executeAsync();
                    } catch (UnsupportedEncodingException e) {
                        String localizedMessage = e.getLocalizedMessage();
                        String str3 = localizedMessage;
                        if (localizedMessage == null) {
                            str3 = "Error staging Open Graph object.";
                        }
                        onMapValueCompleteListener.onError(new FacebookException(str3));
                    }
                }

                @Override // com.facebook.internal.CollectionMapper.OnErrorListener
                public void onError(FacebookException facebookException) {
                    onMapValueCompleteListener.onError(facebookException);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void stagePhoto(final SharePhoto sharePhoto, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Bitmap bitmap = sharePhoto.getBitmap();
            Uri imageUrl = sharePhoto.getImageUrl();
            if (bitmap == null && imageUrl == null) {
                onMapValueCompleteListener.onError(new FacebookException("Photos must have an imageURL or bitmap."));
                return;
            }
            GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.share.ShareApi.12
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    FacebookRequestError error = graphResponse.getError();
                    String str = "Error staging photo.";
                    if (error != null) {
                        String errorMessage = error.getErrorMessage();
                        if (errorMessage != null) {
                            str = errorMessage;
                        }
                        onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, str));
                        return;
                    }
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    if (jSONObject == null) {
                        onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                        return;
                    }
                    String optString = jSONObject.optString(ShareConstants.MEDIA_URI);
                    if (optString == null) {
                        onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("url", optString);
                        jSONObject2.put(NativeProtocol.IMAGE_USER_GENERATED_KEY, sharePhoto.getUserGenerated());
                        onMapValueCompleteListener.onComplete(jSONObject2);
                    } catch (JSONException e) {
                        String localizedMessage = e.getLocalizedMessage();
                        if (localizedMessage != null) {
                            str = localizedMessage;
                        }
                        onMapValueCompleteListener.onError(new FacebookException(str));
                    }
                }
            };
            if (bitmap != null) {
                ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), bitmap, callback).executeAsync();
                return;
            }
            try {
                ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), imageUrl, callback).executeAsync();
            } catch (FileNotFoundException e) {
                String localizedMessage = e.getLocalizedMessage();
                String str = localizedMessage;
                if (localizedMessage == null) {
                    str = "Error staging photo.";
                }
                onMapValueCompleteListener.onError(new FacebookException(str));
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public boolean canShare() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            if (getShareContent() == null) {
                return false;
            }
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            if (!AccessToken.isCurrentAccessTokenActive()) {
                return false;
            }
            Set<String> permissions2 = currentAccessToken.getPermissions();
            if (permissions2 != null && permissions2.contains("publish_actions")) {
                return true;
            }
            Log.w(TAG, "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation.");
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public String getGraphNode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.graphNode;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public String getMessage() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.message;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public ShareContent getShareContent() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.shareContent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public void setGraphNode(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.graphNode = str;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void setMessage(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.message = str;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void share(FacebookCallback<Sharer.Result> facebookCallback) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (!canShare()) {
                ShareInternalUtility.invokeCallbackWithError(facebookCallback, "Insufficient permissions for sharing content via Api.");
                return;
            }
            ShareContent shareContent = getShareContent();
            try {
                ShareContentValidation.validateForApiShare(shareContent);
                if (shareContent instanceof ShareLinkContent) {
                    shareLinkContent((ShareLinkContent) shareContent, facebookCallback);
                } else if (shareContent instanceof SharePhotoContent) {
                    sharePhotoContent((SharePhotoContent) shareContent, facebookCallback);
                } else if (shareContent instanceof ShareVideoContent) {
                    shareVideoContent((ShareVideoContent) shareContent, facebookCallback);
                } else if (!(shareContent instanceof ShareOpenGraphContent)) {
                } else {
                    shareOpenGraphContent((ShareOpenGraphContent) shareContent, facebookCallback);
                }
            } catch (FacebookException e) {
                ShareInternalUtility.invokeCallbackWithException(facebookCallback, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
