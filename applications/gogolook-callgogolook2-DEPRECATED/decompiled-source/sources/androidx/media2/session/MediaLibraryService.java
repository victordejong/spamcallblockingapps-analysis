package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionService;
import androidx.versionedparcelable.VersionedParcelable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService.class */
public abstract class MediaLibraryService extends MediaSessionService {
    public static final String SERVICE_INTERFACE = "androidx.media2.session.MediaLibraryService";

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams.class */
    public static final class LibraryParams implements VersionedParcelable {
        public Bundle mBundle;
        public int mOffline;
        public int mRecent;
        public int mSuggested;

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams$Builder.class */
        public static final class Builder {
            public Bundle mBundle;
            public boolean mOffline;
            public boolean mRecent;
            public boolean mSuggested;

            @NonNull
            public LibraryParams build() {
                return new LibraryParams(this.mBundle, this.mRecent, this.mOffline, this.mSuggested);
            }

            @NonNull
            public Builder setExtras(@Nullable Bundle bundle) {
                this.mBundle = bundle;
                return this;
            }

            @NonNull
            public Builder setOffline(boolean z) {
                this.mOffline = z;
                return this;
            }

            @NonNull
            public Builder setRecent(boolean z) {
                this.mRecent = z;
                return this;
            }

            @NonNull
            public Builder setSuggested(boolean z) {
                this.mSuggested = z;
                return this;
            }
        }

        public LibraryParams() {
        }

        public LibraryParams(Bundle bundle, int i, int i2, int i3) {
            this.mBundle = bundle;
            this.mRecent = i;
            this.mOffline = i2;
            this.mSuggested = i3;
        }

        public LibraryParams(Bundle bundle, boolean z, boolean z2, boolean z3) {
            this(bundle, convertToInteger(z), convertToInteger(z2), convertToInteger(z3));
        }

        public static boolean convertToBoolean(int i) {
            return i != 0;
        }

        public static int convertToInteger(boolean z) {
            return z ? 1 : 0;
        }

        @Nullable
        public Bundle getExtras() {
            return this.mBundle;
        }

        public boolean isOffline() {
            return convertToBoolean(this.mOffline);
        }

        public boolean isRecent() {
            return convertToBoolean(this.mRecent);
        }

        public boolean isSuggested() {
            return convertToBoolean(this.mSuggested);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$MediaLibrarySession.class */
    public static final class MediaLibrarySession extends MediaSession {

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$MediaLibrarySession$Builder.class */
        public static final class Builder extends MediaSession.BuilderBase<MediaLibrarySession, Builder, MediaLibrarySessionCallback> {
            public Builder(@NonNull MediaLibraryService mediaLibraryService, @NonNull SessionPlayer sessionPlayer, @NonNull Executor executor, @NonNull MediaLibrarySessionCallback mediaLibrarySessionCallback) {
                super(mediaLibraryService, sessionPlayer);
                setSessionCallback(executor, mediaLibrarySessionCallback);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSession.BuilderBase
            @NonNull
            public MediaLibrarySession build() {
                if (this.mCallbackExecutor == null) {
                    this.mCallbackExecutor = ContextCompat.getMainExecutor(this.mContext);
                }
                if (this.mCallback == 0) {
                    this.mCallback = new MediaLibrarySessionCallback() { // from class: androidx.media2.session.MediaLibraryService.MediaLibrarySession.Builder.1
                    };
                }
                return new MediaLibrarySession(this.mContext, this.mId, this.mPlayer, this.mSessionActivity, this.mCallbackExecutor, this.mCallback, this.mExtras);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSession.BuilderBase
            @NonNull
            public Builder setExtras(@NonNull Bundle bundle) {
                return (Builder) super.setExtras(bundle);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSession.BuilderBase
            @NonNull
            public Builder setId(@NonNull String str) {
                return (Builder) super.setId(str);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSession.BuilderBase
            @NonNull
            public Builder setSessionActivity(@Nullable PendingIntent pendingIntent) {
                return (Builder) super.setSessionActivity(pendingIntent);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback.class */
        public static class MediaLibrarySessionCallback extends MediaSession.SessionCallback {
            @NonNull
            public LibraryResult onGetChildren(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @IntRange(from = 0) int i, @IntRange(from = 1) int i2, @Nullable LibraryParams libraryParams) {
                return new LibraryResult(-6);
            }

            @NonNull
            public LibraryResult onGetItem(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str) {
                return new LibraryResult(-6);
            }

            @NonNull
            public LibraryResult onGetLibraryRoot(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @Nullable LibraryParams libraryParams) {
                return new LibraryResult(-6);
            }

            @NonNull
            public LibraryResult onGetSearchResult(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @IntRange(from = 0) int i, @IntRange(from = 1) int i2, @Nullable LibraryParams libraryParams) {
                return new LibraryResult(-6);
            }

            public int onSearch(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @Nullable LibraryParams libraryParams) {
                return -6;
            }

            public int onSubscribe(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @Nullable LibraryParams libraryParams) {
                return -6;
            }

            public int onUnsubscribe(@NonNull MediaLibrarySession mediaLibrarySession, @NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str) {
                return -6;
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl.class */
        public interface MediaLibrarySessionImpl extends MediaSession.MediaSessionImpl {
            @Override // androidx.media2.session.MediaSession.MediaSessionImpl
            MediaLibrarySessionCallback getCallback();

            @Override // androidx.media2.session.MediaSession.MediaSessionImpl
            MediaLibrarySession getInstance();

            void notifyChildrenChanged(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, int i, @Nullable LibraryParams libraryParams);

            void notifyChildrenChanged(@NonNull String str, int i, @Nullable LibraryParams libraryParams);

            void notifySearchResultChanged(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, int i, @Nullable LibraryParams libraryParams);

            LibraryResult onGetChildrenOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, int i, int i2, @Nullable LibraryParams libraryParams);

            LibraryResult onGetItemOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str);

            LibraryResult onGetLibraryRootOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @Nullable LibraryParams libraryParams);

            LibraryResult onGetSearchResultOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, int i, int i2, @Nullable LibraryParams libraryParams);

            int onSearchOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @Nullable LibraryParams libraryParams);

            int onSubscribeOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @Nullable LibraryParams libraryParams);

            int onUnsubscribeOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str);
        }

        public MediaLibrarySession(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.SessionCallback sessionCallback, Bundle bundle) {
            super(context, str, sessionPlayer, pendingIntent, executor, sessionCallback, bundle);
        }

        @Override // androidx.media2.session.MediaSession
        public MediaLibrarySessionImpl createImpl(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.SessionCallback sessionCallback, Bundle bundle) {
            return new MediaLibrarySessionImplBase(this, context, str, sessionPlayer, pendingIntent, executor, sessionCallback, bundle);
        }

        @Override // androidx.media2.session.MediaSession
        public MediaLibrarySessionCallback getCallback() {
            return (MediaLibrarySessionCallback) super.getCallback();
        }

        @Override // androidx.media2.session.MediaSession
        public MediaLibrarySessionImpl getImpl() {
            return (MediaLibrarySessionImpl) super.getImpl();
        }

        public void notifyChildrenChanged(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @IntRange(from = 0) int i, @Nullable LibraryParams libraryParams) {
            if (controllerInfo == null) {
                throw new NullPointerException("controller shouldn't be null");
            } else if (str == null) {
                throw new NullPointerException("parentId shouldn't be null");
            } else if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("parentId shouldn't be empty");
            } else if (i >= 0) {
                getImpl().notifyChildrenChanged(controllerInfo, str, i, libraryParams);
            } else {
                throw new IllegalArgumentException("itemCount shouldn't be negative");
            }
        }

        public void notifyChildrenChanged(@NonNull String str, int i, @Nullable LibraryParams libraryParams) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("parentId shouldn't be empty");
            } else if (i >= 0) {
                getImpl().notifyChildrenChanged(str, i, libraryParams);
            } else {
                throw new IllegalArgumentException("itemCount shouldn't be negative");
            }
        }

        public void notifySearchResultChanged(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull String str, @IntRange(from = 0) int i, @Nullable LibraryParams libraryParams) {
            if (controllerInfo == null) {
                throw new NullPointerException("controller shouldn't be null");
            } else if (str == null) {
                throw new NullPointerException("query shouldn't be null");
            } else if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("query shouldn't be empty");
            } else if (i >= 0) {
                getImpl().notifySearchResultChanged(controllerInfo, str, i, libraryParams);
            } else {
                throw new IllegalArgumentException("itemCount shouldn't be negative");
            }
        }
    }

    @Override // androidx.media2.session.MediaSessionService
    public MediaSessionService.MediaSessionServiceImpl createImpl() {
        return new MediaLibraryServiceImplBase();
    }

    @Override // androidx.media2.session.MediaSessionService, android.app.Service
    public IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }

    @Override // androidx.media2.session.MediaSessionService
    @Nullable
    public abstract MediaLibrarySession onGetSession(@NonNull MediaSession.ControllerInfo controllerInfo);
}
