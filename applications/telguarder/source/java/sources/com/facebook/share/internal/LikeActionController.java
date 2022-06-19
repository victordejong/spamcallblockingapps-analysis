package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.internal.WorkQueue;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.LikeContent;
import com.facebook.share.widget.LikeView;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController.class */
public class LikeActionController {
    @Deprecated
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
    @Deprecated
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
    @Deprecated
    public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
    @Deprecated
    public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
    private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
    @Deprecated
    public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
    @Deprecated
    public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
    private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
    private static final String JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE = "facebook_dialog_analytics_bundle";
    private static final String JSON_INT_OBJECT_TYPE_KEY = "object_type";
    private static final String JSON_INT_VERSION_KEY = "com.facebook.share.internal.LikeActionController.version";
    private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
    private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
    private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
    private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
    private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
    private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
    private static final int LIKE_ACTION_CONTROLLER_VERSION = 3;
    private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
    private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
    private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
    private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final int MAX_CACHE_SIZE = 128;
    private static final int MAX_OBJECT_SUFFIX = 1000;
    private static final String TAG = "LikeActionController";
    private static AccessTokenTracker accessTokenTracker;
    private static FileLruCache controllerDiskCache;
    private static Handler handler;
    private static boolean isInitialized;
    private static String objectIdForPendingController;
    private static volatile int objectSuffix;
    private Bundle facebookDialogAnalyticsBundle;
    private boolean isObjectLiked;
    private boolean isObjectLikedOnServer;
    private boolean isPendingLikeOrUnlike;
    private String likeCountStringWithLike;
    private String likeCountStringWithoutLike;
    private InternalAppEventsLogger logger;
    private String objectId;
    private boolean objectIsPage;
    private LikeView.ObjectType objectType;
    private String socialSentenceWithLike;
    private String socialSentenceWithoutLike;
    private String unlikeToken;
    private String verifiedObjectId;
    private static final ConcurrentHashMap<String, LikeActionController> cache = new ConcurrentHashMap<>();
    private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
    private static WorkQueue diskIOWorkQueue = new WorkQueue(1);

    /* renamed from: com.facebook.share.internal.LikeActionController$12 */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$12.class */
    static /* synthetic */ class C110812 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$share$widget$LikeView$ObjectType;

        static {
            int[] iArr = new int[LikeView.ObjectType.values().length];
            $SwitchMap$com$facebook$share$widget$LikeView$ObjectType = iArr;
            try {
                iArr[LikeView.ObjectType.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$AbstractRequestWrapper.class */
    public abstract class AbstractRequestWrapper implements RequestWrapper {
        protected FacebookRequestError error;
        protected String objectId;
        protected LikeView.ObjectType objectType;
        private GraphRequest request;

        protected AbstractRequestWrapper(String str, LikeView.ObjectType objectType) {
            LikeActionController.this = r4;
            this.objectId = str;
            this.objectType = objectType;
        }

        @Override // com.facebook.share.internal.LikeActionController.RequestWrapper
        public void addToBatch(GraphRequestBatch graphRequestBatch) {
            graphRequestBatch.add(this.request);
        }

        @Override // com.facebook.share.internal.LikeActionController.RequestWrapper
        public FacebookRequestError getError() {
            return this.error;
        }

        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error running request for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
        }

        protected abstract void processSuccess(GraphResponse graphResponse);

        protected void setRequest(GraphRequest graphRequest) {
            this.request = graphRequest;
            graphRequest.setVersion(FacebookSdk.getGraphApiVersion());
            graphRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.share.internal.LikeActionController.AbstractRequestWrapper.1
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    AbstractRequestWrapper.this.error = graphResponse.getError();
                    if (AbstractRequestWrapper.this.error == null) {
                        AbstractRequestWrapper.this.processSuccess(graphResponse);
                        return;
                    }
                    AbstractRequestWrapper abstractRequestWrapper = AbstractRequestWrapper.this;
                    abstractRequestWrapper.processError(abstractRequestWrapper.error);
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem.class */
    public static class CreateLikeActionControllerWorkItem implements Runnable {
        private CreationCallback callback;
        private String objectId;
        private LikeView.ObjectType objectType;

        CreateLikeActionControllerWorkItem(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
            this.objectId = str;
            this.objectType = objectType;
            this.callback = creationCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LikeActionController.createControllerForObjectIdAndType(this.objectId, this.objectType, this.callback);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$CreationCallback.class */
    public interface CreationCallback {
        void onComplete(LikeActionController likeActionController, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper.class */
    public class GetEngagementRequestWrapper extends AbstractRequestWrapper {
        String likeCountStringWithLike;
        String likeCountStringWithoutLike;
        String socialSentenceStringWithLike;
        String socialSentenceStringWithoutLike;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        GetEngagementRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            LikeActionController.this = r9;
            this.likeCountStringWithLike = r9.likeCountStringWithLike;
            this.likeCountStringWithoutLike = r9.likeCountStringWithoutLike;
            this.socialSentenceStringWithLike = r9.socialSentenceWithLike;
            this.socialSentenceStringWithoutLike = r9.socialSentenceWithoutLike;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching engagement for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_engagement", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), "engagement");
            if (tryGetJSONObjectFromResponse != null) {
                this.likeCountStringWithLike = tryGetJSONObjectFromResponse.optString("count_string_with_like", this.likeCountStringWithLike);
                this.likeCountStringWithoutLike = tryGetJSONObjectFromResponse.optString("count_string_without_like", this.likeCountStringWithoutLike);
                this.socialSentenceStringWithLike = tryGetJSONObjectFromResponse.optString(LikeActionController.JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, this.socialSentenceStringWithLike);
                this.socialSentenceStringWithoutLike = tryGetJSONObjectFromResponse.optString(LikeActionController.JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, this.socialSentenceStringWithoutLike);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper.class */
    public class GetOGObjectIdRequestWrapper extends AbstractRequestWrapper {
        String verifiedObjectId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        GetOGObjectIdRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            LikeActionController.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorMessage().contains("og_object")) {
                this.error = null;
            } else {
                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject optJSONObject;
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId);
            if (tryGetJSONObjectFromResponse == null || (optJSONObject = tryGetJSONObjectFromResponse.optJSONObject("og_object")) == null) {
                return;
            }
            this.verifiedObjectId = optJSONObject.optString("id");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper.class */
    private class GetOGObjectLikesRequestWrapper extends AbstractRequestWrapper implements LikeRequestWrapper {
        private final String objectId;
        private boolean objectIsLiked;
        private final LikeView.ObjectType objectType;
        private String unlikeToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        GetOGObjectLikesRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            LikeActionController.this = r9;
            this.objectIsLiked = r9.isObjectLiked;
            this.objectId = str;
            this.objectType = objectType;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public String getUnlikeToken() {
            return this.unlikeToken;
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public boolean isObjectLiked() {
            return this.objectIsLiked;
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching like status for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONArray tryGetJSONArrayFromResponse = Utility.tryGetJSONArrayFromResponse(graphResponse.getJSONObject(), "data");
            if (tryGetJSONArrayFromResponse != null) {
                for (int i = 0; i < tryGetJSONArrayFromResponse.length(); i++) {
                    JSONObject optJSONObject = tryGetJSONArrayFromResponse.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.objectIsLiked = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("application");
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (optJSONObject2 != null && AccessToken.isCurrentAccessTokenActive() && Utility.areObjectsEqual(currentAccessToken.getApplicationId(), optJSONObject2.optString("id"))) {
                            this.unlikeToken = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper.class */
    public class GetPageIdRequestWrapper extends AbstractRequestWrapper {
        boolean objectIsPage;
        String verifiedObjectId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        GetPageIdRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            LikeActionController.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId);
            if (tryGetJSONObjectFromResponse != null) {
                String optString = tryGetJSONObjectFromResponse.optString("id");
                this.verifiedObjectId = optString;
                this.objectIsPage = !Utility.isNullOrEmpty(optString);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper.class */
    private class GetPageLikesRequestWrapper extends AbstractRequestWrapper implements LikeRequestWrapper {
        private boolean objectIsLiked;
        private String pageId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        GetPageLikesRequestWrapper(String str) {
            super(str, LikeView.ObjectType.PAGE);
            LikeActionController.this = r9;
            this.objectIsLiked = r9.isObjectLiked;
            this.pageId = str;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            setRequest(new GraphRequest(currentAccessToken, "me/likes/" + str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public String getUnlikeToken() {
            return null;
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public boolean isObjectLiked() {
            return this.objectIsLiked;
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching like status for page id '%s': %s", this.pageId, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONArray tryGetJSONArrayFromResponse = Utility.tryGetJSONArrayFromResponse(graphResponse.getJSONObject(), "data");
            if (tryGetJSONArrayFromResponse == null || tryGetJSONArrayFromResponse.length() <= 0) {
                return;
            }
            this.objectIsLiked = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$LikeRequestWrapper.class */
    public interface LikeRequestWrapper extends RequestWrapper {
        String getUnlikeToken();

        boolean isObjectLiked();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$MRUCacheWorkItem.class */
    public static class MRUCacheWorkItem implements Runnable {
        private static ArrayList<String> mruCachedItems = new ArrayList<>();
        private String cacheItem;
        private boolean shouldTrim;

        MRUCacheWorkItem(String str, boolean z) {
            this.cacheItem = str;
            this.shouldTrim = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                String str = this.cacheItem;
                if (str != null) {
                    mruCachedItems.remove(str);
                    mruCachedItems.add(0, this.cacheItem);
                }
                if (!this.shouldTrim || mruCachedItems.size() < 128) {
                    return;
                }
                while (64 < mruCachedItems.size()) {
                    ArrayList<String> arrayList = mruCachedItems;
                    LikeActionController.cache.remove(arrayList.remove(arrayList.size() - 1));
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper.class */
    public class PublishLikeRequestWrapper extends AbstractRequestWrapper {
        String unlikeToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        PublishLikeRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            LikeActionController.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, HttpMethod.POST));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorCode() == LikeActionController.ERROR_CODE_OBJECT_ALREADY_LIKED) {
                this.error = null;
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error liking object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("publish_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            this.unlikeToken = Utility.safeGetStringFromResponse(graphResponse.getJSONObject(), "id");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper.class */
    public class PublishUnlikeRequestWrapper extends AbstractRequestWrapper {
        private String unlikeToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        PublishUnlikeRequestWrapper(String str) {
            super(null, null);
            LikeActionController.this = r9;
            this.unlikeToken = str;
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), str, null, HttpMethod.DELETE));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error unliking object with unlike token '%s' : %s", this.unlikeToken, facebookRequestError);
            LikeActionController.this.logAppEventForError("publish_unlike", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$RequestCompletionCallback.class */
    public interface RequestCompletionCallback {
        void onComplete();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$RequestWrapper.class */
    private interface RequestWrapper {
        void addToBatch(GraphRequestBatch graphRequestBatch);

        FacebookRequestError getError();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem.class */
    public static class SerializeToDiskWorkItem implements Runnable {
        private String cacheKey;
        private String controllerJson;

        SerializeToDiskWorkItem(String str, String str2) {
            this.cacheKey = str;
            this.controllerJson = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LikeActionController.serializeToDiskSynchronously(this.cacheKey, this.controllerJson);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    private LikeActionController(String str, LikeView.ObjectType objectType) {
        this.objectId = str;
        this.objectType = objectType;
    }

    public static void broadcastAction(LikeActionController likeActionController, String str) {
        broadcastAction(likeActionController, str, null);
    }

    public static void broadcastAction(LikeActionController likeActionController, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        Bundle bundle2 = bundle;
        if (likeActionController != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString(ACTION_OBJECT_ID_KEY, likeActionController.getObjectId());
        }
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()).sendBroadcast(intent);
    }

    private boolean canUseOGPublish() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return !this.objectIsPage && this.verifiedObjectId != null && AccessToken.isCurrentAccessTokenActive() && currentAccessToken.getPermissions() != null && currentAccessToken.getPermissions().contains("publish_actions");
    }

    private void clearState() {
        this.facebookDialogAnalyticsBundle = null;
        storeObjectIdForPendingController(null);
    }

    public static void createControllerForObjectIdAndType(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        LikeActionController controllerFromInMemoryCache = getControllerFromInMemoryCache(str);
        if (controllerFromInMemoryCache != null) {
            verifyControllerAndInvokeCallback(controllerFromInMemoryCache, objectType, creationCallback);
            return;
        }
        LikeActionController deserializeFromDiskSynchronously = deserializeFromDiskSynchronously(str);
        LikeActionController likeActionController = deserializeFromDiskSynchronously;
        if (deserializeFromDiskSynchronously == null) {
            likeActionController = new LikeActionController(str, objectType);
            serializeToDiskAsync(likeActionController);
        }
        putControllerInMemoryCache(str, likeActionController);
        handler.post(new Runnable() { // from class: com.facebook.share.internal.LikeActionController.2
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    LikeActionController.this.refreshStatusAsync();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
        invokeCallbackWithController(creationCallback, likeActionController, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.facebook.share.internal.LikeActionController deserializeFromDiskSynchronously(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r4
            java.lang.String r0 = getCacheKeyForObjectId(r0)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L62
            r4 = r0
            com.facebook.internal.FileLruCache r0 = com.facebook.share.internal.LikeActionController.controllerDiskCache     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L62
            r1 = r4
            java.io.InputStream r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L62
            r8 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L48
            r0 = r8
            r9 = r0
            r0 = r8
            java.lang.String r0 = com.facebook.internal.Utility.readStreamToString(r0)     // Catch: java.io.IOException -> L41 java.lang.Throwable -> L86
            r10 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            boolean r0 = com.facebook.internal.Utility.isNullOrEmpty(r0)     // Catch: java.io.IOException -> L41 java.lang.Throwable -> L86
            if (r0 != 0) goto L48
            r0 = r8
            r9 = r0
            r0 = r10
            com.facebook.share.internal.LikeActionController r0 = deserializeFromJson(r0)     // Catch: java.io.IOException -> L41 java.lang.Throwable -> L86
            r4 = r0
            goto L48
        L41:
            r7 = move-exception
            r0 = r8
            r4 = r0
            goto L65
        L48:
            r0 = r4
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L83
            r0 = r4
            r9 = r0
        L53:
            r0 = r8
            com.facebook.internal.Utility.closeQuietly(r0)
            goto L83
        L5b:
            r4 = move-exception
            r0 = 0
            r9 = r0
            goto L87
        L62:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L65:
            r0 = r4
            r9 = r0
            java.lang.String r0 = com.facebook.share.internal.LikeActionController.TAG     // Catch: java.lang.Throwable -> L86
            java.lang.String r1 = "Unable to deserialize controller from disk"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: java.lang.Throwable -> L86
            r0 = r6
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L83
            r0 = r5
            r9 = r0
            r0 = r4
            r8 = r0
            goto L53
        L83:
            r0 = r9
            return r0
        L86:
            r4 = move-exception
        L87:
            r0 = r9
            if (r0 == 0) goto L91
            r0 = r9
            com.facebook.internal.Utility.closeQuietly(r0)
        L91:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.LikeActionController.deserializeFromDiskSynchronously(java.lang.String):com.facebook.share.internal.LikeActionController");
    }

    private static LikeActionController deserializeFromJson(String str) {
        LikeActionController likeActionController;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            Log.e(TAG, "Unable to deserialize controller from JSON", e);
            likeActionController = null;
        }
        if (jSONObject.optInt(JSON_INT_VERSION_KEY, -1) != 3) {
            return null;
        }
        likeActionController = new LikeActionController(jSONObject.getString("object_id"), LikeView.ObjectType.fromInt(jSONObject.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
        likeActionController.likeCountStringWithLike = jSONObject.optString(JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY, null);
        likeActionController.likeCountStringWithoutLike = jSONObject.optString(JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY, null);
        likeActionController.socialSentenceWithLike = jSONObject.optString(JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, null);
        likeActionController.socialSentenceWithoutLike = jSONObject.optString(JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, null);
        likeActionController.isObjectLiked = jSONObject.optBoolean(JSON_BOOL_IS_OBJECT_LIKED_KEY);
        likeActionController.unlikeToken = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject(JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE);
        if (optJSONObject != null) {
            likeActionController.facebookDialogAnalyticsBundle = BundleJSONConverter.convertToBundle(optJSONObject);
        }
        return likeActionController;
    }

    private void fetchVerifiedObjectId(final RequestCompletionCallback requestCompletionCallback) {
        if (!Utility.isNullOrEmpty(this.verifiedObjectId)) {
            if (requestCompletionCallback == null) {
                return;
            }
            requestCompletionCallback.onComplete();
            return;
        }
        final GetOGObjectIdRequestWrapper getOGObjectIdRequestWrapper = new GetOGObjectIdRequestWrapper(this.objectId, this.objectType);
        final GetPageIdRequestWrapper getPageIdRequestWrapper = new GetPageIdRequestWrapper(this.objectId, this.objectType);
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        getOGObjectIdRequestWrapper.addToBatch(graphRequestBatch);
        getPageIdRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.11
            @Override // com.facebook.GraphRequestBatch.Callback
            public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                LikeActionController.this.verifiedObjectId = getOGObjectIdRequestWrapper.verifiedObjectId;
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    LikeActionController.this.verifiedObjectId = getPageIdRequestWrapper.verifiedObjectId;
                    LikeActionController.this.objectIsPage = getPageIdRequestWrapper.objectIsPage;
                }
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Logger.log(LoggingBehavior.DEVELOPER_ERRORS, LikeActionController.TAG, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", LikeActionController.this.objectId);
                    LikeActionController.this.logAppEventForError("get_verified_id", getPageIdRequestWrapper.getError() != null ? getPageIdRequestWrapper.getError() : getOGObjectIdRequestWrapper.getError());
                }
                RequestCompletionCallback requestCompletionCallback2 = requestCompletionCallback;
                if (requestCompletionCallback2 != null) {
                    requestCompletionCallback2.onComplete();
                }
            }
        });
        graphRequestBatch.executeAsync();
    }

    public InternalAppEventsLogger getAppEventsLogger() {
        if (this.logger == null) {
            this.logger = new InternalAppEventsLogger(FacebookSdk.getApplicationContext());
        }
        return this.logger;
    }

    private static String getCacheKeyForObjectId(String str) {
        String token = AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : null;
        String str2 = token;
        if (token != null) {
            str2 = Utility.md5hash(token);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, Utility.coerceValueIfNullOrEmpty(str2, ""), Integer.valueOf(objectSuffix));
    }

    @Deprecated
    public static void getControllerForObjectId(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        if (!isInitialized) {
            performFirstInitialize();
        }
        LikeActionController controllerFromInMemoryCache = getControllerFromInMemoryCache(str);
        if (controllerFromInMemoryCache != null) {
            verifyControllerAndInvokeCallback(controllerFromInMemoryCache, objectType, creationCallback);
        } else {
            diskIOWorkQueue.addActiveWorkItem(new CreateLikeActionControllerWorkItem(str, objectType, creationCallback));
        }
    }

    private static LikeActionController getControllerFromInMemoryCache(String str) {
        String cacheKeyForObjectId = getCacheKeyForObjectId(str);
        LikeActionController likeActionController = cache.get(cacheKeyForObjectId);
        if (likeActionController != null) {
            mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(cacheKeyForObjectId, false));
        }
        return likeActionController;
    }

    private ResultProcessor getResultProcessor(final Bundle bundle) {
        return new ResultProcessor(null) { // from class: com.facebook.share.internal.LikeActionController.6
            @Override // com.facebook.share.internal.ResultProcessor
            public void onCancel(AppCall appCall) {
                onError(appCall, new FacebookOperationCanceledException());
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onError(AppCall appCall, FacebookException facebookException) {
                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Like Dialog failed with error : %s", facebookException);
                Bundle bundle2 = bundle;
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putString(AnalyticsEvents.PARAMETER_CALL_ID, appCall.getCallId().toString());
                LikeActionController.this.logAppEventForError("present_dialog", bundle3);
                LikeActionController.broadcastAction(LikeActionController.this, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, NativeProtocol.createBundleForException(facebookException));
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle2) {
                if (bundle2 == null || !bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY)) {
                    return;
                }
                boolean z = bundle2.getBoolean(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY);
                String str = LikeActionController.this.likeCountStringWithLike;
                String str2 = LikeActionController.this.likeCountStringWithoutLike;
                if (bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY)) {
                    str = bundle2.getString(LikeActionController.LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY);
                    str2 = str;
                }
                String str3 = LikeActionController.this.socialSentenceWithLike;
                String str4 = LikeActionController.this.socialSentenceWithoutLike;
                if (bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY)) {
                    str3 = bundle2.getString(LikeActionController.LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY);
                    str4 = str3;
                }
                String string = bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY) ? bundle2.getString("unlike_token") : LikeActionController.this.unlikeToken;
                Bundle bundle3 = bundle;
                Bundle bundle4 = bundle3;
                if (bundle3 == null) {
                    bundle4 = new Bundle();
                }
                bundle4.putString(AnalyticsEvents.PARAMETER_CALL_ID, appCall.getCallId().toString());
                LikeActionController.this.getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_DIALOG_DID_SUCCEED, bundle4);
                LikeActionController.this.updateState(z, str, str2, str3, str4, string);
            }
        };
    }

    @Deprecated
    public static boolean handleOnActivityResult(final int i, final int i2, final Intent intent) {
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            objectIdForPendingController = FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).getString(LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY, null);
        }
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            return false;
        }
        getControllerForObjectId(objectIdForPendingController, LikeView.ObjectType.UNKNOWN, new CreationCallback() { // from class: com.facebook.share.internal.LikeActionController.1
            @Override // com.facebook.share.internal.LikeActionController.CreationCallback
            public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
                if (facebookException == null) {
                    likeActionController.onActivityResult(i, i2, intent);
                } else {
                    Utility.logd(LikeActionController.TAG, facebookException);
                }
            }
        });
        return true;
    }

    private static void invokeCallbackWithController(final CreationCallback creationCallback, final LikeActionController likeActionController, final FacebookException facebookException) {
        if (creationCallback == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.facebook.share.internal.LikeActionController.4
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    creationCallback.onComplete(likeActionController, facebookException);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
    }

    public void logAppEventForError(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.objectId);
        bundle2.putString("object_type", this.objectType.toString());
        bundle2.putString(AnalyticsEvents.PARAMETER_LIKE_VIEW_CURRENT_ACTION, str);
        getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_ERROR, null, bundle2);
    }

    public void logAppEventForError(String str, FacebookRequestError facebookRequestError) {
        JSONObject requestResult;
        Bundle bundle = new Bundle();
        if (facebookRequestError != null && (requestResult = facebookRequestError.getRequestResult()) != null) {
            bundle.putString("error", requestResult.toString());
        }
        logAppEventForError(str, bundle);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        ShareInternalUtility.handleActivityResult(i, i2, intent, getResultProcessor(this.facebookDialogAnalyticsBundle));
        clearState();
    }

    private static void performFirstInitialize() {
        synchronized (LikeActionController.class) {
            try {
                if (isInitialized) {
                    return;
                }
                handler = new Handler(Looper.getMainLooper());
                objectSuffix = FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).getInt(LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY, 1);
                controllerDiskCache = new FileLruCache(TAG, new FileLruCache.Limits());
                registerAccessTokenTracker();
                CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.LikeActionController.3
                    @Override // com.facebook.internal.CallbackManagerImpl.Callback
                    public boolean onActivityResult(int i, Intent intent) {
                        return LikeActionController.handleOnActivityResult(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), i, intent);
                    }
                });
                isInitialized = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void presentLikeDialog(Activity activity, FragmentWrapper fragmentWrapper, Bundle bundle) {
        boolean z = false;
        if (LikeDialog.canShowNativeDialog()) {
            z = AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_DIALOG;
        } else if (LikeDialog.canShowWebFallback()) {
            z = AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_FALLBACK;
        } else {
            logAppEventForError("present_dialog", bundle);
            Utility.logd(TAG, "Cannot show the Like Dialog on this device.");
            broadcastAction(null, ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
        }
        if (z) {
            LikeView.ObjectType objectType = this.objectType;
            LikeContent build = new LikeContent.Builder().setObjectId(this.objectId).setObjectType(objectType != null ? objectType.toString() : LikeView.ObjectType.UNKNOWN.toString()).build();
            if (fragmentWrapper != null) {
                new LikeDialog(fragmentWrapper).show(build);
            } else {
                new LikeDialog(activity).show(build);
            }
            saveState(bundle);
            getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_DIALOG, bundle);
        }
    }

    public void publishAgainIfNeeded(Bundle bundle) {
        boolean z = this.isObjectLiked;
        if (z == this.isObjectLikedOnServer || publishLikeOrUnlikeAsync(z, bundle)) {
            return;
        }
        publishDidError(!this.isObjectLiked);
    }

    public void publishDidError(boolean z) {
        updateLikeState(z);
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.STATUS_ERROR_DESCRIPTION, ERROR_PUBLISH_ERROR);
        broadcastAction(this, ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, bundle);
    }

    private void publishLikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        fetchVerifiedObjectId(new RequestCompletionCallback() { // from class: com.facebook.share.internal.LikeActionController.7
            @Override // com.facebook.share.internal.LikeActionController.RequestCompletionCallback
            public void onComplete() {
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(NativeProtocol.STATUS_ERROR_DESCRIPTION, LikeActionController.ERROR_INVALID_OBJECT_ID);
                    LikeActionController.broadcastAction(LikeActionController.this, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, bundle2);
                    return;
                }
                GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                LikeActionController likeActionController = LikeActionController.this;
                final PublishLikeRequestWrapper publishLikeRequestWrapper = new PublishLikeRequestWrapper(likeActionController.verifiedObjectId, LikeActionController.this.objectType);
                publishLikeRequestWrapper.addToBatch(graphRequestBatch);
                graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.7.1
                    @Override // com.facebook.GraphRequestBatch.Callback
                    public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                        LikeActionController.this.isPendingLikeOrUnlike = false;
                        if (publishLikeRequestWrapper.getError() != null) {
                            LikeActionController.this.publishDidError(false);
                            return;
                        }
                        LikeActionController.this.unlikeToken = Utility.coerceValueIfNullOrEmpty(publishLikeRequestWrapper.unlikeToken, null);
                        LikeActionController.this.isObjectLikedOnServer = true;
                        LikeActionController.this.getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_DID_LIKE, null, bundle);
                        LikeActionController.this.publishAgainIfNeeded(bundle);
                    }
                });
                graphRequestBatch.executeAsync();
            }
        });
    }

    private boolean publishLikeOrUnlikeAsync(boolean z, Bundle bundle) {
        boolean z2;
        if (canUseOGPublish()) {
            if (z) {
                publishLikeAsync(bundle);
                z2 = true;
            } else if (!Utility.isNullOrEmpty(this.unlikeToken)) {
                publishUnlikeAsync(bundle);
                z2 = true;
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    private void publishUnlikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        final PublishUnlikeRequestWrapper publishUnlikeRequestWrapper = new PublishUnlikeRequestWrapper(this.unlikeToken);
        publishUnlikeRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.8
            @Override // com.facebook.GraphRequestBatch.Callback
            public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                LikeActionController.this.isPendingLikeOrUnlike = false;
                if (publishUnlikeRequestWrapper.getError() != null) {
                    LikeActionController.this.publishDidError(true);
                    return;
                }
                LikeActionController.this.unlikeToken = null;
                LikeActionController.this.isObjectLikedOnServer = false;
                LikeActionController.this.getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_DID_UNLIKE, null, bundle);
                LikeActionController.this.publishAgainIfNeeded(bundle);
            }
        });
        graphRequestBatch.executeAsync();
    }

    private static void putControllerInMemoryCache(String str, LikeActionController likeActionController) {
        String cacheKeyForObjectId = getCacheKeyForObjectId(str);
        mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(cacheKeyForObjectId, true));
        cache.put(cacheKeyForObjectId, likeActionController);
    }

    public void refreshStatusAsync() {
        if (!AccessToken.isCurrentAccessTokenActive()) {
            refreshStatusViaService();
        } else {
            fetchVerifiedObjectId(new RequestCompletionCallback() { // from class: com.facebook.share.internal.LikeActionController.9
                @Override // com.facebook.share.internal.LikeActionController.RequestCompletionCallback
                public void onComplete() {
                    GetOGObjectLikesRequestWrapper getOGObjectLikesRequestWrapper;
                    if (C110812.$SwitchMap$com$facebook$share$widget$LikeView$ObjectType[LikeActionController.this.objectType.ordinal()] != 1) {
                        LikeActionController likeActionController = LikeActionController.this;
                        getOGObjectLikesRequestWrapper = new GetOGObjectLikesRequestWrapper(likeActionController.verifiedObjectId, LikeActionController.this.objectType);
                    } else {
                        LikeActionController likeActionController2 = LikeActionController.this;
                        getOGObjectLikesRequestWrapper = new GetPageLikesRequestWrapper(likeActionController2.verifiedObjectId);
                    }
                    LikeActionController likeActionController3 = LikeActionController.this;
                    final GetEngagementRequestWrapper getEngagementRequestWrapper = new GetEngagementRequestWrapper(likeActionController3.verifiedObjectId, LikeActionController.this.objectType);
                    GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                    getOGObjectLikesRequestWrapper.addToBatch(graphRequestBatch);
                    getEngagementRequestWrapper.addToBatch(graphRequestBatch);
                    final LikeRequestWrapper likeRequestWrapper = getOGObjectLikesRequestWrapper;
                    graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.9.1
                        @Override // com.facebook.GraphRequestBatch.Callback
                        public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                            if (likeRequestWrapper.getError() == null && getEngagementRequestWrapper.getError() == null) {
                                LikeActionController.this.updateState(likeRequestWrapper.isObjectLiked(), getEngagementRequestWrapper.likeCountStringWithLike, getEngagementRequestWrapper.likeCountStringWithoutLike, getEngagementRequestWrapper.socialSentenceStringWithLike, getEngagementRequestWrapper.socialSentenceStringWithoutLike, likeRequestWrapper.getUnlikeToken());
                            } else {
                                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Unable to refresh like state for id: '%s'", LikeActionController.this.objectId);
                            }
                        }
                    });
                    graphRequestBatch.executeAsync();
                }
            });
        }
    }

    private void refreshStatusViaService() {
        LikeStatusClient likeStatusClient = new LikeStatusClient(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationId(), this.objectId);
        if (!likeStatusClient.start()) {
            return;
        }
        likeStatusClient.setCompletedListener(new PlatformServiceClient.CompletedListener() { // from class: com.facebook.share.internal.LikeActionController.10
            @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
            public void completed(Bundle bundle) {
                if (bundle == null || !bundle.containsKey(ShareConstants.EXTRA_OBJECT_IS_LIKED)) {
                    return;
                }
                LikeActionController.this.updateState(bundle.getBoolean(ShareConstants.EXTRA_OBJECT_IS_LIKED), bundle.containsKey(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITH_LIKE) ? bundle.getString(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITH_LIKE) : LikeActionController.this.likeCountStringWithLike, bundle.containsKey(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE) ? bundle.getString(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE) : LikeActionController.this.likeCountStringWithoutLike, bundle.containsKey(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITH_LIKE) ? bundle.getString(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITH_LIKE) : LikeActionController.this.socialSentenceWithLike, bundle.containsKey(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE) ? bundle.getString(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE) : LikeActionController.this.socialSentenceWithoutLike, bundle.containsKey(ShareConstants.EXTRA_UNLIKE_TOKEN) ? bundle.getString(ShareConstants.EXTRA_UNLIKE_TOKEN) : LikeActionController.this.unlikeToken);
            }
        });
    }

    private static void registerAccessTokenTracker() {
        accessTokenTracker = new AccessTokenTracker() { // from class: com.facebook.share.internal.LikeActionController.5
            @Override // com.facebook.AccessTokenTracker
            protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                Context applicationContext = FacebookSdk.getApplicationContext();
                if (accessToken2 == null) {
                    int unused = LikeActionController.objectSuffix = (LikeActionController.objectSuffix + 1) % 1000;
                    applicationContext.getSharedPreferences(LikeActionController.LIKE_ACTION_CONTROLLER_STORE, 0).edit().putInt(LikeActionController.LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY, LikeActionController.objectSuffix).apply();
                    LikeActionController.cache.clear();
                    LikeActionController.controllerDiskCache.clearCache();
                }
                LikeActionController.broadcastAction(null, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET);
            }
        };
    }

    private void saveState(Bundle bundle) {
        storeObjectIdForPendingController(this.objectId);
        this.facebookDialogAnalyticsBundle = bundle;
        serializeToDiskAsync(this);
    }

    private static void serializeToDiskAsync(LikeActionController likeActionController) {
        String serializeToJson = serializeToJson(likeActionController);
        String cacheKeyForObjectId = getCacheKeyForObjectId(likeActionController.objectId);
        if (Utility.isNullOrEmpty(serializeToJson) || Utility.isNullOrEmpty(cacheKeyForObjectId)) {
            return;
        }
        diskIOWorkQueue.addActiveWorkItem(new SerializeToDiskWorkItem(cacheKeyForObjectId, serializeToJson));
    }

    public static void serializeToDiskSynchronously(String str, String str2) {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        OutputStream outputStream3 = null;
        try {
            try {
                outputStream = controllerDiskCache.openPutStream(str);
                outputStream3 = outputStream;
                outputStream2 = outputStream;
                outputStream.write(str2.getBytes());
                if (outputStream == null) {
                    return;
                }
            } catch (IOException e) {
                outputStream3 = outputStream2;
                Log.e(TAG, "Unable to serialize controller to disk", e);
                if (outputStream2 == null) {
                    return;
                }
                outputStream = outputStream2;
            }
            Utility.closeQuietly(outputStream);
        } catch (Throwable th) {
            if (outputStream3 != null) {
                Utility.closeQuietly(outputStream3);
            }
            throw th;
        }
    }

    private static String serializeToJson(LikeActionController likeActionController) {
        JSONObject convertToJSON;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JSON_INT_VERSION_KEY, 3);
            jSONObject.put("object_id", likeActionController.objectId);
            jSONObject.put("object_type", likeActionController.objectType.getValue());
            jSONObject.put(JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY, likeActionController.likeCountStringWithLike);
            jSONObject.put(JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY, likeActionController.likeCountStringWithoutLike);
            jSONObject.put(JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, likeActionController.socialSentenceWithLike);
            jSONObject.put(JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, likeActionController.socialSentenceWithoutLike);
            jSONObject.put(JSON_BOOL_IS_OBJECT_LIKED_KEY, likeActionController.isObjectLiked);
            jSONObject.put("unlike_token", likeActionController.unlikeToken);
            Bundle bundle = likeActionController.facebookDialogAnalyticsBundle;
            if (bundle != null && (convertToJSON = BundleJSONConverter.convertToJSON(bundle)) != null) {
                jSONObject.put(JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE, convertToJSON);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.e(TAG, "Unable to serialize controller to JSON", e);
            return null;
        }
    }

    private static void storeObjectIdForPendingController(String str) {
        objectIdForPendingController = str;
        FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).edit().putString(LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY, objectIdForPendingController).apply();
    }

    private void updateLikeState(boolean z) {
        updateState(z, this.likeCountStringWithLike, this.likeCountStringWithoutLike, this.socialSentenceWithLike, this.socialSentenceWithoutLike, this.unlikeToken);
    }

    public void updateState(boolean z, String str, String str2, String str3, String str4, String str5) {
        String coerceValueIfNullOrEmpty = Utility.coerceValueIfNullOrEmpty(str, null);
        String coerceValueIfNullOrEmpty2 = Utility.coerceValueIfNullOrEmpty(str2, null);
        String coerceValueIfNullOrEmpty3 = Utility.coerceValueIfNullOrEmpty(str3, null);
        String coerceValueIfNullOrEmpty4 = Utility.coerceValueIfNullOrEmpty(str4, null);
        String coerceValueIfNullOrEmpty5 = Utility.coerceValueIfNullOrEmpty(str5, null);
        if (!(z != this.isObjectLiked || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty, this.likeCountStringWithLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty2, this.likeCountStringWithoutLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty3, this.socialSentenceWithLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty4, this.socialSentenceWithoutLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty5, this.unlikeToken))) {
            return;
        }
        this.isObjectLiked = z;
        this.likeCountStringWithLike = coerceValueIfNullOrEmpty;
        this.likeCountStringWithoutLike = coerceValueIfNullOrEmpty2;
        this.socialSentenceWithLike = coerceValueIfNullOrEmpty3;
        this.socialSentenceWithoutLike = coerceValueIfNullOrEmpty4;
        this.unlikeToken = coerceValueIfNullOrEmpty5;
        serializeToDiskAsync(this);
        broadcastAction(this, ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
    }

    private static void verifyControllerAndInvokeCallback(LikeActionController likeActionController, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        FacebookException facebookException;
        LikeView.ObjectType mostSpecificObjectType = ShareInternalUtility.getMostSpecificObjectType(objectType, likeActionController.objectType);
        if (mostSpecificObjectType == null) {
            facebookException = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", likeActionController.objectId, likeActionController.objectType.toString(), objectType.toString());
            likeActionController = null;
        } else {
            likeActionController.objectType = mostSpecificObjectType;
            facebookException = null;
        }
        invokeCallbackWithController(creationCallback, likeActionController, facebookException);
    }

    @Deprecated
    public String getLikeCountString() {
        return this.isObjectLiked ? this.likeCountStringWithLike : this.likeCountStringWithoutLike;
    }

    @Deprecated
    public String getObjectId() {
        return this.objectId;
    }

    @Deprecated
    public String getSocialSentence() {
        return this.isObjectLiked ? this.socialSentenceWithLike : this.socialSentenceWithoutLike;
    }

    @Deprecated
    public boolean isObjectLiked() {
        return this.isObjectLiked;
    }

    @Deprecated
    public boolean shouldEnableView() {
        return false;
    }

    @Deprecated
    public void toggleLike(Activity activity, FragmentWrapper fragmentWrapper, Bundle bundle) {
        boolean z = !this.isObjectLiked;
        if (!canUseOGPublish()) {
            presentLikeDialog(activity, fragmentWrapper, bundle);
            return;
        }
        updateLikeState(z);
        if (this.isPendingLikeOrUnlike) {
            getAppEventsLogger().logEventImplicitly(AnalyticsEvents.EVENT_LIKE_VIEW_DID_UNDO_QUICKLY, bundle);
        } else if (publishLikeOrUnlikeAsync(z, bundle)) {
        } else {
            updateLikeState(!z);
            presentLikeDialog(activity, fragmentWrapper, bundle);
        }
    }
}
