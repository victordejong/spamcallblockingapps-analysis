package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.b;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.media.b;
import androidx.media.f;
import androidx.media.session.MediaButtonReceiver;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: c  reason: collision with root package name */
    static int f446c;

    /* renamed from: a  reason: collision with root package name */
    public final b f447a;

    /* renamed from: b  reason: collision with root package name */
    public final MediaControllerCompat f448b;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<Object> f449d;

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private MediaSession.QueueItem mItemFwk;

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            } else if (j != -1) {
                this.mDescription = mediaDescriptionCompat;
                this.mId = j;
                this.mItemFwk = queueItem;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        public static QueueItem fromQueueItem(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
            return new QueueItem(queueItem, MediaDescriptionCompat.fromMediaDescription(queueItem.getDescription()), queueItem.getQueueId());
        }

        public static List<QueueItem> fromQueueItemList(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(fromQueueItem(it2.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public final long getQueueId() {
            return this.mId;
        }

        public final Object getQueueItem() {
            if (this.mItemFwk != null || Build.VERSION.SDK_INT < 21) {
                return this.mItemFwk;
            }
            MediaSession.QueueItem queueItem = new MediaSession.QueueItem((MediaDescription) this.mDescription.getMediaDescription(), this.mId);
            this.mItemFwk = queueItem;
            return queueItem;
        }

        public final String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.mDescription.writeToParcel(parcel, i);
            parcel.writeLong(this.mId);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };
        ResultReceiver mResultReceiver;

        ResultReceiverWrapper(Parcel parcel) {
            this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public ResultReceiverWrapper(ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.mResultReceiver.writeToParcel(parcel, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Token[] newArray(int i) {
                return new Token[i];
            }
        };
        private android.support.v4.media.session.b mExtraBinder;
        private final Object mInner;
        private final Object mLock;
        private androidx.versionedparcelable.c mSession2Token;

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, android.support.v4.media.session.b bVar) {
            this(obj, bVar, null);
        }

        Token(Object obj, android.support.v4.media.session.b bVar, androidx.versionedparcelable.c cVar) {
            this.mLock = new Object();
            this.mInner = obj;
            this.mExtraBinder = bVar;
            this.mSession2Token = cVar;
        }

        public static Token fromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            android.support.v4.media.session.b a2 = b.a.a(androidx.core.app.d.a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            androidx.versionedparcelable.c a3 = androidx.versionedparcelable.a.a(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
            Token token = (Token) bundle.getParcelable("android.support.v4.media.session.TOKEN");
            if (token == null) {
                return null;
            }
            return new Token(token.mInner, a2, a3);
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        public static Token fromToken(Object obj, android.support.v4.media.session.b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.mInner;
            if (obj2 == null) {
                return token.mInner == null;
            }
            Object obj3 = token.mInner;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public final android.support.v4.media.session.b getExtraBinder() {
            android.support.v4.media.session.b bVar;
            synchronized (this.mLock) {
                bVar = this.mExtraBinder;
            }
            return bVar;
        }

        public final androidx.versionedparcelable.c getSession2Token() {
            androidx.versionedparcelable.c cVar;
            synchronized (this.mLock) {
                cVar = this.mSession2Token;
            }
            return cVar;
        }

        public final Object getToken() {
            return this.mInner;
        }

        public final int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final void setExtraBinder(android.support.v4.media.session.b bVar) {
            synchronized (this.mLock) {
                this.mExtraBinder = bVar;
            }
        }

        public final void setSession2Token(androidx.versionedparcelable.c cVar) {
            synchronized (this.mLock) {
                this.mSession2Token = cVar;
            }
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
            synchronized (this.mLock) {
                android.support.v4.media.session.b bVar = this.mExtraBinder;
                if (bVar != null) {
                    androidx.core.app.d.a(bundle, "android.support.v4.media.session.EXTRA_BINDER", bVar.asBinder());
                }
                androidx.versionedparcelable.c cVar = this.mSession2Token;
                if (cVar != null) {
                    androidx.versionedparcelable.a.a(bundle, "android.support.v4.media.session.SESSION_TOKEN2", cVar);
                }
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.mInner, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.mInner);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a.class */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f451a;

        /* renamed from: b  reason: collision with root package name */
        final Object f452b = new Object();

        /* renamed from: c  reason: collision with root package name */
        final MediaSession.Callback f453c;

        /* renamed from: d  reason: collision with root package name */
        WeakReference<b> f454d;
        HandlerC0008a e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a$a.class */
        public final class HandlerC0008a extends Handler {
            HandlerC0008a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                b bVar;
                HandlerC0008a aVar;
                if (message.what == 1) {
                    synchronized (a.this.f452b) {
                        bVar = a.this.f454d.get();
                        aVar = a.this.e;
                    }
                    if (bVar != null && a.this == bVar.f() && aVar != null) {
                        bVar.a((b.C0073b) message.obj);
                        a.this.b(bVar, aVar);
                        bVar.a((b.C0073b) null);
                    }
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a$b.class */
        final class b extends MediaSession.Callback {
            b() {
            }

            private e a() {
                e eVar;
                synchronized (a.this.f452b) {
                    eVar = (e) a.this.f454d.get();
                }
                if (eVar == null || a.this != eVar.f()) {
                    return null;
                }
                return eVar;
            }

            private static void a(b bVar) {
                if (Build.VERSION.SDK_INT < 28) {
                    String d2 = bVar.d();
                    String str = d2;
                    if (TextUtils.isEmpty(d2)) {
                        str = "android.media.session.MediaController";
                    }
                    bVar.a(new b.C0073b(str, -1, -1));
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    try {
                        if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                            Bundle bundle2 = new Bundle();
                            Token token = a2.f460b;
                            android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                            androidx.core.app.d.a(bundle2, "android.support.v4.media.session.EXTRA_BINDER", extraBinder == null ? null : extraBinder.asBinder());
                            androidx.versionedparcelable.a.a(bundle2, "android.support.v4.media.session.SESSION_TOKEN2", token.getSession2Token());
                            resultReceiver.send(0, bundle2);
                        } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                            a.this.a((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                            a.this.a((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                        } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                            a.this.b((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        } else if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                            a.this.a(str, bundle, resultReceiver);
                        } else if (a2.h != null) {
                            int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                            QueueItem queueItem = (i < 0 || i >= a2.h.size()) ? null : a2.h.get(i);
                            if (queueItem != null) {
                                a.this.b(queueItem.getDescription());
                            }
                        }
                    } catch (BadParcelableException e) {
                        Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
                    }
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCustomAction(String str, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    try {
                        if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                            Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                            Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.a(bundle2);
                            a.this.b(uri, bundle2);
                        } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                            a.this.a();
                        } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                            String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                            Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.a(bundle3);
                            a.this.a(string, bundle3);
                        } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                            String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                            Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.a(bundle4);
                            a.this.b(string2, bundle4);
                        } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                            Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                            Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.a(bundle5);
                            a.this.a(uri2, bundle5);
                        } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                            bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                        } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                            a.this.a(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                        } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                            a.this.b(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                        } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                            RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
                            MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                            a.this.b(ratingCompat);
                        } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                            a.this.a(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                        }
                    } catch (BadParcelableException e) {
                        Log.e("MediaSessionCompat", "Could not unparcel the data.");
                    }
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onFastForward() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.f();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final boolean onMediaButtonEvent(Intent intent) {
                e a2 = a();
                if (a2 == null) {
                    return false;
                }
                a(a2);
                boolean a3 = a.this.a(intent);
                a2.a((b.C0073b) null);
                return a3 || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPause() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.c();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlay() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.b();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromMediaId(String str, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.c(str, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromSearch(String str, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.d(str, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromUri(Uri uri, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.b(uri, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepare() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.a();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.a(str, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromSearch(String str, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.b(str, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                e a2 = a();
                if (a2 != null) {
                    MediaSessionCompat.a(bundle);
                    a(a2);
                    a.this.a(uri, bundle);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onRewind() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.g();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSeekTo(long j) {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.b(j);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetPlaybackSpeed(float f) {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.a(f);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetRating(Rating rating) {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.a(RatingCompat.fromRating(rating));
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToNext() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.d();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToPrevious() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.e();
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToQueueItem(long j) {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.a(j);
                    a2.a((b.C0073b) null);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onStop() {
                e a2 = a();
                if (a2 != null) {
                    a(a2);
                    a.this.h();
                    a2.a((b.C0073b) null);
                }
            }
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f453c = new b();
            } else {
                this.f453c = null;
            }
            this.f454d = new WeakReference<>(null);
        }

        public void a() {
        }

        public void a(float f) {
        }

        public void a(int i) {
        }

        public void a(long j) {
        }

        public void a(Uri uri, Bundle bundle) {
        }

        public void a(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void a(RatingCompat ratingCompat) {
        }

        final void a(b bVar, Handler handler) {
            synchronized (this.f452b) {
                this.f454d = new WeakReference<>(bVar);
                HandlerC0008a aVar = this.e;
                if (aVar != null) {
                    aVar.removeCallbacksAndMessages(null);
                }
                HandlerC0008a aVar2 = null;
                if (bVar != null) {
                    aVar2 = handler == null ? null : new HandlerC0008a(handler.getLooper());
                }
                this.e = aVar2;
            }
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public final boolean a(Intent intent) {
            b bVar;
            HandlerC0008a aVar;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.f452b) {
                bVar = this.f454d.get();
                aVar = this.e;
            }
            if (bVar == null || aVar == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            b.C0073b e = bVar.e();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                b(bVar, aVar);
                return false;
            } else if (keyEvent.getRepeatCount() != 0) {
                b(bVar, aVar);
                return true;
            } else if (this.f451a) {
                aVar.removeMessages(1);
                this.f451a = false;
                PlaybackStateCompat c2 = bVar.c();
                if (((c2 == null ? 0L : c2.getActions()) & 32) == 0) {
                    return true;
                }
                d();
                return true;
            } else {
                this.f451a = true;
                aVar.sendMessageDelayed(aVar.obtainMessage(1, e), ViewConfiguration.getDoubleTapTimeout());
                return true;
            }
        }

        public void b() {
        }

        public void b(int i) {
        }

        public void b(long j) {
        }

        public void b(Uri uri, Bundle bundle) {
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void b(RatingCompat ratingCompat) {
        }

        final void b(b bVar, Handler handler) {
            if (this.f451a) {
                boolean z = false;
                this.f451a = false;
                handler.removeMessages(1);
                PlaybackStateCompat c2 = bVar.c();
                long actions = c2 == null ? 0L : c2.getActions();
                boolean z2 = c2 != null && c2.getState() == 3;
                boolean z3 = (516 & actions) != 0;
                if ((actions & 514) != 0) {
                    z = true;
                }
                if (z2 && z) {
                    c();
                } else if (!z2 && z3) {
                    b();
                }
            }
        }

        public void b(String str, Bundle bundle) {
        }

        public void c() {
        }

        public void c(String str, Bundle bundle) {
        }

        public void d() {
        }

        public void d(String str, Bundle bundle) {
        }

        public void e() {
        }

        public void f() {
        }

        public void g() {
        }

        public void h() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$b.class */
    public interface b {
        void a();

        void a(int i);

        void a(PendingIntent pendingIntent);

        void a(MediaMetadataCompat mediaMetadataCompat);

        void a(a aVar, Handler handler);

        void a(PlaybackStateCompat playbackStateCompat);

        void a(b.C0073b bVar);

        void a(androidx.media.f fVar);

        void a(CharSequence charSequence);

        void a(List<QueueItem> list);

        void a(boolean z);

        Token b();

        void b(int i);

        void b(PendingIntent pendingIntent);

        PlaybackStateCompat c();

        void c(int i);

        String d();

        void d(int i);

        b.C0073b e();

        a f();
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$c.class */
    static class c extends h {
        private static boolean y = true;

        c(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(context, str, componentName, pendingIntent, cVar, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.h
        int a(long j) {
            int a2 = super.a(j);
            int i = a2;
            if ((j & 256) != 0) {
                i = a2 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            }
            return i;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.h
        final void a(PendingIntent pendingIntent, ComponentName componentName) {
            if (y) {
                try {
                    this.f467d.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException e) {
                    Log.w("MediaSessionCompat", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    y = false;
                }
            }
            if (!y) {
                super.a(pendingIntent, componentName);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.h, android.support.v4.media.session.MediaSessionCompat.b
        public void a(a aVar, Handler handler) {
            super.a(aVar, handler);
            if (aVar == null) {
                this.e.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.e.setPlaybackPositionUpdateListener(new RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.c.1
                @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
                public final void onPlaybackPositionUpdate(long j) {
                    c.this.a(18, -1, -1, Long.valueOf(j), null);
                }
            });
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.h
        final void b(PendingIntent pendingIntent, ComponentName componentName) {
            if (y) {
                this.f467d.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.b(pendingIntent, componentName);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v11, types: [android.media.RemoteControlClient] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v10 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4, types: [long] */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v7 */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // android.support.v4.media.session.MediaSessionCompat.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void b(android.support.v4.media.session.PlaybackStateCompat r7) {
            /*
                r6 = this;
                r0 = r7
                long r0 = r0.getPosition()
                r8 = r0
                r0 = r7
                float r0 = r0.getPlaybackSpeed()
                r10 = r0
                r0 = r7
                long r0 = r0.getLastPositionUpdateTime()
                r11 = r0
                long r0 = android.os.SystemClock.elapsedRealtime()
                r13 = r0
                r0 = r8
                r15 = r0
                r0 = r7
                int r0 = r0.getState()
                r1 = 3
                if (r0 != r1) goto L_0x0064
                r0 = 0
                r17 = r0
                r0 = r8
                r15 = r0
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0064
                r0 = r17
                r15 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x005e
                r0 = r13
                r1 = r11
                long r0 = r0 - r1
                r17 = r0
                r0 = r17
                r15 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x005e
                r0 = r17
                r15 = r0
                r0 = r10
                r1 = 1065353216(0x3f800000, float:1.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x005e
                r0 = r17
                float r0 = (float) r0
                r1 = r10
                float r0 = r0 * r1
                long r0 = (long) r0
                r15 = r0
            L_0x005e:
                r0 = r8
                r1 = r15
                long r0 = r0 + r1
                r15 = r0
            L_0x0064:
                r0 = r6
                android.media.RemoteControlClient r0 = r0.e
                r1 = r7
                int r1 = r1.getState()
                int r1 = f(r1)
                r2 = r15
                r3 = r10
                r0.setPlaybackState(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.c.b(android.support.v4.media.session.PlaybackStateCompat):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$d.class */
    static final class d extends c {
        d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(context, str, componentName, pendingIntent, cVar, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c, android.support.v4.media.session.MediaSessionCompat.h
        final int a(long j) {
            int a2 = super.a(j);
            int i = a2;
            if ((j & 128) != 0) {
                i = a2 | 512;
            }
            return i;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.h
        final RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor a2 = super.a(bundle);
            if (((this.m == null ? 0L : this.m.getActions()) & 128) != 0) {
                a2.addEditableKey(268435457);
            }
            if (bundle == null) {
                return a2;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                a2.putLong(8, bundle.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                a2.putObject(101, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                a2.putObject(268435457, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return a2;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c, android.support.v4.media.session.MediaSessionCompat.h, android.support.v4.media.session.MediaSessionCompat.b
        public final void a(a aVar, Handler handler) {
            super.a(aVar, handler);
            if (aVar == null) {
                this.e.setMetadataUpdateListener(null);
                return;
            }
            this.e.setMetadataUpdateListener(new RemoteControlClient.OnMetadataUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.d.1
                @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
                public final void onMetadataUpdate(int i, Object obj) {
                    if (i == 268435457 && (obj instanceof Rating)) {
                        d.this.a(19, -1, -1, RatingCompat.fromRating(obj), null);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$e.class */
    public static class e implements b {

        /* renamed from: a  reason: collision with root package name */
        final MediaSession f459a;

        /* renamed from: b  reason: collision with root package name */
        final Token f460b;

        /* renamed from: d  reason: collision with root package name */
        Bundle f462d;
        PlaybackStateCompat g;
        List<QueueItem> h;
        MediaMetadataCompat i;
        int j;
        boolean k;
        int l;
        int m;
        a n;
        b.C0073b o;

        /* renamed from: c  reason: collision with root package name */
        final Object f461c = new Object();
        boolean e = false;
        final RemoteCallbackList<android.support.v4.media.session.a> f = new RemoteCallbackList<>();

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$e$a.class */
        final class a extends b.a {
            a() {
            }

            @Override // android.support.v4.media.session.b
            public final void a(float f) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(android.support.v4.media.session.a aVar) {
                if (!e.this.e) {
                    e.this.f.register(aVar, new b.C0073b("android.media.session.MediaController", getCallingPid(), getCallingUid()));
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void a(boolean z) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final boolean a() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final boolean a(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final String b() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(long j) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(android.support.v4.media.session.a aVar) {
                e.this.f.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public final void b(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void b(boolean z) throws RemoteException {
            }

            @Override // android.support.v4.media.session.b
            public final String c() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void c(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void c(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final PendingIntent d() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void d(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final long e() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void e(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final ParcelableVolumeInfo f() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final MediaMetadataCompat g() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final PlaybackStateCompat h() {
                return MediaSessionCompat.a(e.this.g, e.this.i);
            }

            @Override // android.support.v4.media.session.b
            public final List<QueueItem> i() {
                return null;
            }

            @Override // android.support.v4.media.session.b
            public final CharSequence j() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final Bundle k() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final int l() {
                return e.this.j;
            }

            @Override // android.support.v4.media.session.b
            public final boolean m() {
                return e.this.k;
            }

            @Override // android.support.v4.media.session.b
            public final int n() {
                return e.this.l;
            }

            @Override // android.support.v4.media.session.b
            public final boolean o() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public final int p() {
                return e.this.m;
            }

            @Override // android.support.v4.media.session.b
            public final Bundle q() {
                if (e.this.f462d == null) {
                    return null;
                }
                return new Bundle(e.this.f462d);
            }

            @Override // android.support.v4.media.session.b
            public final void r() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void s() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void t() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void u() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void v() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void w() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void x() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public final void y() throws RemoteException {
                throw new AssertionError();
            }
        }

        e(MediaSession mediaSession, androidx.versionedparcelable.c cVar, Bundle bundle) {
            this.f459a = mediaSession;
            this.f460b = new Token(mediaSession.getSessionToken(), new a(), cVar);
            this.f462d = bundle;
            a(3);
        }

        e(Object obj) {
            if (obj instanceof MediaSession) {
                MediaSession mediaSession = (MediaSession) obj;
                this.f459a = mediaSession;
                this.f460b = new Token(mediaSession.getSessionToken(), new a());
                this.f462d = null;
                a(3);
                return;
            }
            throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a() {
            this.e = true;
            this.f.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = this.f459a.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(this.f459a);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception e) {
                    Log.w("MediaSessionCompat", "Exception happened while accessing MediaSession.mCallback.", e);
                }
            }
            this.f459a.setCallback(null);
            this.f459a.release();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(int i) {
            this.f459a.setFlags(i | 1 | 2);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(PendingIntent pendingIntent) {
            this.f459a.setSessionActivity(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(MediaMetadataCompat mediaMetadataCompat) {
            this.i = mediaMetadataCompat;
            this.f459a.setMetadata(mediaMetadataCompat == null ? null : (MediaMetadata) mediaMetadataCompat.getMediaMetadata());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(a aVar, Handler handler) {
            synchronized (this.f461c) {
                this.n = aVar;
                this.f459a.setCallback(aVar == null ? null : aVar.f453c, handler);
                if (aVar != null) {
                    aVar.a(this, handler);
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004f -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(PlaybackStateCompat playbackStateCompat) {
            this.g = playbackStateCompat;
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.f.finishBroadcast();
            this.f459a.setPlaybackState(playbackStateCompat == null ? null : (PlaybackState) playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(b.C0073b bVar) {
            synchronized (this.f461c) {
                this.o = bVar;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(final androidx.media.f fVar) {
            MediaSession mediaSession = this.f459a;
            if (fVar.f == null) {
                if (Build.VERSION.SDK_INT >= 30) {
                    fVar.f = new VolumeProvider(fVar.f2720a, fVar.f2721b, fVar.f2723d, fVar.f2722c) { // from class: androidx.media.f.1
                        @Override // android.media.VolumeProvider
                        public final void onAdjustVolume(int i) {
                        }

                        @Override // android.media.VolumeProvider
                        public final void onSetVolumeTo(int i) {
                        }
                    };
                } else if (Build.VERSION.SDK_INT >= 21) {
                    fVar.f = new VolumeProvider(fVar.f2720a, fVar.f2721b, fVar.f2723d) { // from class: androidx.media.f.2
                        @Override // android.media.VolumeProvider
                        public final void onAdjustVolume(int i) {
                        }

                        @Override // android.media.VolumeProvider
                        public final void onSetVolumeTo(int i) {
                        }
                    };
                }
            }
            mediaSession.setPlaybackToRemote(fVar.f);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(CharSequence charSequence) {
            this.f459a.setQueueTitle(charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(List<QueueItem> list) {
            this.h = list;
            if (list == null) {
                this.f459a.setQueue(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (QueueItem queueItem : list) {
                arrayList.add((MediaSession.QueueItem) queueItem.getQueueItem());
            }
            this.f459a.setQueue(arrayList);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(boolean z) {
            this.f459a.setActive(true);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final Token b() {
            return this.f460b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void b(int i) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setLegacyStreamType(i);
            this.f459a.setPlaybackToLocal(builder.build());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void b(PendingIntent pendingIntent) {
            this.f459a.setMediaButtonReceiver(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final PlaybackStateCompat c() {
            return this.g;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void c(int i) {
            if (this.l != i) {
                this.l = i;
                for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f.getBroadcastItem(beginBroadcast).a(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final String d() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.f459a.getClass().getMethod("getCallingPackage", new Class[0]).invoke(this.f459a, new Object[0]);
            } catch (Exception e) {
                Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e);
                return null;
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void d(int i) {
            if (this.m != i) {
                this.m = i;
                for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f.getBroadcastItem(beginBroadcast).b(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public b.C0073b e() {
            b.C0073b bVar;
            synchronized (this.f461c) {
                bVar = this.o;
            }
            return bVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final a f() {
            a aVar;
            synchronized (this.f461c) {
                aVar = this.n;
            }
            return aVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$f.class */
    static class f extends e {
        f(MediaSession mediaSession, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(mediaSession, cVar, bundle);
        }

        f(Object obj) {
            super(obj);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.e, android.support.v4.media.session.MediaSessionCompat.b
        public final void a(b.C0073b bVar) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.e, android.support.v4.media.session.MediaSessionCompat.b
        public final b.C0073b e() {
            return new b.C0073b(this.f459a.getCurrentControllerInfo());
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$g.class */
    static final class g extends f {
        g(MediaSession mediaSession, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(mediaSession, cVar, bundle);
        }

        g(Object obj) {
            super(obj);
            this.f462d = ((MediaSession) obj).getController().getSessionInfo();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h.class */
    public static class h implements b {
        private final PendingIntent A;
        private final b B;
        private final Token C;
        private c D;
        private b.C0073b E;

        /* renamed from: a  reason: collision with root package name */
        final String f464a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f465b;

        /* renamed from: c  reason: collision with root package name */
        final String f466c;

        /* renamed from: d  reason: collision with root package name */
        final AudioManager f467d;
        final RemoteControlClient e;
        volatile a j;
        MediaMetadataCompat l;
        PlaybackStateCompat m;
        PendingIntent n;
        List<QueueItem> o;
        CharSequence p;
        int q;
        boolean r;
        int s;
        int t;
        Bundle u;
        int v;
        int w;
        androidx.media.f x;
        private final Context y;
        private final ComponentName z;
        final Object f = new Object();
        final RemoteCallbackList<android.support.v4.media.session.a> g = new RemoteCallbackList<>();
        boolean h = false;
        boolean i = false;
        int k = 3;
        private f.a F = new f.a() { // from class: android.support.v4.media.session.MediaSessionCompat.h.1
        };

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$a.class */
        static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f469a;

            /* renamed from: b  reason: collision with root package name */
            public final Bundle f470b;

            /* renamed from: c  reason: collision with root package name */
            public final ResultReceiver f471c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f469a = str;
                this.f470b = bundle;
                this.f471c = resultReceiver;
            }
        }

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$b.class */
        final class b extends b.a {
            b() {
            }

            private void a(int i, int i2) {
                h.this.a(i, i2, 0, null, null);
            }

            private void a(int i, Object obj) {
                h.this.a(i, 0, 0, obj, null);
            }

            private void a(int i, Object obj, Bundle bundle) {
                h.this.a(i, 0, 0, obj, bundle);
            }

            private void d(int i) {
                h.this.a(i, 0, 0, null, null);
            }

            @Override // android.support.v4.media.session.b
            public final void a(float f) throws RemoteException {
                a(32, Float.valueOf(f));
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i) {
                a(28, i);
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i, int i2, String str) {
                h.this.a(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public final void a(long j) {
                a(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public final void a(Uri uri, Bundle bundle) throws RemoteException {
                a(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat) {
                a(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                h.this.a(26, i, 0, mediaDescriptionCompat, null);
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat) throws RemoteException {
                a(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                a(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final void a(android.support.v4.media.session.a aVar) {
                if (h.this.h) {
                    try {
                        aVar.a();
                    } catch (Exception e) {
                    }
                } else {
                    h.this.g.register(aVar, new b.C0073b(h.this.e(getCallingUid()), getCallingPid(), getCallingUid()));
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle) throws RemoteException {
                a(4, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                a(1, new a(str, bundle, resultReceiverWrapper == null ? null : resultReceiverWrapper.mResultReceiver));
            }

            @Override // android.support.v4.media.session.b
            public final void a(boolean z) throws RemoteException {
                a(29, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.b
            public final boolean a() {
                return true;
            }

            @Override // android.support.v4.media.session.b
            public final boolean a(KeyEvent keyEvent) {
                a(21, keyEvent);
                return true;
            }

            @Override // android.support.v4.media.session.b
            public final String b() {
                return h.this.f464a;
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i) throws RemoteException {
                a(23, i);
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i, int i2, String str) {
                h.this.b(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public final void b(long j) throws RemoteException {
                a(18, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public final void b(Uri uri, Bundle bundle) throws RemoteException {
                a(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final void b(MediaDescriptionCompat mediaDescriptionCompat) {
                a(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public final void b(android.support.v4.media.session.a aVar) {
                h.this.g.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public final void b(String str, Bundle bundle) throws RemoteException {
                a(5, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final void b(boolean z) throws RemoteException {
            }

            @Override // android.support.v4.media.session.b
            public final String c() {
                return h.this.f466c;
            }

            @Override // android.support.v4.media.session.b
            public final void c(int i) throws RemoteException {
                a(30, i);
            }

            @Override // android.support.v4.media.session.b
            public final void c(String str, Bundle bundle) throws RemoteException {
                a(8, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final PendingIntent d() {
                PendingIntent pendingIntent;
                synchronized (h.this.f) {
                    pendingIntent = h.this.n;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.b
            public final void d(String str, Bundle bundle) throws RemoteException {
                a(9, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final long e() {
                long j;
                synchronized (h.this.f) {
                    j = h.this.k;
                }
                return j;
            }

            @Override // android.support.v4.media.session.b
            public final void e(String str, Bundle bundle) throws RemoteException {
                a(20, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public final ParcelableVolumeInfo f() {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                synchronized (h.this.f) {
                    i = h.this.v;
                    i2 = h.this.w;
                    androidx.media.f fVar = h.this.x;
                    if (i == 2) {
                        i5 = fVar.f2720a;
                        i4 = fVar.f2721b;
                        i3 = fVar.f2723d;
                    } else {
                        i4 = h.this.f467d.getStreamMaxVolume(i2);
                        i3 = h.this.f467d.getStreamVolume(i2);
                        i5 = 2;
                    }
                }
                return new ParcelableVolumeInfo(i, i2, i5, i4, i3);
            }

            @Override // android.support.v4.media.session.b
            public final MediaMetadataCompat g() {
                return h.this.l;
            }

            @Override // android.support.v4.media.session.b
            public final PlaybackStateCompat h() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (h.this.f) {
                    playbackStateCompat = h.this.m;
                    mediaMetadataCompat = h.this.l;
                }
                return MediaSessionCompat.a(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.b
            public final List<QueueItem> i() {
                List<QueueItem> list;
                synchronized (h.this.f) {
                    list = h.this.o;
                }
                return list;
            }

            @Override // android.support.v4.media.session.b
            public final CharSequence j() {
                return h.this.p;
            }

            @Override // android.support.v4.media.session.b
            public final Bundle k() {
                Bundle bundle;
                synchronized (h.this.f) {
                    bundle = h.this.u;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.b
            public final int l() {
                return h.this.q;
            }

            @Override // android.support.v4.media.session.b
            public final boolean m() {
                return h.this.r;
            }

            @Override // android.support.v4.media.session.b
            public final int n() {
                return h.this.s;
            }

            @Override // android.support.v4.media.session.b
            public final boolean o() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public final int p() {
                return h.this.t;
            }

            @Override // android.support.v4.media.session.b
            public final Bundle q() {
                if (h.this.f465b == null) {
                    return null;
                }
                return new Bundle(h.this.f465b);
            }

            @Override // android.support.v4.media.session.b
            public final void r() throws RemoteException {
                d(3);
            }

            @Override // android.support.v4.media.session.b
            public final void s() throws RemoteException {
                d(7);
            }

            @Override // android.support.v4.media.session.b
            public final void t() throws RemoteException {
                d(12);
            }

            @Override // android.support.v4.media.session.b
            public final void u() throws RemoteException {
                d(13);
            }

            @Override // android.support.v4.media.session.b
            public final void v() throws RemoteException {
                d(14);
            }

            @Override // android.support.v4.media.session.b
            public final void w() throws RemoteException {
                d(15);
            }

            @Override // android.support.v4.media.session.b
            public final void x() throws RemoteException {
                d(16);
            }

            @Override // android.support.v4.media.session.b
            public final void y() throws RemoteException {
                d(17);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$c.class */
        public final class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                a aVar = h.this.j;
                if (aVar != null) {
                    Bundle data = message.getData();
                    MediaSessionCompat.a(data);
                    h.this.a(new b.C0073b(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                    Bundle bundle = data.getBundle("data_extras");
                    MediaSessionCompat.a(bundle);
                    try {
                        switch (message.what) {
                            case 1:
                                a aVar2 = (a) message.obj;
                                aVar.a(aVar2.f469a, aVar2.f470b, aVar2.f471c);
                                break;
                            case 2:
                                h.this.a(message.arg1, 0);
                                break;
                            case 3:
                                aVar.a();
                                break;
                            case 4:
                                aVar.a((String) message.obj, bundle);
                                break;
                            case 5:
                                aVar.b((String) message.obj, bundle);
                                break;
                            case 6:
                                aVar.a((Uri) message.obj, bundle);
                                break;
                            case 7:
                                aVar.b();
                                break;
                            case 8:
                                aVar.c((String) message.obj, bundle);
                                break;
                            case 9:
                                aVar.d((String) message.obj, bundle);
                                break;
                            case 10:
                                aVar.b((Uri) message.obj, bundle);
                                break;
                            case 11:
                                aVar.a(((Long) message.obj).longValue());
                                break;
                            case 12:
                                aVar.c();
                                break;
                            case 13:
                                aVar.h();
                                break;
                            case 14:
                                aVar.d();
                                break;
                            case 15:
                                aVar.e();
                                break;
                            case 16:
                                aVar.f();
                                break;
                            case 17:
                                aVar.g();
                                break;
                            case 18:
                                aVar.b(((Long) message.obj).longValue());
                                break;
                            case 19:
                                aVar.a((RatingCompat) message.obj);
                                break;
                            case 20:
                                Object obj = message.obj;
                                break;
                            case 21:
                                KeyEvent keyEvent = (KeyEvent) message.obj;
                                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                                intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                                if (!aVar.a(intent) && keyEvent != null && keyEvent.getAction() == 0) {
                                    long actions = h.this.m == null ? 0L : h.this.m.getActions();
                                    int keyCode = keyEvent.getKeyCode();
                                    if (keyCode != 79) {
                                        if (keyCode == 126) {
                                            if ((actions & 4) != 0) {
                                                aVar.b();
                                                break;
                                            }
                                        } else if (keyCode == 127) {
                                            if ((actions & 2) != 0) {
                                                aVar.c();
                                                break;
                                            }
                                        } else {
                                            switch (keyCode) {
                                                case 86:
                                                    if ((actions & 1) != 0) {
                                                        aVar.h();
                                                        break;
                                                    }
                                                    break;
                                                case 87:
                                                    if ((actions & 32) != 0) {
                                                        aVar.d();
                                                        break;
                                                    }
                                                    break;
                                                case 88:
                                                    if ((actions & 16) != 0) {
                                                        aVar.e();
                                                        break;
                                                    }
                                                    break;
                                                case 89:
                                                    if ((actions & 8) != 0) {
                                                        aVar.g();
                                                        break;
                                                    }
                                                    break;
                                                case 90:
                                                    if ((actions & 64) != 0) {
                                                        aVar.f();
                                                        break;
                                                    }
                                                    break;
                                            }
                                        }
                                    }
                                    Log.w("MediaSessionCompat", "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
                                    break;
                                }
                                break;
                            case 22:
                                h.this.b(message.arg1, 0);
                                break;
                            case 23:
                                aVar.a(message.arg1);
                                break;
                            case 25:
                                aVar.a((MediaDescriptionCompat) message.obj);
                                break;
                            case 26:
                                aVar.a((MediaDescriptionCompat) message.obj, message.arg1);
                                break;
                            case 27:
                                aVar.b((MediaDescriptionCompat) message.obj);
                                break;
                            case 28:
                                if (h.this.o != null) {
                                    QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= h.this.o.size()) ? null : h.this.o.get(message.arg1);
                                    if (queueItem != null) {
                                        aVar.b(queueItem.getDescription());
                                        break;
                                    }
                                }
                                break;
                            case 29:
                                ((Boolean) message.obj).booleanValue();
                                break;
                            case 30:
                                aVar.b(message.arg1);
                                break;
                            case 31:
                                aVar.b((RatingCompat) message.obj);
                                break;
                            case 32:
                                aVar.a(((Float) message.obj).floatValue());
                                break;
                        }
                    } finally {
                        h.this.a((b.C0073b) null);
                    }
                }
            }
        }

        public h(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, androidx.versionedparcelable.c cVar, Bundle bundle) {
            if (componentName != null) {
                this.y = context;
                this.f464a = context.getPackageName();
                this.f465b = bundle;
                this.f467d = (AudioManager) context.getSystemService("audio");
                this.f466c = str;
                this.z = componentName;
                this.A = pendingIntent;
                b bVar = new b();
                this.B = bVar;
                this.C = new Token(bVar, null, cVar);
                this.q = 0;
                this.v = 1;
                this.w = 3;
                this.e = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void a(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a(parcelableVolumeInfo);
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
        }

        static int f(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        private void g() {
            if (this.i) {
                a(this.A, this.z);
                this.f467d.registerRemoteControlClient(this.e);
                a(this.l);
                a(this.m);
                return;
            }
            b(this.A, this.z);
            this.e.setPlaybackState(0);
            this.f467d.unregisterRemoteControlClient(this.e);
        }

        int a(long j) {
            int i = (1 & j) != 0 ? 32 : 0;
            int i2 = i;
            if ((2 & j) != 0) {
                i2 = i | 16;
            }
            int i3 = i2;
            if ((4 & j) != 0) {
                i3 = i2 | 4;
            }
            int i4 = i3;
            if ((8 & j) != 0) {
                i4 = i3 | 2;
            }
            int i5 = i4;
            if ((16 & j) != 0) {
                i5 = i4 | 1;
            }
            int i6 = i5;
            if ((32 & j) != 0) {
                i6 = i5 | 128;
            }
            int i7 = i6;
            if ((64 & j) != 0) {
                i7 = i6 | 64;
            }
            int i8 = i7;
            if ((j & 512) != 0) {
                i8 = i7 | 8;
            }
            return i8;
        }

        RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.e.editMetadata(true);
            if (bundle == null) {
                return editMetadata;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ART)) {
                Bitmap bitmap = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ART);
                Bitmap bitmap2 = bitmap;
                if (bitmap != null) {
                    bitmap2 = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            } else if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ART)) {
                Bitmap bitmap3 = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ALBUM_ART);
                Bitmap bitmap4 = bitmap3;
                if (bitmap3 != null) {
                    bitmap4 = bitmap3.copy(bitmap3.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap4);
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
                editMetadata.putString(1, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST)) {
                editMetadata.putString(13, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                editMetadata.putString(2, bundle.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_AUTHOR)) {
                editMetadata.putString(3, bundle.getString(MediaMetadataCompat.METADATA_KEY_AUTHOR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPILATION)) {
                editMetadata.putString(15, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPILATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPOSER)) {
                editMetadata.putString(4, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPOSER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DATE)) {
                editMetadata.putString(5, bundle.getString(MediaMetadataCompat.METADATA_KEY_DATE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER)) {
                editMetadata.putLong(14, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                editMetadata.putLong(9, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DURATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_GENRE)) {
                editMetadata.putString(6, bundle.getString(MediaMetadataCompat.METADATA_KEY_GENRE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
                editMetadata.putString(7, bundle.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER)) {
                editMetadata.putLong(0, bundle.getLong(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_WRITER)) {
                editMetadata.putString(11, bundle.getString(MediaMetadataCompat.METADATA_KEY_WRITER));
            }
            return editMetadata;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0049 -> B:7:0x002e). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a() {
            this.i = false;
            this.h = true;
            g();
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a();
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
            this.g.kill();
            a((a) null, (Handler) null);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(int i) {
            synchronized (this.f) {
                this.k = i | 1 | 2;
            }
        }

        final void a(int i, int i2) {
            if (this.v != 2) {
                this.f467d.adjustStreamVolume(this.w, i, i2);
            } else if (this.x == null) {
            }
        }

        final void a(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.f) {
                c cVar = this.D;
                if (cVar != null) {
                    Message obtainMessage = cVar.obtainMessage(i, i2, i3, obj);
                    Bundle bundle2 = new Bundle();
                    int callingUid = Binder.getCallingUid();
                    bundle2.putInt("data_calling_uid", callingUid);
                    bundle2.putString("data_calling_pkg", e(callingUid));
                    int callingPid = Binder.getCallingPid();
                    if (callingPid > 0) {
                        bundle2.putInt("data_calling_pid", callingPid);
                    } else {
                        bundle2.putInt("data_calling_pid", -1);
                    }
                    if (bundle != null) {
                        bundle2.putBundle("data_extras", bundle);
                    }
                    obtainMessage.setData(bundle2);
                    obtainMessage.sendToTarget();
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(PendingIntent pendingIntent) {
            synchronized (this.f) {
                this.n = pendingIntent;
            }
        }

        void a(PendingIntent pendingIntent, ComponentName componentName) {
            this.f467d.registerMediaButtonEventReceiver(componentName);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0075 -> B:15:0x0044). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(MediaMetadataCompat mediaMetadataCompat) {
            MediaMetadataCompat mediaMetadataCompat2 = mediaMetadataCompat;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat2 = new MediaMetadataCompat.a(mediaMetadataCompat, MediaSessionCompat.f446c).a();
            }
            synchronized (this.f) {
                this.l = mediaMetadataCompat2;
            }
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a(mediaMetadataCompat2);
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
            if (this.i) {
                a(mediaMetadataCompat2 == null ? null : mediaMetadataCompat2.getBundle()).apply();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(a aVar, Handler handler) {
            synchronized (this.f) {
                c cVar = this.D;
                if (cVar != null) {
                    cVar.removeCallbacksAndMessages(null);
                }
                this.D = (aVar == null || handler == null) ? null : new c(handler.getLooper());
                if (!(this.j == aVar || this.j == null)) {
                    this.j.a((b) null, (Handler) null);
                }
                this.j = aVar;
                if (this.j != null) {
                    this.j.a(this, handler);
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0073 -> B:12:0x002f). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f) {
                this.m = playbackStateCompat;
            }
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
            if (this.i) {
                if (playbackStateCompat == null) {
                    this.e.setPlaybackState(0);
                    this.e.setTransportControlFlags(0);
                    return;
                }
                b(playbackStateCompat);
                this.e.setTransportControlFlags(a(playbackStateCompat.getActions()));
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(b.C0073b bVar) {
            synchronized (this.f) {
                this.E = bVar;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(androidx.media.f fVar) {
            if (fVar != null) {
                androidx.media.f fVar2 = this.x;
                if (fVar2 != null) {
                    fVar2.e = null;
                }
                this.v = 2;
                this.x = fVar;
                a(new ParcelableVolumeInfo(2, this.w, fVar.f2720a, this.x.f2721b, this.x.f2723d));
                fVar.e = this.F;
                return;
            }
            throw new IllegalArgumentException("volumeProvider may not be null");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(CharSequence charSequence) {
            this.p = charSequence;
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a(charSequence);
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(List<QueueItem> list) {
            this.o = list;
            for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.g.getBroadcastItem(beginBroadcast).a(list);
                } catch (RemoteException e) {
                }
            }
            this.g.finishBroadcast();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void a(boolean z) {
            if (true != this.i) {
                this.i = true;
                g();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final Token b() {
            return this.C;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void b(int i) {
            androidx.media.f fVar = this.x;
            if (fVar != null) {
                fVar.e = null;
            }
            this.w = i;
            this.v = 1;
            a(new ParcelableVolumeInfo(1, i, 2, this.f467d.getStreamMaxVolume(i), this.f467d.getStreamVolume(this.w)));
        }

        final void b(int i, int i2) {
            if (this.v != 2) {
                this.f467d.setStreamVolume(this.w, i, i2);
            } else if (this.x == null) {
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void b(PendingIntent pendingIntent) {
        }

        void b(PendingIntent pendingIntent, ComponentName componentName) {
            this.f467d.unregisterMediaButtonEventReceiver(componentName);
        }

        void b(PlaybackStateCompat playbackStateCompat) {
            this.e.setPlaybackState(f(playbackStateCompat.getState()));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final PlaybackStateCompat c() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f) {
                playbackStateCompat = this.m;
            }
            return playbackStateCompat;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void c(int i) {
            if (this.s != i) {
                this.s = i;
                for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.g.getBroadcastItem(beginBroadcast).a(i);
                    } catch (RemoteException e) {
                    }
                }
                this.g.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final String d() {
            return null;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final void d(int i) {
            if (this.t != i) {
                this.t = i;
                for (int beginBroadcast = this.g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.g.getBroadcastItem(beginBroadcast).b(i);
                    } catch (RemoteException e) {
                    }
                }
                this.g.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final b.C0073b e() {
            b.C0073b bVar;
            synchronized (this.f) {
                bVar = this.E;
            }
            return bVar;
        }

        final String e(int i) {
            String nameForUid = this.y.getPackageManager().getNameForUid(i);
            String str = nameForUid;
            if (TextUtils.isEmpty(nameForUid)) {
                str = "android.media.session.MediaController";
            }
            return str;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public final a f() {
            a aVar;
            synchronized (this.f) {
                aVar = this.j;
            }
            return aVar;
        }
    }

    private MediaSessionCompat(Context context, b bVar) {
        this.f449d = new ArrayList<>();
        this.f447a = bVar;
        this.f448b = new MediaControllerCompat(context, this);
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle, androidx.versionedparcelable.c cVar) {
        this.f449d = new ArrayList<>();
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        } else if (!TextUtils.isEmpty(str)) {
            ComponentName componentName2 = componentName;
            if (componentName == null) {
                ComponentName a2 = MediaButtonReceiver.a(context);
                componentName2 = a2;
                if (a2 == null) {
                    Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
                    componentName2 = a2;
                }
            }
            PendingIntent pendingIntent2 = pendingIntent;
            if (componentName2 != null) {
                pendingIntent2 = pendingIntent;
                if (pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName2);
                    pendingIntent2 = PendingIntent.getBroadcast(context, 0, intent, 67108864);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                MediaSession mediaSession = Build.VERSION.SDK_INT >= 29 ? new MediaSession(context, str, bundle) : new MediaSession(context, str);
                if (Build.VERSION.SDK_INT >= 29) {
                    this.f447a = new g(mediaSession, cVar, bundle);
                } else if (Build.VERSION.SDK_INT >= 28) {
                    this.f447a = new f(mediaSession, cVar, bundle);
                } else {
                    this.f447a = new e(mediaSession, cVar, bundle);
                }
                a(new a() { // from class: android.support.v4.media.session.MediaSessionCompat.1
                }, new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.f447a.b(pendingIntent2);
            } else if (Build.VERSION.SDK_INT >= 19) {
                this.f447a = new d(context, str, componentName2, pendingIntent2, cVar, bundle);
            } else if (Build.VERSION.SDK_INT >= 18) {
                this.f447a = new c(context, str, componentName2, pendingIntent2, cVar, bundle);
            } else {
                this.f447a = new h(context, str, componentName2, pendingIntent2, cVar, bundle);
            }
            this.f448b = new MediaControllerCompat(context, this);
            if (f446c == 0) {
                f446c = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            }
        } else {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r8.getState() == 5) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
        if (r0 > 0) goto L_0x0094;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.support.v4.media.session.PlaybackStateCompat$a] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.support.v4.media.session.PlaybackStateCompat a(android.support.v4.media.session.PlaybackStateCompat r8, android.support.v4.media.MediaMetadataCompat r9) {
        /*
            r0 = r8
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00ae
            r0 = r8
            long r0 = r0.getPosition()
            r11 = r0
            r0 = -1
            r13 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r10 = r0
            goto L_0x00ae
        L_0x001d:
            r0 = r8
            int r0 = r0.getState()
            r1 = 3
            if (r0 == r1) goto L_0x0037
            r0 = r8
            int r0 = r0.getState()
            r1 = 4
            if (r0 == r1) goto L_0x0037
            r0 = r8
            r10 = r0
            r0 = r8
            int r0 = r0.getState()
            r1 = 5
            if (r0 != r1) goto L_0x00ae
        L_0x0037:
            r0 = r8
            long r0 = r0.getLastPositionUpdateTime()
            r11 = r0
            r0 = r8
            r10 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00ae
            long r0 = android.os.SystemClock.elapsedRealtime()
            r15 = r0
            r0 = r8
            float r0 = r0.getPlaybackSpeed()
            r1 = r15
            r2 = r11
            long r1 = r1 - r2
            float r1 = (float) r1
            float r0 = r0 * r1
            long r0 = (long) r0
            r1 = r8
            long r1 = r1.getPosition()
            long r0 = r0 + r1
            r17 = r0
            r0 = r13
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0075
            r0 = r13
            r11 = r0
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0075
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            long r0 = r0.getLong(r1)
            r11 = r0
        L_0x0075:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0085
            r0 = r17
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0085
            goto L_0x0094
        L_0x0085:
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0091
            r0 = 0
            r11 = r0
            goto L_0x0094
        L_0x0091:
            r0 = r17
            r11 = r0
        L_0x0094:
            android.support.v4.media.session.PlaybackStateCompat$a r0 = new android.support.v4.media.session.PlaybackStateCompat$a
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r1 = r8
            int r1 = r1.getState()
            r2 = r11
            r3 = r8
            float r3 = r3.getPlaybackSpeed()
            r4 = r15
            android.support.v4.media.session.PlaybackStateCompat$a r0 = r0.a(r1, r2, r3, r4)
            android.support.v4.media.session.PlaybackStateCompat r0 = r0.b()
            r10 = r0
        L_0x00ae:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.a(android.support.v4.media.session.PlaybackStateCompat, android.support.v4.media.MediaMetadataCompat):android.support.v4.media.session.PlaybackStateCompat");
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static Bundle b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException e2) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public final void a() {
        this.f447a.a(true);
        Iterator<Object> it2 = this.f449d.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    public final void a(int i) {
        this.f447a.b(i);
    }

    public final void a(a aVar, Handler handler) {
        b bVar;
        aVar = null;
        if (aVar == null) {
            bVar = this.f447a;
            handler = null;
        } else {
            bVar = this.f447a;
            if (handler == null) {
                handler = new Handler();
            }
        }
        bVar.a(aVar, handler);
    }

    public final void a(PlaybackStateCompat playbackStateCompat) {
        this.f447a.a(playbackStateCompat);
    }

    public final void a(CharSequence charSequence) {
        this.f447a.a(charSequence);
    }

    public final void a(List<QueueItem> list) {
        if (list != null) {
            HashSet hashSet = new HashSet();
            for (QueueItem queueItem : list) {
                if (queueItem != null) {
                    if (hashSet.contains(Long.valueOf(queueItem.getQueueId()))) {
                        Log.e("MediaSessionCompat", "Found duplicate queue id: " + queueItem.getQueueId(), new IllegalArgumentException("id of each queue item should be unique"));
                    }
                    hashSet.add(Long.valueOf(queueItem.getQueueId()));
                } else {
                    throw new IllegalArgumentException("queue shouldn't have null items");
                }
            }
        }
        this.f447a.a(list);
    }

    public final b.C0073b b() {
        return this.f447a.e();
    }
}
