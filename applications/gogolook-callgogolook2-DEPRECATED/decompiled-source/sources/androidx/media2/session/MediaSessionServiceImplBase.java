package androidx.media2.session;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaSessionManager;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.session.IMediaSessionService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionService;
import androidx.versionedparcelable.ParcelImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionServiceImplBase.class */
public class MediaSessionServiceImplBase implements MediaSessionService.MediaSessionServiceImpl {
    public static final boolean DEBUG = true;
    public static final String TAG = "MSS2ImplBase";
    @GuardedBy("mLock")
    public MediaSessionService mInstance;
    @GuardedBy("mLock")
    public MediaNotificationHandler mNotificationHandler;
    @GuardedBy("mLock")
    public MediaSessionServiceStub mStub;
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public Map<String, MediaSession> mSessions = new ArrayMap();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub.class */
    public static final class MediaSessionServiceStub extends IMediaSessionService.Stub implements AutoCloseable {
        public final Handler mHandler;
        public final MediaSessionManager mMediaSessionManager;
        public final WeakReference<MediaSessionServiceImplBase> mServiceImpl;

        public MediaSessionServiceStub(MediaSessionServiceImplBase mediaSessionServiceImplBase) {
            this.mServiceImpl = new WeakReference<>(mediaSessionServiceImplBase);
            this.mHandler = new Handler(mediaSessionServiceImplBase.getInstance().getMainLooper());
            this.mMediaSessionManager = MediaSessionManager.getSessionManager(mediaSessionServiceImplBase.getInstance());
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            this.mServiceImpl.clear();
            this.mHandler.removeCallbacksAndMessages(null);
        }

        @Override // androidx.media2.session.IMediaSessionService
        public void connect(final IMediaController iMediaController, ParcelImpl parcelImpl) {
            if (this.mServiceImpl.get() != null) {
                final int callingPid = Binder.getCallingPid();
                final int callingUid = Binder.getCallingUid();
                long clearCallingIdentity = Binder.clearCallingIdentity();
                ConnectionRequest connectionRequest = (ConnectionRequest) MediaParcelUtils.fromParcelable(parcelImpl);
                if (callingPid == 0) {
                    callingPid = connectionRequest.getPid();
                }
                final String packageName = parcelImpl == null ? null : connectionRequest.getPackageName();
                final Bundle connectionHints = parcelImpl == null ? null : connectionRequest.getConnectionHints();
                try {
                    this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaSessionServiceImplBase.MediaSessionServiceStub.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Throwable th;
                            MediaSession onGetSession;
                            boolean z = true;
                            boolean z2 = true;
                            try {
                                MediaSessionServiceImplBase mediaSessionServiceImplBase = MediaSessionServiceStub.this.mServiceImpl.get();
                                if (mediaSessionServiceImplBase == null) {
                                    try {
                                        iMediaController.onDisconnected(0);
                                    } catch (RemoteException e) {
                                    }
                                } else {
                                    MediaSessionService instance = mediaSessionServiceImplBase.getInstance();
                                    if (instance == null) {
                                        try {
                                            iMediaController.onDisconnected(0);
                                        } catch (RemoteException e2) {
                                        }
                                    } else {
                                        MediaSessionManager.RemoteUserInfo remoteUserInfo = new MediaSessionManager.RemoteUserInfo(packageName, callingPid, callingUid);
                                        MediaSession.ControllerInfo controllerInfo = new MediaSession.ControllerInfo(remoteUserInfo, MediaSessionServiceStub.this.mMediaSessionManager.isTrustedForMediaControl(remoteUserInfo), null, connectionHints);
                                        String str = "Handling incoming connection request from the controller=" + controllerInfo;
                                        try {
                                            onGetSession = instance.onGetSession(controllerInfo);
                                        } catch (Exception e3) {
                                        }
                                        if (onGetSession == null) {
                                            String str2 = "Rejecting incoming connection request from the controller=" + controllerInfo;
                                            try {
                                                iMediaController.onDisconnected(0);
                                            } catch (RemoteException e4) {
                                            }
                                        } else {
                                            instance.addSession(onGetSession);
                                            try {
                                                onGetSession.handleControllerConnectionFromService(iMediaController, packageName, callingPid, callingUid, connectionHints);
                                            } catch (Exception e5) {
                                            } catch (Throwable th2) {
                                                th = th2;
                                                z = false;
                                                if (z) {
                                                    try {
                                                        iMediaController.onDisconnected(0);
                                                    } catch (RemoteException e6) {
                                                    }
                                                }
                                                throw th;
                                            }
                                            z2 = false;
                                            if (z2) {
                                                try {
                                                    iMediaController.onDisconnected(0);
                                                } catch (RemoteException e7) {
                                                }
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public void addSession(MediaSession mediaSession) {
        MediaSession mediaSession2;
        MediaNotificationHandler mediaNotificationHandler;
        synchronized (this.mLock) {
            mediaSession2 = this.mSessions.get(mediaSession.getId());
            if (mediaSession2 == null || mediaSession2 == mediaSession) {
                this.mSessions.put(mediaSession.getId(), mediaSession);
            } else {
                throw new IllegalArgumentException("Session ID should be unique");
            }
        }
        if (mediaSession2 == null) {
            synchronized (this.mLock) {
                mediaNotificationHandler = this.mNotificationHandler;
            }
            mediaNotificationHandler.onPlayerStateChanged(mediaSession, mediaSession.getPlayer().getPlayerState());
            mediaSession.getCallback().setForegroundServiceEventCallback(mediaNotificationHandler);
        }
    }

    public MediaSessionService getInstance() {
        MediaSessionService mediaSessionService;
        synchronized (this.mLock) {
            mediaSessionService = this.mInstance;
        }
        return mediaSessionService;
    }

    public IBinder getServiceBinder() {
        IBinder asBinder;
        synchronized (this.mLock) {
            asBinder = this.mStub != null ? this.mStub.asBinder() : null;
        }
        return asBinder;
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public List<MediaSession> getSessions() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            arrayList.addAll(this.mSessions.values());
        }
        return arrayList;
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public IBinder onBind(Intent intent) {
        MediaSession onGetSession;
        MediaSessionService instance = getInstance();
        if (instance == null) {
            return null;
        }
        String action = intent.getAction();
        char c = 65535;
        int hashCode = action.hashCode();
        if (hashCode != -2044151856) {
            if (hashCode == 1665850838 && action.equals(MediaBrowserServiceCompat.SERVICE_INTERFACE)) {
                c = 1;
            }
        } else if (action.equals(MediaSessionService.SERVICE_INTERFACE)) {
            c = 0;
        }
        if (c == 0) {
            return getServiceBinder();
        }
        if (c != 1 || (onGetSession = instance.onGetSession(new MediaSession.ControllerInfo(new MediaSessionManager.RemoteUserInfo(MediaBrowserServiceCompat.SERVICE_INTERFACE, 0, 0), false, null, null))) == null) {
            return null;
        }
        addSession(onGetSession);
        return onGetSession.getLegacyBrowerServiceBinder();
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public void onCreate(MediaSessionService mediaSessionService) {
        synchronized (this.mLock) {
            this.mInstance = mediaSessionService;
            this.mStub = new MediaSessionServiceStub(this);
            this.mNotificationHandler = new MediaNotificationHandler(mediaSessionService);
        }
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public void onDestroy() {
        synchronized (this.mLock) {
            this.mInstance = null;
            if (this.mStub != null) {
                this.mStub.close();
                this.mStub = null;
            }
        }
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public int onStartCommand(Intent intent, int i, int i2) {
        KeyEvent keyEvent;
        if (intent == null || intent.getAction() == null) {
            return 1;
        }
        String action = intent.getAction();
        char c = 65535;
        if (action.hashCode() == 1997055314 && action.equals("android.intent.action.MEDIA_BUTTON")) {
            c = 0;
        }
        if (c != 0) {
            return 1;
        }
        MediaSessionService instance = getInstance();
        if (instance == null) {
            Log.wtf(TAG, "Service hasn't created");
        }
        MediaSession session = MediaSession.getSession(intent.getData());
        MediaSession mediaSession = session;
        if (session == null) {
            mediaSession = instance.onGetSession(new MediaSession.ControllerInfo(new MediaSessionManager.RemoteUserInfo("android.intent.action.MEDIA_BUTTON", 0, 0), false, null, null));
        }
        if (mediaSession == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null) {
            return 1;
        }
        mediaSession.getSessionCompat().getController().dispatchMediaButtonEvent(keyEvent);
        return 1;
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public MediaSessionService.MediaNotification onUpdateNotification(MediaSession mediaSession) {
        MediaNotificationHandler mediaNotificationHandler;
        synchronized (this.mLock) {
            mediaNotificationHandler = this.mNotificationHandler;
        }
        if (mediaNotificationHandler != null) {
            return mediaNotificationHandler.onUpdateNotification(mediaSession);
        }
        throw new IllegalStateException("Service hasn't created");
    }

    @Override // androidx.media2.session.MediaSessionService.MediaSessionServiceImpl
    public void removeSession(MediaSession mediaSession) {
        synchronized (this.mLock) {
            this.mSessions.remove(mediaSession.getId());
        }
    }
}
