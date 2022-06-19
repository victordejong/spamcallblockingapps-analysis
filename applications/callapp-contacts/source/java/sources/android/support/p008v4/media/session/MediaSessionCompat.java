package android.support.p008v4.media.session;

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
import android.os.SystemClock;
import android.support.p008v4.media.MediaDescriptionCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.RatingCompat;
import android.support.p008v4.media.session.AbstractC0088b;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.core.app.C0741d;
import androidx.media.AbstractC1338f;
import androidx.media.C1329b;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.AbstractC2922c;
import androidx.versionedparcelable.C2920a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: c */
    static int f104c;

    /* renamed from: a */
    public final AbstractC0067b f105a;

    /* renamed from: b */
    public final MediaControllerCompat f106b;

    /* renamed from: d */
    private final ArrayList<Object> f107d;

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
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
            if (mediaDescriptionCompat != null) {
                if (j == -1) {
                    throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
                }
                this.mDescription = mediaDescriptionCompat;
                this.mId = j;
                this.mItemFwk = queueItem;
                return;
            }
            throw new IllegalArgumentException("Description cannot be null");
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

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
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

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
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
        private AbstractC0088b mExtraBinder;
        private final Object mInner;
        private final Object mLock;
        private AbstractC2922c mSession2Token;

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, AbstractC0088b abstractC0088b) {
            this(obj, abstractC0088b, null);
        }

        Token(Object obj, AbstractC0088b abstractC0088b, AbstractC2922c abstractC2922c) {
            this.mLock = new Object();
            this.mInner = obj;
            this.mExtraBinder = abstractC0088b;
            this.mSession2Token = abstractC2922c;
        }

        public static Token fromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            AbstractC0088b m46467a = AbstractC0088b.AbstractBinderC0089a.m46467a(C0741d.m44595a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            AbstractC2922c m39630a = C2920a.m39630a(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
            Token token = (Token) bundle.getParcelable("android.support.v4.media.session.TOKEN");
            if (token != null) {
                return new Token(token.mInner, m46467a, m39630a);
            }
            return null;
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        public static Token fromToken(Object obj, AbstractC0088b abstractC0088b) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (!(obj instanceof MediaSession.Token)) {
                throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
            }
            return new Token(obj, abstractC0088b);
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
            if (obj3 != null) {
                return obj2.equals(obj3);
            }
            return false;
        }

        public final AbstractC0088b getExtraBinder() {
            AbstractC0088b abstractC0088b;
            synchronized (this.mLock) {
                abstractC0088b = this.mExtraBinder;
            }
            return abstractC0088b;
        }

        public final AbstractC2922c getSession2Token() {
            AbstractC2922c abstractC2922c;
            synchronized (this.mLock) {
                abstractC2922c = this.mSession2Token;
            }
            return abstractC2922c;
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

        public final void setExtraBinder(AbstractC0088b abstractC0088b) {
            synchronized (this.mLock) {
                this.mExtraBinder = abstractC0088b;
            }
        }

        public final void setSession2Token(AbstractC2922c abstractC2922c) {
            synchronized (this.mLock) {
                this.mSession2Token = abstractC2922c;
            }
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
            synchronized (this.mLock) {
                AbstractC0088b abstractC0088b = this.mExtraBinder;
                if (abstractC0088b != null) {
                    C0741d.m44594a(bundle, "android.support.v4.media.session.EXTRA_BINDER", abstractC0088b.asBinder());
                }
                AbstractC2922c abstractC2922c = this.mSession2Token;
                if (abstractC2922c != null) {
                    C2920a.m39629a(bundle, "android.support.v4.media.session.SESSION_TOKEN2", abstractC2922c);
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

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a.class */
    public static abstract class AbstractC0064a {

        /* renamed from: a */
        private boolean f109a;

        /* renamed from: b */
        final Object f110b = new Object();

        /* renamed from: c */
        final MediaSession.Callback f111c;

        /* renamed from: d */
        WeakReference<AbstractC0067b> f112d;

        /* renamed from: e */
        HandlerC0065a f113e;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a$a.class */
        public final class HandlerC0065a extends Handler {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            HandlerC0065a(Looper looper) {
                super(looper);
                AbstractC0064a.this = r4;
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                AbstractC0067b abstractC0067b;
                HandlerC0065a handlerC0065a;
                if (message.what == 1) {
                    synchronized (AbstractC0064a.this.f110b) {
                        abstractC0067b = AbstractC0064a.this.f112d.get();
                        handlerC0065a = AbstractC0064a.this.f113e;
                    }
                    if (abstractC0067b == null || AbstractC0064a.this != abstractC0067b.mo46492f() || handlerC0065a == null) {
                        return;
                    }
                    abstractC0067b.mo46509a((C1329b.C1331b) message.obj);
                    AbstractC0064a.this.m46524b(abstractC0067b, handlerC0065a);
                    abstractC0067b.mo46509a((C1329b.C1331b) null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a$b.class */
        public final class C0066b extends MediaSession.Callback {
            C0066b() {
                AbstractC0064a.this = r4;
            }

            /* renamed from: a */
            private C0072e m46523a() {
                C0072e c0072e;
                synchronized (AbstractC0064a.this.f110b) {
                    c0072e = (C0072e) AbstractC0064a.this.f112d.get();
                }
                if (c0072e == null || AbstractC0064a.this != c0072e.mo46492f()) {
                    return null;
                }
                return c0072e;
            }

            /* renamed from: a */
            private static void m46522a(AbstractC0067b abstractC0067b) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String mo46496d = abstractC0067b.mo46496d();
                String str = mo46496d;
                if (TextUtils.isEmpty(mo46496d)) {
                    str = "android.media.session.MediaController";
                }
                abstractC0067b.mo46509a(new C1329b.C1331b(str, -1, -1));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                try {
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        Bundle bundle2 = new Bundle();
                        Token token = m46523a.f120b;
                        AbstractC0088b extraBinder = token.getExtraBinder();
                        C0741d.m44594a(bundle2, "android.support.v4.media.session.EXTRA_BINDER", extraBinder == null ? null : extraBinder.asBinder());
                        C2920a.m39629a(bundle2, "android.support.v4.media.session.SESSION_TOKEN2", token.getSession2Token());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        AbstractC0064a.this.mo40906a((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        AbstractC0064a.this.mo40905a((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        AbstractC0064a.this.mo40895b((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        AbstractC0064a.this.mo40900a(str, bundle, resultReceiver);
                    } else if (m46523a.f126h != null) {
                        int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                        QueueItem queueItem = (i < 0 || i >= m46523a.f126h.size()) ? null : m46523a.f126h.get(i);
                        if (queueItem != null) {
                            AbstractC0064a.this.mo40895b(queueItem.getDescription());
                        }
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
                }
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCustomAction(String str, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                try {
                    if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                        Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.m46534a(bundle2);
                        AbstractC0064a.this.mo40896b(uri, bundle2);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        AbstractC0064a.this.mo40911a();
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                        Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.m46534a(bundle3);
                        AbstractC0064a.this.mo40901a(string, bundle3);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                        Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.m46534a(bundle4);
                        AbstractC0064a.this.mo40893b(string2, bundle4);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.m46534a(bundle5);
                        AbstractC0064a.this.mo40907a(uri2, bundle5);
                    } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                    } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        AbstractC0064a.this.mo40909a(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        AbstractC0064a.this.mo40898b(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
                        MediaSessionCompat.m46534a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                        AbstractC0064a.this.mo40894b(ratingCompat);
                    } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        AbstractC0064a.this.mo40910a(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaSessionCompat", "Could not unparcel the data.");
                }
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onFastForward() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40887f();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final boolean onMediaButtonEvent(Intent intent) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return false;
                }
                m46522a(m46523a);
                boolean m46526a = AbstractC0064a.this.m46526a(intent);
                m46523a.mo46509a((C1329b.C1331b) null);
                return m46526a || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPause() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40892c();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlay() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40899b();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromMediaId(String str, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40891c(str, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromSearch(String str, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40889d(str, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromUri(Uri uri, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40896b(uri, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepare() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40911a();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40901a(str, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromSearch(String str, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40893b(str, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                MediaSessionCompat.m46534a(bundle);
                m46522a(m46523a);
                AbstractC0064a.this.mo40907a(uri, bundle);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onRewind() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40886g();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSeekTo(long j) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40897b(j);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetPlaybackSpeed(float f) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40910a(f);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetRating(Rating rating) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40904a(RatingCompat.fromRating(rating));
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToNext() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40890d();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToPrevious() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40888e();
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToQueueItem(long j) {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40908a(j);
                m46523a.mo46509a((C1329b.C1331b) null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onStop() {
                C0072e m46523a = m46523a();
                if (m46523a == null) {
                    return;
                }
                m46522a(m46523a);
                AbstractC0064a.this.mo40885h();
                m46523a.mo46509a((C1329b.C1331b) null);
            }
        }

        public AbstractC0064a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f111c = new C0066b();
            } else {
                this.f111c = null;
            }
            this.f112d = new WeakReference<>(null);
        }

        /* renamed from: a */
        public void mo40911a() {
        }

        /* renamed from: a */
        public void mo40910a(float f) {
        }

        /* renamed from: a */
        public void mo40909a(int i) {
        }

        /* renamed from: a */
        public void mo40908a(long j) {
        }

        /* renamed from: a */
        public void mo40907a(Uri uri, Bundle bundle) {
        }

        /* renamed from: a */
        public void mo40906a(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        /* renamed from: a */
        public void mo40905a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        /* renamed from: a */
        public void mo40904a(RatingCompat ratingCompat) {
        }

        /* renamed from: a */
        final void m46525a(AbstractC0067b abstractC0067b, Handler handler) {
            synchronized (this.f110b) {
                this.f112d = new WeakReference<>(abstractC0067b);
                HandlerC0065a handlerC0065a = this.f113e;
                if (handlerC0065a != null) {
                    handlerC0065a.removeCallbacksAndMessages(null);
                }
                HandlerC0065a handlerC0065a2 = null;
                if (abstractC0067b != null) {
                    handlerC0065a2 = handler == null ? null : new HandlerC0065a(handler.getLooper());
                }
                this.f113e = handlerC0065a2;
            }
        }

        /* renamed from: a */
        public void mo40901a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void mo40900a(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* renamed from: a */
        public final boolean m46526a(Intent intent) {
            AbstractC0067b abstractC0067b;
            HandlerC0065a handlerC0065a;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.f110b) {
                abstractC0067b = this.f112d.get();
                handlerC0065a = this.f113e;
            }
            if (abstractC0067b == null || handlerC0065a == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            C1329b.C1331b mo46494e = abstractC0067b.mo46494e();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                m46524b(abstractC0067b, handlerC0065a);
                return false;
            } else if (keyEvent.getRepeatCount() != 0) {
                m46524b(abstractC0067b, handlerC0065a);
                return true;
            } else if (!this.f109a) {
                this.f109a = true;
                handlerC0065a.sendMessageDelayed(handlerC0065a.obtainMessage(1, mo46494e), ViewConfiguration.getDoubleTapTimeout());
                return true;
            } else {
                handlerC0065a.removeMessages(1);
                this.f109a = false;
                PlaybackStateCompat mo46498c = abstractC0067b.mo46498c();
                if (((mo46498c == null ? (char) 0 : mo46498c.getActions()) & ' ') == 0) {
                    return true;
                }
                mo40890d();
                return true;
            }
        }

        /* renamed from: b */
        public void mo40899b() {
        }

        /* renamed from: b */
        public void mo40898b(int i) {
        }

        /* renamed from: b */
        public void mo40897b(long j) {
        }

        /* renamed from: b */
        public void mo40896b(Uri uri, Bundle bundle) {
        }

        /* renamed from: b */
        public void mo40895b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        /* renamed from: b */
        public void mo40894b(RatingCompat ratingCompat) {
        }

        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* renamed from: b */
        final void m46524b(AbstractC0067b abstractC0067b, Handler handler) {
            if (!this.f109a) {
                return;
            }
            boolean z = false;
            this.f109a = false;
            handler.removeMessages(1);
            PlaybackStateCompat mo46498c = abstractC0067b.mo46498c();
            char actions = mo46498c == null ? (char) 0 : mo46498c.getActions();
            boolean z2 = mo46498c != null && mo46498c.getState() == 3;
            boolean z3 = (516 & actions) != 0;
            if ((actions & 514) != 0) {
                z = true;
            }
            if (z2 && z) {
                mo40892c();
            } else if (z2 || !z3) {
            } else {
                mo40899b();
            }
        }

        /* renamed from: b */
        public void mo40893b(String str, Bundle bundle) {
        }

        /* renamed from: c */
        public void mo40892c() {
        }

        /* renamed from: c */
        public void mo40891c(String str, Bundle bundle) {
        }

        /* renamed from: d */
        public void mo40890d() {
        }

        /* renamed from: d */
        public void mo40889d(String str, Bundle bundle) {
        }

        /* renamed from: e */
        public void mo40888e() {
        }

        /* renamed from: f */
        public void mo40887f() {
        }

        /* renamed from: g */
        public void mo40886g() {
        }

        /* renamed from: h */
        public void mo40885h() {
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$b.class */
    public interface AbstractC0067b {
        /* renamed from: a */
        void mo46521a();

        /* renamed from: a */
        void mo46520a(int i);

        /* renamed from: a */
        void mo46516a(PendingIntent pendingIntent);

        /* renamed from: a */
        void mo46513a(MediaMetadataCompat mediaMetadataCompat);

        /* renamed from: a */
        void mo46512a(AbstractC0064a abstractC0064a, Handler handler);

        /* renamed from: a */
        void mo46510a(PlaybackStateCompat playbackStateCompat);

        /* renamed from: a */
        void mo46509a(C1329b.C1331b c1331b);

        /* renamed from: a */
        void mo46508a(AbstractC1338f abstractC1338f);

        /* renamed from: a */
        void mo46507a(CharSequence charSequence);

        /* renamed from: a */
        void mo46506a(List<QueueItem> list);

        /* renamed from: a */
        void mo46505a(boolean z);

        /* renamed from: b */
        Token mo46504b();

        /* renamed from: b */
        void mo46503b(int i);

        /* renamed from: b */
        void mo46501b(PendingIntent pendingIntent);

        /* renamed from: c */
        PlaybackStateCompat mo46498c();

        /* renamed from: c */
        void mo46497c(int i);

        /* renamed from: d */
        String mo46496d();

        /* renamed from: d */
        void mo46495d(int i);

        /* renamed from: e */
        C1329b.C1331b mo46494e();

        /* renamed from: f */
        AbstractC0064a mo46492f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$c.class */
    public static class C0068c extends C0076h {

        /* renamed from: y */
        private static boolean f116y = true;

        C0068c(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, AbstractC2922c abstractC2922c, Bundle bundle) {
            super(context, str, componentName, pendingIntent, abstractC2922c, bundle);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: a */
        int mo46517a(long j) {
            int mo46517a = super.mo46517a(j);
            int i = mo46517a;
            if ((j & 256) != 0) {
                i = mo46517a | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            }
            return i;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: a */
        final void mo46515a(PendingIntent pendingIntent, ComponentName componentName) {
            if (f116y) {
                try {
                    this.f144d.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException e) {
                    Log.w("MediaSessionCompat", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    f116y = false;
                }
            }
            if (!f116y) {
                super.mo46515a(pendingIntent, componentName);
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h, android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public void mo46512a(AbstractC0064a abstractC0064a, Handler handler) {
            super.mo46512a(abstractC0064a, handler);
            if (abstractC0064a == null) {
                this.f145e.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.f145e.setPlaybackPositionUpdateListener(new RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.c.1
                @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
                public final void onPlaybackPositionUpdate(long j) {
                    C0068c.this.m46518a(18, -1, -1, Long.valueOf(j), null);
                }
            });
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: b */
        final void mo46500b(PendingIntent pendingIntent, ComponentName componentName) {
            if (f116y) {
                this.f144d.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.mo46500b(pendingIntent, componentName);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v11, types: [android.media.RemoteControlClient] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v7 */
        /* JADX WARN: Type inference failed for: r15v8 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r2v0, types: [long] */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: b */
        final void mo46499b(PlaybackStateCompat playbackStateCompat) {
            ?? position = playbackStateCompat.getPosition();
            float playbackSpeed = playbackStateCompat.getPlaybackSpeed();
            long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ?? r15 = position;
            if (playbackStateCompat.getState() == 3) {
                r15 = position;
                if (position > 0) {
                    ?? r152 = false;
                    if (lastPositionUpdateTime > 0) {
                        ?? r0 = elapsedRealtime - lastPositionUpdateTime;
                        r152 = r0;
                        if (playbackSpeed > BitmapDescriptorFactory.HUE_RED) {
                            r152 = r0;
                            if (playbackSpeed != 1.0f) {
                                r152 = ((float) r0) * playbackSpeed;
                            }
                        }
                    }
                    r15 = position + (r152 == true ? 1L : 0L);
                }
            }
            this.f145e.setPlaybackState(m46491f(playbackStateCompat.getState()), r15, playbackSpeed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$d.class */
    public static final class C0070d extends C0068c {
        C0070d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, AbstractC2922c abstractC2922c, Bundle bundle) {
            super(context, str, componentName, pendingIntent, abstractC2922c, bundle);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0068c, android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: a */
        final int mo46517a(long j) {
            int mo46517a = super.mo46517a(j);
            int i = mo46517a;
            if ((j & 128) != 0) {
                i = mo46517a | 512;
            }
            return i;
        }

        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0076h
        /* renamed from: a */
        final RemoteControlClient.MetadataEditor mo46514a(Bundle bundle) {
            RemoteControlClient.MetadataEditor a = super.mo46514a(bundle);
            if (((this.f153m == null ? (char) 0 : this.f153m.getActions()) & 128) != 0) {
                a.addEditableKey(268435457);
            }
            if (bundle == null) {
                return a;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                a.putLong(8, bundle.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                a.putObject(101, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                a.putObject(268435457, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return a;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0068c, android.support.p008v4.media.session.MediaSessionCompat.C0076h, android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46512a(AbstractC0064a abstractC0064a, Handler handler) {
            super.mo46512a(abstractC0064a, handler);
            if (abstractC0064a == null) {
                this.f145e.setMetadataUpdateListener(null);
                return;
            }
            this.f145e.setMetadataUpdateListener(new RemoteControlClient.OnMetadataUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.d.1
                @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
                public final void onMetadataUpdate(int i, Object obj) {
                    if (i != 268435457 || !(obj instanceof Rating)) {
                        return;
                    }
                    C0070d.this.m46518a(19, -1, -1, RatingCompat.fromRating(obj), null);
                }
            });
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$e.class */
    public static class C0072e implements AbstractC0067b {

        /* renamed from: a */
        final MediaSession f119a;

        /* renamed from: b */
        final Token f120b;

        /* renamed from: d */
        Bundle f122d;

        /* renamed from: g */
        PlaybackStateCompat f125g;

        /* renamed from: h */
        List<QueueItem> f126h;

        /* renamed from: i */
        MediaMetadataCompat f127i;

        /* renamed from: j */
        int f128j;

        /* renamed from: k */
        boolean f129k;

        /* renamed from: l */
        int f130l;

        /* renamed from: m */
        int f131m;

        /* renamed from: n */
        AbstractC0064a f132n;

        /* renamed from: o */
        C1329b.C1331b f133o;

        /* renamed from: c */
        final Object f121c = new Object();

        /* renamed from: e */
        boolean f123e = false;

        /* renamed from: f */
        final RemoteCallbackList<AbstractC0085a> f124f = new RemoteCallbackList<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$e$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$e$a.class */
        public final class BinderC0073a extends AbstractC0088b.AbstractBinderC0089a {
            BinderC0073a() {
                C0072e.this = r4;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46464a(float f) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46463a(int i) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46462a(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46461a(long j) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46460a(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46459a(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46458a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46457a(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46456a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46455a(AbstractC0085a abstractC0085a) {
                if (!C0072e.this.f123e) {
                    C0072e.this.f124f.register(abstractC0085a, new C1329b.C1331b("android.media.session.MediaController", getCallingPid(), getCallingUid()));
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46453a(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46452a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46451a(boolean z) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46465a() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46454a(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final String mo46450b() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46449b(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46448b(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46447b(long j) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46446b(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46445b(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46444b(AbstractC0085a abstractC0085a) {
                C0072e.this.f124f.unregister(abstractC0085a);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46443b(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46442b(boolean z) throws RemoteException {
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final String mo46441c() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46440c(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46439c(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final PendingIntent mo46438d() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final void mo46437d(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final long mo46436e() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final void mo46435e(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: f */
            public final ParcelableVolumeInfo mo46434f() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: g */
            public final MediaMetadataCompat mo46433g() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: h */
            public final PlaybackStateCompat mo46432h() {
                return MediaSessionCompat.m46531a(C0072e.this.f125g, C0072e.this.f127i);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: i */
            public final List<QueueItem> mo46431i() {
                return null;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: j */
            public final CharSequence mo46430j() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: k */
            public final Bundle mo46429k() {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: l */
            public final int mo46428l() {
                return C0072e.this.f128j;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: m */
            public final boolean mo46427m() {
                return C0072e.this.f129k;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: n */
            public final int mo46426n() {
                return C0072e.this.f130l;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: o */
            public final boolean mo46425o() {
                return false;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: p */
            public final int mo46424p() {
                return C0072e.this.f131m;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: q */
            public final Bundle mo46423q() {
                if (C0072e.this.f122d == null) {
                    return null;
                }
                return new Bundle(C0072e.this.f122d);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: r */
            public final void mo46422r() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: s */
            public final void mo46421s() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: t */
            public final void mo46420t() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: u */
            public final void mo46419u() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: v */
            public final void mo46418v() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: w */
            public final void mo46417w() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: x */
            public final void mo46416x() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: y */
            public final void mo46415y() throws RemoteException {
                throw new AssertionError();
            }
        }

        C0072e(MediaSession mediaSession, AbstractC2922c abstractC2922c, Bundle bundle) {
            this.f119a = mediaSession;
            this.f120b = new Token(mediaSession.getSessionToken(), new BinderC0073a(), abstractC2922c);
            this.f122d = bundle;
            mo46520a(3);
        }

        C0072e(Object obj) {
            if (obj instanceof MediaSession) {
                MediaSession mediaSession = (MediaSession) obj;
                this.f119a = mediaSession;
                this.f120b = new Token(mediaSession.getSessionToken(), new BinderC0073a());
                this.f122d = null;
                mo46520a(3);
                return;
            }
            throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46521a() {
            this.f123e = true;
            this.f124f.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = this.f119a.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(this.f119a);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception e) {
                    Log.w("MediaSessionCompat", "Exception happened while accessing MediaSession.mCallback.", e);
                }
            }
            this.f119a.setCallback(null);
            this.f119a.release();
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46520a(int i) {
            this.f119a.setFlags(i | 1 | 2);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46516a(PendingIntent pendingIntent) {
            this.f119a.setSessionActivity(pendingIntent);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46513a(MediaMetadataCompat mediaMetadataCompat) {
            this.f127i = mediaMetadataCompat;
            this.f119a.setMetadata(mediaMetadataCompat == null ? null : (MediaMetadata) mediaMetadataCompat.getMediaMetadata());
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46512a(AbstractC0064a abstractC0064a, Handler handler) {
            synchronized (this.f121c) {
                this.f132n = abstractC0064a;
                this.f119a.setCallback(abstractC0064a == null ? null : abstractC0064a.f111c, handler);
                if (abstractC0064a != null) {
                    abstractC0064a.m46525a(this, handler);
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004f -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46510a(PlaybackStateCompat playbackStateCompat) {
            this.f125g = playbackStateCompat;
            for (int beginBroadcast = this.f124f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f124f.getBroadcastItem(beginBroadcast).mo46475a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.f124f.finishBroadcast();
            this.f119a.setPlaybackState(playbackStateCompat == null ? null : (PlaybackState) playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public void mo46509a(C1329b.C1331b c1331b) {
            synchronized (this.f121c) {
                this.f133o = c1331b;
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46508a(final AbstractC1338f abstractC1338f) {
            MediaSession mediaSession = this.f119a;
            if (abstractC1338f.f5008f == null) {
                if (Build.VERSION.SDK_INT >= 30) {
                    abstractC1338f.f5008f = new VolumeProvider(abstractC1338f.f5003a, abstractC1338f.f5004b, abstractC1338f.f5006d, abstractC1338f.f5005c) { // from class: androidx.media.f.1
                        @Override // android.media.VolumeProvider
                        public final void onAdjustVolume(int i) {
                        }

                        @Override // android.media.VolumeProvider
                        public final void onSetVolumeTo(int i) {
                        }
                    };
                } else if (Build.VERSION.SDK_INT >= 21) {
                    abstractC1338f.f5008f = new VolumeProvider(abstractC1338f.f5003a, abstractC1338f.f5004b, abstractC1338f.f5006d) { // from class: androidx.media.f.2
                        @Override // android.media.VolumeProvider
                        public final void onAdjustVolume(int i) {
                        }

                        @Override // android.media.VolumeProvider
                        public final void onSetVolumeTo(int i) {
                        }
                    };
                }
            }
            mediaSession.setPlaybackToRemote(abstractC1338f.f5008f);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46507a(CharSequence charSequence) {
            this.f119a.setQueueTitle(charSequence);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46506a(List<QueueItem> list) {
            this.f126h = list;
            if (list == null) {
                this.f119a.setQueue(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (QueueItem queueItem : list) {
                arrayList.add((MediaSession.QueueItem) queueItem.getQueueItem());
            }
            this.f119a.setQueue(arrayList);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46505a(boolean z) {
            this.f119a.setActive(true);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final Token mo46504b() {
            return this.f120b;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final void mo46503b(int i) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setLegacyStreamType(i);
            this.f119a.setPlaybackToLocal(builder.build());
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final void mo46501b(PendingIntent pendingIntent) {
            this.f119a.setMediaButtonReceiver(pendingIntent);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: c */
        public final PlaybackStateCompat mo46498c() {
            return this.f125g;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: c */
        public final void mo46497c(int i) {
            if (this.f130l != i) {
                this.f130l = i;
                for (int beginBroadcast = this.f124f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f124f.getBroadcastItem(beginBroadcast).mo46479a(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f124f.finishBroadcast();
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: d */
        public final String mo46496d() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.f119a.getClass().getMethod("getCallingPackage", new Class[0]).invoke(this.f119a, new Object[0]);
            } catch (Exception e) {
                Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e);
                return null;
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: d */
        public final void mo46495d(int i) {
            if (this.f131m != i) {
                this.f131m = i;
                for (int beginBroadcast = this.f124f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f124f.getBroadcastItem(beginBroadcast).mo46469b(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f124f.finishBroadcast();
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: e */
        public C1329b.C1331b mo46494e() {
            C1329b.C1331b c1331b;
            synchronized (this.f121c) {
                c1331b = this.f133o;
            }
            return c1331b;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: f */
        public final AbstractC0064a mo46492f() {
            AbstractC0064a abstractC0064a;
            synchronized (this.f121c) {
                abstractC0064a = this.f132n;
            }
            return abstractC0064a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$f.class */
    public static class C0074f extends C0072e {
        C0074f(MediaSession mediaSession, AbstractC2922c abstractC2922c, Bundle bundle) {
            super(mediaSession, abstractC2922c, bundle);
        }

        C0074f(Object obj) {
            super(obj);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0072e, android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46509a(C1329b.C1331b c1331b) {
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.C0072e, android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: e */
        public final C1329b.C1331b mo46494e() {
            return new C1329b.C1331b(this.f119a.getCurrentControllerInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$g.class */
    public static final class C0075g extends C0074f {
        C0075g(MediaSession mediaSession, AbstractC2922c abstractC2922c, Bundle bundle) {
            super(mediaSession, abstractC2922c, bundle);
        }

        C0075g(Object obj) {
            super(obj);
            this.f122d = ((MediaSession) obj).getController().getSessionInfo();
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$h */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h.class */
    public static class C0076h implements AbstractC0067b {

        /* renamed from: A */
        private final PendingIntent f135A;

        /* renamed from: B */
        private final BinderC0079b f136B;

        /* renamed from: C */
        private final Token f137C;

        /* renamed from: D */
        private HandlerC0080c f138D;

        /* renamed from: E */
        private C1329b.C1331b f139E;

        /* renamed from: a */
        final String f141a;

        /* renamed from: b */
        final Bundle f142b;

        /* renamed from: c */
        final String f143c;

        /* renamed from: d */
        final AudioManager f144d;

        /* renamed from: e */
        final RemoteControlClient f145e;

        /* renamed from: j */
        volatile AbstractC0064a f150j;

        /* renamed from: l */
        MediaMetadataCompat f152l;

        /* renamed from: m */
        PlaybackStateCompat f153m;

        /* renamed from: n */
        PendingIntent f154n;

        /* renamed from: o */
        List<QueueItem> f155o;

        /* renamed from: p */
        CharSequence f156p;

        /* renamed from: q */
        int f157q;

        /* renamed from: r */
        boolean f158r;

        /* renamed from: s */
        int f159s;

        /* renamed from: t */
        int f160t;

        /* renamed from: u */
        Bundle f161u;

        /* renamed from: v */
        int f162v;

        /* renamed from: w */
        int f163w;

        /* renamed from: x */
        AbstractC1338f f164x;

        /* renamed from: y */
        private final Context f165y;

        /* renamed from: z */
        private final ComponentName f166z;

        /* renamed from: f */
        final Object f146f = new Object();

        /* renamed from: g */
        final RemoteCallbackList<AbstractC0085a> f147g = new RemoteCallbackList<>();

        /* renamed from: h */
        boolean f148h = false;

        /* renamed from: i */
        boolean f149i = false;

        /* renamed from: k */
        int f151k = 3;

        /* renamed from: F */
        private AbstractC1338f.AbstractC1341a f140F = new AbstractC1338f.AbstractC1341a() { // from class: android.support.v4.media.session.MediaSessionCompat.h.1
        };

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$h$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$a.class */
        static final class C0078a {

            /* renamed from: a */
            public final String f168a;

            /* renamed from: b */
            public final Bundle f169b;

            /* renamed from: c */
            public final ResultReceiver f170c;

            public C0078a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f168a = str;
                this.f169b = bundle;
                this.f170c = resultReceiver;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$h$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$b.class */
        public final class BinderC0079b extends AbstractC0088b.AbstractBinderC0089a {
            BinderC0079b() {
                C0076h.this = r4;
            }

            /* renamed from: a */
            private void m46489a(int i, int i2) {
                C0076h.this.m46518a(i, i2, 0, null, null);
            }

            /* renamed from: a */
            private void m46488a(int i, Object obj) {
                C0076h.this.m46518a(i, 0, 0, obj, null);
            }

            /* renamed from: a */
            private void m46487a(int i, Object obj, Bundle bundle) {
                C0076h.this.m46518a(i, 0, 0, obj, bundle);
            }

            /* renamed from: d */
            private void m46486d(int i) {
                C0076h.this.m46518a(i, 0, 0, null, null);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46464a(float f) throws RemoteException {
                m46488a(32, Float.valueOf(f));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46463a(int i) {
                m46489a(28, i);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46462a(int i, int i2, String str) {
                C0076h.this.m46519a(i, i2);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46461a(long j) {
                m46488a(11, Long.valueOf(j));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46460a(Uri uri, Bundle bundle) throws RemoteException {
                m46487a(6, uri, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46459a(MediaDescriptionCompat mediaDescriptionCompat) {
                m46488a(25, mediaDescriptionCompat);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46458a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                C0076h.this.m46518a(26, i, 0, mediaDescriptionCompat, null);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46457a(RatingCompat ratingCompat) throws RemoteException {
                m46488a(19, ratingCompat);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46456a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                m46487a(31, ratingCompat, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46455a(AbstractC0085a abstractC0085a) {
                if (C0076h.this.f148h) {
                    try {
                        abstractC0085a.mo46480a();
                        return;
                    } catch (Exception e) {
                        return;
                    }
                }
                C0076h.this.f147g.register(abstractC0085a, new C1329b.C1331b(C0076h.this.m46493e(getCallingUid()), getCallingPid(), getCallingUid()));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46453a(String str, Bundle bundle) throws RemoteException {
                m46487a(4, str, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46452a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                m46488a(1, new C0078a(str, bundle, resultReceiverWrapper == null ? null : resultReceiverWrapper.mResultReceiver));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46451a(boolean z) throws RemoteException {
                m46488a(29, Boolean.valueOf(z));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46465a() {
                return true;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46454a(KeyEvent keyEvent) {
                m46488a(21, keyEvent);
                return true;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final String mo46450b() {
                return C0076h.this.f141a;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46449b(int i) throws RemoteException {
                m46489a(23, i);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46448b(int i, int i2, String str) {
                C0076h.this.m46502b(i, i2);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46447b(long j) throws RemoteException {
                m46488a(18, Long.valueOf(j));
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46446b(Uri uri, Bundle bundle) throws RemoteException {
                m46487a(10, uri, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46445b(MediaDescriptionCompat mediaDescriptionCompat) {
                m46488a(27, mediaDescriptionCompat);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46444b(AbstractC0085a abstractC0085a) {
                C0076h.this.f147g.unregister(abstractC0085a);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46443b(String str, Bundle bundle) throws RemoteException {
                m46487a(5, str, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46442b(boolean z) throws RemoteException {
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final String mo46441c() {
                return C0076h.this.f143c;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46440c(int i) throws RemoteException {
                m46489a(30, i);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46439c(String str, Bundle bundle) throws RemoteException {
                m46487a(8, str, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final PendingIntent mo46438d() {
                PendingIntent pendingIntent;
                synchronized (C0076h.this.f146f) {
                    pendingIntent = C0076h.this.f154n;
                }
                return pendingIntent;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final void mo46437d(String str, Bundle bundle) throws RemoteException {
                m46487a(9, str, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final long mo46436e() {
                long j;
                synchronized (C0076h.this.f146f) {
                    j = C0076h.this.f151k;
                }
                return j;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final void mo46435e(String str, Bundle bundle) throws RemoteException {
                m46487a(20, str, bundle);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: f */
            public final ParcelableVolumeInfo mo46434f() {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                synchronized (C0076h.this.f146f) {
                    i = C0076h.this.f162v;
                    i2 = C0076h.this.f163w;
                    AbstractC1338f abstractC1338f = C0076h.this.f164x;
                    if (i == 2) {
                        i5 = abstractC1338f.f5003a;
                        i4 = abstractC1338f.f5004b;
                        i3 = abstractC1338f.f5006d;
                    } else {
                        i4 = C0076h.this.f144d.getStreamMaxVolume(i2);
                        i3 = C0076h.this.f144d.getStreamVolume(i2);
                        i5 = 2;
                    }
                }
                return new ParcelableVolumeInfo(i, i2, i5, i4, i3);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: g */
            public final MediaMetadataCompat mo46433g() {
                return C0076h.this.f152l;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: h */
            public final PlaybackStateCompat mo46432h() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (C0076h.this.f146f) {
                    playbackStateCompat = C0076h.this.f153m;
                    mediaMetadataCompat = C0076h.this.f152l;
                }
                return MediaSessionCompat.m46531a(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: i */
            public final List<QueueItem> mo46431i() {
                List<QueueItem> list;
                synchronized (C0076h.this.f146f) {
                    list = C0076h.this.f155o;
                }
                return list;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: j */
            public final CharSequence mo46430j() {
                return C0076h.this.f156p;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: k */
            public final Bundle mo46429k() {
                Bundle bundle;
                synchronized (C0076h.this.f146f) {
                    bundle = C0076h.this.f161u;
                }
                return bundle;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: l */
            public final int mo46428l() {
                return C0076h.this.f157q;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: m */
            public final boolean mo46427m() {
                return C0076h.this.f158r;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: n */
            public final int mo46426n() {
                return C0076h.this.f159s;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: o */
            public final boolean mo46425o() {
                return false;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: p */
            public final int mo46424p() {
                return C0076h.this.f160t;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: q */
            public final Bundle mo46423q() {
                if (C0076h.this.f142b == null) {
                    return null;
                }
                return new Bundle(C0076h.this.f142b);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: r */
            public final void mo46422r() throws RemoteException {
                m46486d(3);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: s */
            public final void mo46421s() throws RemoteException {
                m46486d(7);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: t */
            public final void mo46420t() throws RemoteException {
                m46486d(12);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: u */
            public final void mo46419u() throws RemoteException {
                m46486d(13);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: v */
            public final void mo46418v() throws RemoteException {
                m46486d(14);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: w */
            public final void mo46417w() throws RemoteException {
                m46486d(15);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: x */
            public final void mo46416x() throws RemoteException {
                m46486d(16);
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: y */
            public final void mo46415y() throws RemoteException {
                m46486d(17);
            }
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$h$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$h$c.class */
        public final class HandlerC0080c extends Handler {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public HandlerC0080c(Looper looper) {
                super(looper);
                C0076h.this = r4;
            }

            /* JADX WARN: Type inference failed for: r0v98, types: [long] */
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                AbstractC0064a abstractC0064a = C0076h.this.f150j;
                if (abstractC0064a == null) {
                    return;
                }
                Bundle data = message.getData();
                MediaSessionCompat.m46534a(data);
                C0076h.this.mo46509a(new C1329b.C1331b(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                Bundle bundle = data.getBundle("data_extras");
                MediaSessionCompat.m46534a(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            C0078a c0078a = (C0078a) message.obj;
                            abstractC0064a.mo40900a(c0078a.f168a, c0078a.f169b, c0078a.f170c);
                            break;
                        case 2:
                            C0076h.this.m46519a(message.arg1, 0);
                            break;
                        case 3:
                            abstractC0064a.mo40911a();
                            break;
                        case 4:
                            abstractC0064a.mo40901a((String) message.obj, bundle);
                            break;
                        case 5:
                            abstractC0064a.mo40893b((String) message.obj, bundle);
                            break;
                        case 6:
                            abstractC0064a.mo40907a((Uri) message.obj, bundle);
                            break;
                        case 7:
                            abstractC0064a.mo40899b();
                            break;
                        case 8:
                            abstractC0064a.mo40891c((String) message.obj, bundle);
                            break;
                        case 9:
                            abstractC0064a.mo40889d((String) message.obj, bundle);
                            break;
                        case 10:
                            abstractC0064a.mo40896b((Uri) message.obj, bundle);
                            break;
                        case 11:
                            abstractC0064a.mo40908a(((Long) message.obj).longValue());
                            break;
                        case 12:
                            abstractC0064a.mo40892c();
                            break;
                        case 13:
                            abstractC0064a.mo40885h();
                            break;
                        case 14:
                            abstractC0064a.mo40890d();
                            break;
                        case 15:
                            abstractC0064a.mo40888e();
                            break;
                        case 16:
                            abstractC0064a.mo40887f();
                            break;
                        case 17:
                            abstractC0064a.mo40886g();
                            break;
                        case 18:
                            abstractC0064a.mo40897b(((Long) message.obj).longValue());
                            break;
                        case 19:
                            abstractC0064a.mo40904a((RatingCompat) message.obj);
                            break;
                        case 20:
                            Object obj = message.obj;
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!abstractC0064a.m46526a(intent) && keyEvent != null && keyEvent.getAction() == 0) {
                                char actions = C0076h.this.f153m == null ? (char) 0 : C0076h.this.f153m.getActions();
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode != 79) {
                                    if (keyCode == 126) {
                                        if ((actions & 4) != 0) {
                                            abstractC0064a.mo40899b();
                                            break;
                                        }
                                    } else if (keyCode == 127) {
                                        if ((actions & 2) != 0) {
                                            abstractC0064a.mo40892c();
                                            break;
                                        }
                                    } else {
                                        switch (keyCode) {
                                            case 86:
                                                if ((actions & 1) != 0) {
                                                    abstractC0064a.mo40885h();
                                                    break;
                                                }
                                                break;
                                            case 87:
                                                if ((actions & ' ') != 0) {
                                                    abstractC0064a.mo40890d();
                                                    break;
                                                }
                                                break;
                                            case 88:
                                                if ((actions & 16) != 0) {
                                                    abstractC0064a.mo40888e();
                                                    break;
                                                }
                                                break;
                                            case 89:
                                                if ((actions & '\b') != 0) {
                                                    abstractC0064a.mo40886g();
                                                    break;
                                                }
                                                break;
                                            case 90:
                                                if ((actions & '@') != 0) {
                                                    abstractC0064a.mo40887f();
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
                            C0076h.this.m46502b(message.arg1, 0);
                            break;
                        case 23:
                            abstractC0064a.mo40909a(message.arg1);
                            break;
                        case 25:
                            abstractC0064a.mo40906a((MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            abstractC0064a.mo40905a((MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            abstractC0064a.mo40895b((MediaDescriptionCompat) message.obj);
                            break;
                        case 28:
                            if (C0076h.this.f155o != null) {
                                QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= C0076h.this.f155o.size()) ? null : C0076h.this.f155o.get(message.arg1);
                                if (queueItem != null) {
                                    abstractC0064a.mo40895b(queueItem.getDescription());
                                    break;
                                }
                            }
                            break;
                        case 29:
                            ((Boolean) message.obj).booleanValue();
                            break;
                        case 30:
                            abstractC0064a.mo40898b(message.arg1);
                            break;
                        case 31:
                            abstractC0064a.mo40894b((RatingCompat) message.obj);
                            break;
                        case 32:
                            abstractC0064a.mo40910a(((Float) message.obj).floatValue());
                            break;
                    }
                } finally {
                    C0076h.this.mo46509a((C1329b.C1331b) null);
                }
            }
        }

        public C0076h(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, AbstractC2922c abstractC2922c, Bundle bundle) {
            if (componentName != null) {
                this.f165y = context;
                this.f141a = context.getPackageName();
                this.f142b = bundle;
                this.f144d = (AudioManager) context.getSystemService("audio");
                this.f143c = str;
                this.f166z = componentName;
                this.f135A = pendingIntent;
                BinderC0079b binderC0079b = new BinderC0079b();
                this.f136B = binderC0079b;
                this.f137C = new Token(binderC0079b, null, abstractC2922c);
                this.f157q = 0;
                this.f162v = 1;
                this.f163w = 3;
                this.f145e = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        /* renamed from: a */
        private void m46511a(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46476a(parcelableVolumeInfo);
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
        }

        /* renamed from: f */
        static int m46491f(int i) {
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

        /* renamed from: g */
        private void m46490g() {
            if (!this.f149i) {
                mo46500b(this.f135A, this.f166z);
                this.f145e.setPlaybackState(0);
                this.f144d.unregisterRemoteControlClient(this.f145e);
                return;
            }
            mo46515a(this.f135A, this.f166z);
            this.f144d.registerRemoteControlClient(this.f145e);
            mo46513a(this.f152l);
            mo46510a(this.f153m);
        }

        /* renamed from: a */
        int mo46517a(long j) {
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

        /* renamed from: a */
        RemoteControlClient.MetadataEditor mo46514a(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.f145e.editMetadata(true);
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
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46521a() {
            this.f149i = false;
            this.f148h = true;
            m46490g();
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46480a();
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
            this.f147g.kill();
            mo46512a((AbstractC0064a) null, (Handler) null);
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46520a(int i) {
            synchronized (this.f146f) {
                this.f151k = i | 1 | 2;
            }
        }

        /* renamed from: a */
        final void m46519a(int i, int i2) {
            if (this.f162v != 2) {
                this.f144d.adjustStreamVolume(this.f163w, i, i2);
            } else if (this.f164x == null) {
            }
        }

        /* renamed from: a */
        final void m46518a(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.f146f) {
                HandlerC0080c handlerC0080c = this.f138D;
                if (handlerC0080c != null) {
                    Message obtainMessage = handlerC0080c.obtainMessage(i, i2, i3, obj);
                    Bundle bundle2 = new Bundle();
                    int callingUid = Binder.getCallingUid();
                    bundle2.putInt("data_calling_uid", callingUid);
                    bundle2.putString("data_calling_pkg", m46493e(callingUid));
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

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46516a(PendingIntent pendingIntent) {
            synchronized (this.f146f) {
                this.f154n = pendingIntent;
            }
        }

        /* renamed from: a */
        void mo46515a(PendingIntent pendingIntent, ComponentName componentName) {
            this.f144d.registerMediaButtonEventReceiver(componentName);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0075 -> B:15:0x0044). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46513a(MediaMetadataCompat mediaMetadataCompat) {
            MediaMetadataCompat mediaMetadataCompat2 = mediaMetadataCompat;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat2 = new MediaMetadataCompat.C0047a(mediaMetadataCompat, MediaSessionCompat.f104c).m46575a();
            }
            synchronized (this.f146f) {
                this.f152l = mediaMetadataCompat2;
            }
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46477a(mediaMetadataCompat2);
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
            if (!this.f149i) {
                return;
            }
            mo46514a(mediaMetadataCompat2 == null ? null : mediaMetadataCompat2.getBundle()).apply();
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public void mo46512a(AbstractC0064a abstractC0064a, Handler handler) {
            synchronized (this.f146f) {
                HandlerC0080c handlerC0080c = this.f138D;
                if (handlerC0080c != null) {
                    handlerC0080c.removeCallbacksAndMessages(null);
                }
                this.f138D = (abstractC0064a == null || handler == null) ? null : new HandlerC0080c(handler.getLooper());
                if (this.f150j != abstractC0064a && this.f150j != null) {
                    this.f150j.m46525a((AbstractC0067b) null, (Handler) null);
                }
                this.f150j = abstractC0064a;
                if (this.f150j != null) {
                    this.f150j.m46525a(this, handler);
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0073 -> B:12:0x002f). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46510a(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f146f) {
                this.f153m = playbackStateCompat;
            }
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46475a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
            if (!this.f149i) {
                return;
            }
            if (playbackStateCompat == null) {
                this.f145e.setPlaybackState(0);
                this.f145e.setTransportControlFlags(0);
                return;
            }
            mo46499b(playbackStateCompat);
            this.f145e.setTransportControlFlags(mo46517a(playbackStateCompat.getActions()));
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46509a(C1329b.C1331b c1331b) {
            synchronized (this.f146f) {
                this.f139E = c1331b;
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46508a(AbstractC1338f abstractC1338f) {
            if (abstractC1338f != null) {
                AbstractC1338f abstractC1338f2 = this.f164x;
                if (abstractC1338f2 != null) {
                    abstractC1338f2.f5007e = null;
                }
                this.f162v = 2;
                this.f164x = abstractC1338f;
                m46511a(new ParcelableVolumeInfo(2, this.f163w, abstractC1338f.f5003a, this.f164x.f5004b, this.f164x.f5006d));
                abstractC1338f.f5007e = this.f140F;
                return;
            }
            throw new IllegalArgumentException("volumeProvider may not be null");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46507a(CharSequence charSequence) {
            this.f156p = charSequence;
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46474a(charSequence);
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46506a(List<QueueItem> list) {
            this.f155o = list;
            for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147g.getBroadcastItem(beginBroadcast).mo46472a(list);
                } catch (RemoteException e) {
                }
            }
            this.f147g.finishBroadcast();
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: a */
        public final void mo46505a(boolean z) {
            if (true == this.f149i) {
                return;
            }
            this.f149i = true;
            m46490g();
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final Token mo46504b() {
            return this.f137C;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final void mo46503b(int i) {
            AbstractC1338f abstractC1338f = this.f164x;
            if (abstractC1338f != null) {
                abstractC1338f.f5007e = null;
            }
            this.f163w = i;
            this.f162v = 1;
            m46511a(new ParcelableVolumeInfo(1, i, 2, this.f144d.getStreamMaxVolume(i), this.f144d.getStreamVolume(this.f163w)));
        }

        /* renamed from: b */
        final void m46502b(int i, int i2) {
            if (this.f162v != 2) {
                this.f144d.setStreamVolume(this.f163w, i, i2);
            } else if (this.f164x == null) {
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: b */
        public final void mo46501b(PendingIntent pendingIntent) {
        }

        /* renamed from: b */
        void mo46500b(PendingIntent pendingIntent, ComponentName componentName) {
            this.f144d.unregisterMediaButtonEventReceiver(componentName);
        }

        /* renamed from: b */
        void mo46499b(PlaybackStateCompat playbackStateCompat) {
            this.f145e.setPlaybackState(m46491f(playbackStateCompat.getState()));
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: c */
        public final PlaybackStateCompat mo46498c() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f146f) {
                playbackStateCompat = this.f153m;
            }
            return playbackStateCompat;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: c */
        public final void mo46497c(int i) {
            if (this.f159s != i) {
                this.f159s = i;
                for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f147g.getBroadcastItem(beginBroadcast).mo46479a(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f147g.finishBroadcast();
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: d */
        public final String mo46496d() {
            return null;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: d */
        public final void mo46495d(int i) {
            if (this.f160t != i) {
                this.f160t = i;
                for (int beginBroadcast = this.f147g.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f147g.getBroadcastItem(beginBroadcast).mo46469b(i);
                    } catch (RemoteException e) {
                    }
                }
                this.f147g.finishBroadcast();
            }
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: e */
        public final C1329b.C1331b mo46494e() {
            C1329b.C1331b c1331b;
            synchronized (this.f146f) {
                c1331b = this.f139E;
            }
            return c1331b;
        }

        /* renamed from: e */
        final String m46493e(int i) {
            String nameForUid = this.f165y.getPackageManager().getNameForUid(i);
            String str = nameForUid;
            if (TextUtils.isEmpty(nameForUid)) {
                str = "android.media.session.MediaController";
            }
            return str;
        }

        @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0067b
        /* renamed from: f */
        public final AbstractC0064a mo46492f() {
            AbstractC0064a abstractC0064a;
            synchronized (this.f146f) {
                abstractC0064a = this.f150j;
            }
            return abstractC0064a;
        }
    }

    private MediaSessionCompat(Context context, AbstractC0067b abstractC0067b) {
        this.f107d = new ArrayList<>();
        this.f105a = abstractC0067b;
        this.f106b = new MediaControllerCompat(context, this);
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

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle, AbstractC2922c abstractC2922c) {
        this.f107d = new ArrayList<>();
        if (context != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("tag must not be null or empty");
            }
            ComponentName componentName2 = componentName;
            if (componentName == null) {
                ComponentName m43209a = MediaButtonReceiver.m43209a(context);
                componentName2 = m43209a;
                if (m43209a == null) {
                    Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
                    componentName2 = m43209a;
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
                    this.f105a = new C0075g(mediaSession, abstractC2922c, bundle);
                } else if (Build.VERSION.SDK_INT >= 28) {
                    this.f105a = new C0074f(mediaSession, abstractC2922c, bundle);
                } else {
                    this.f105a = new C0072e(mediaSession, abstractC2922c, bundle);
                }
                m46533a(new AbstractC0064a() { // from class: android.support.v4.media.session.MediaSessionCompat.1
                }, new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.f105a.mo46501b(pendingIntent2);
            } else if (Build.VERSION.SDK_INT >= 19) {
                this.f105a = new C0070d(context, str, componentName2, pendingIntent2, abstractC2922c, bundle);
            } else if (Build.VERSION.SDK_INT >= 18) {
                this.f105a = new C0068c(context, str, componentName2, pendingIntent2, abstractC2922c, bundle);
            } else {
                this.f105a = new C0076h(context, str, componentName2, pendingIntent2, abstractC2922c, bundle);
            }
            this.f106b = new MediaControllerCompat(context, this);
            if (f104c != 0) {
                return;
            }
            f104c = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            return;
        }
        throw new IllegalArgumentException("context must not be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r8.getState() == 5) goto L13;
     */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.support.p008v4.media.session.PlaybackStateCompat m46531a(android.support.p008v4.media.session.PlaybackStateCompat r8, android.support.p008v4.media.MediaMetadataCompat r9) {
        /*
            r0 = r8
            r10 = r0
            r0 = r8
            if (r0 == 0) goto Lae
            r0 = r8
            long r0 = r0.getPosition()
            r11 = r0
            r0 = -1
            r13 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L1d
            r0 = r8
            r10 = r0
            goto Lae
        L1d:
            r0 = r8
            int r0 = r0.getState()
            r1 = 3
            if (r0 == r1) goto L37
            r0 = r8
            int r0 = r0.getState()
            r1 = 4
            if (r0 == r1) goto L37
            r0 = r8
            r10 = r0
            r0 = r8
            int r0 = r0.getState()
            r1 = 5
            if (r0 != r1) goto Lae
        L37:
            r0 = r8
            long r0 = r0.getLastPositionUpdateTime()
            r11 = r0
            r0 = r8
            r10 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lae
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
            if (r0 == 0) goto L75
            r0 = r13
            r11 = r0
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L75
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            long r0 = r0.getLong(r1)
            r11 = r0
        L75:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L85
            r0 = r17
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L85
            goto L94
        L85:
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L91
            r0 = 0
            r11 = r0
            goto L94
        L91:
            r0 = r17
            r11 = r0
        L94:
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
            android.support.v4.media.session.PlaybackStateCompat$a r0 = r0.m46484a(r1, r2, r3, r4)
            android.support.v4.media.session.PlaybackStateCompat r0 = r0.m46483b()
            r10 = r0
        Lae:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p008v4.media.session.MediaSessionCompat.m46531a(android.support.v4.media.session.PlaybackStateCompat, android.support.v4.media.MediaMetadataCompat):android.support.v4.media.session.PlaybackStateCompat");
    }

    /* renamed from: a */
    public static void m46534a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    /* renamed from: b */
    public static Bundle m46527b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        m46534a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException e) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    /* renamed from: a */
    public final void m46536a() {
        this.f105a.mo46505a(true);
        Iterator<Object> it2 = this.f107d.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    public final void m46535a(int i) {
        this.f105a.mo46503b(i);
    }

    /* renamed from: a */
    public final void m46533a(AbstractC0064a abstractC0064a, Handler handler) {
        Handler handler2;
        AbstractC0067b abstractC0067b;
        if (abstractC0064a == null) {
            abstractC0067b = this.f105a;
            handler2 = null;
            abstractC0064a = null;
        } else {
            AbstractC0067b abstractC0067b2 = this.f105a;
            if (handler == null) {
                handler = new Handler();
            }
            handler2 = handler;
            abstractC0067b = abstractC0067b2;
        }
        abstractC0067b.mo46512a(abstractC0064a, handler2);
    }

    /* renamed from: a */
    public final void m46532a(PlaybackStateCompat playbackStateCompat) {
        this.f105a.mo46510a(playbackStateCompat);
    }

    /* renamed from: a */
    public final void m46530a(CharSequence charSequence) {
        this.f105a.mo46507a(charSequence);
    }

    /* renamed from: a */
    public final void m46529a(List<QueueItem> list) {
        if (list != null) {
            HashSet hashSet = new HashSet();
            for (QueueItem queueItem : list) {
                if (queueItem == null) {
                    throw new IllegalArgumentException("queue shouldn't have null items");
                }
                if (hashSet.contains(Long.valueOf(queueItem.getQueueId()))) {
                    Log.e("MediaSessionCompat", "Found duplicate queue id: " + queueItem.getQueueId(), new IllegalArgumentException("id of each queue item should be unique"));
                }
                hashSet.add(Long.valueOf(queueItem.getQueueId()));
            }
        }
        this.f105a.mo46506a(list);
    }

    /* renamed from: b */
    public final C1329b.C1331b m46528b() {
        return this.f105a.mo46494e();
    }
}
