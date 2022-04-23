package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f384a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b  reason: collision with root package name */
    private final e f385b;

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final c mCallback;
        private final Bundle mExtras;

        CustomActionResultReceiver(String str, Bundle bundle, c cVar, Handler handler) {
            super(handler);
            this.mAction = str;
            this.mExtras = bundle;
            this.mCallback = cVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            if (this.mCallback != null) {
                MediaSessionCompat.a(bundle);
                if (i != -1 && i != 0 && i != 1) {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    static class ItemReceiver extends ResultReceiver {
        private final d mCallback;
        private final String mMediaId;

        ItemReceiver(String str, d dVar, Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = dVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle != null) {
                bundle2 = MediaSessionCompat.b(bundle);
            }
            if (i == 0 && bundle2 != null && bundle2.containsKey("media_item")) {
                bundle2.getParcelable("media_item");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                this.mFlags = i;
                this.mDescription = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.fromMediaDescription(mediaItem.getDescription()), mediaItem.getFlags());
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(fromMediaItem(it2.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public int getFlags() {
            return this.mFlags;
        }

        public String getMediaId() {
            return this.mDescription.getMediaId();
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    static class SearchResultReceiver extends ResultReceiver {
        private final k mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        SearchResultReceiver(String str, Bundle bundle, k kVar, Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = kVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            Parcelable[] parcelableArray;
            Bundle bundle2 = bundle;
            if (bundle != null) {
                bundle2 = MediaSessionCompat.b(bundle);
            }
            if (i == 0 && bundle2 != null && bundle2.containsKey("search_results") && (parcelableArray = bundle2.getParcelableArray("search_results")) != null) {
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static final class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<j> f386a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Messenger> f387b;

        a(j jVar) {
            this.f386a = new WeakReference<>(jVar);
        }

        final void a(Messenger messenger) {
            this.f387b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f387b;
            if (weakReference != null && weakReference.get() != null && this.f386a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.a(data);
                j jVar = this.f386a.get();
                Messenger messenger = this.f387b.get();
                try {
                    int i = message.what;
                    if (i == 1) {
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.a(bundle);
                        jVar.a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                    } else if (i == 2) {
                        jVar.a(messenger);
                    } else if (i != 3) {
                        Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.a(bundle2);
                        Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                        MediaSessionCompat.a(bundle3);
                        jVar.a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        jVar.a(messenger);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.ConnectionCallback f388a;

        /* renamed from: b  reason: collision with root package name */
        AbstractC0006b f389b;

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        final class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnected() {
                if (b.this.f389b != null) {
                    b.this.f389b.a();
                }
                b.this.a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionFailed() {
                b.this.c();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionSuspended() {
                if (b.this.f389b != null) {
                    b.this.f389b.b();
                }
                b.this.b();
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$b.class */
        interface AbstractC0006b {
            void a();

            void b();
        }

        public b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f388a = new a();
            } else {
                this.f388a = null;
            }
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class c {
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.ItemCallback f391a;

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d$a.class */
        final class a extends MediaBrowser.ItemCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public final void onError(String str) {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public final void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                MediaItem.fromMediaItem(mediaItem);
            }
        }

        public d() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f391a = new a();
            } else {
                this.f391a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    public interface e {
        void c();

        void d();

        MediaSessionCompat.Token e();
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$f.class */
    static class f implements b.AbstractC0006b, e, j {

        /* renamed from: a  reason: collision with root package name */
        final Context f393a;

        /* renamed from: b  reason: collision with root package name */
        protected final MediaBrowser f394b;

        /* renamed from: c  reason: collision with root package name */
        protected final Bundle f395c;
        protected int e;
        protected l f;
        protected Messenger g;
        private MediaSessionCompat.Token i;
        private Bundle j;

        /* renamed from: d  reason: collision with root package name */
        protected final a f396d = new a(this);
        private final androidx.b.a<String, m> h = new androidx.b.a<>();

        f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.f393a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f395c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            bundle2.putInt("extra_calling_pid", Process.myPid());
            bVar.f389b = this;
            this.f394b = new MediaBrowser(context, componentName, bVar.f388a, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.AbstractC0006b
        public final void a() {
            try {
                Bundle extras = this.f394b.getExtras();
                if (extras != null) {
                    this.e = extras.getInt("extra_service_version", 0);
                    IBinder a2 = androidx.core.app.d.a(extras, "extra_messenger");
                    if (a2 != null) {
                        this.f = new l(a2, this.f395c);
                        Messenger messenger = new Messenger(this.f396d);
                        this.g = messenger;
                        this.f396d.a(messenger);
                        try {
                            l lVar = this.f;
                            Context context = this.f393a;
                            Messenger messenger2 = this.g;
                            Bundle bundle = new Bundle();
                            bundle.putString("data_package_name", context.getPackageName());
                            bundle.putInt("data_calling_pid", Process.myPid());
                            bundle.putBundle("data_root_hints", lVar.f409a);
                            lVar.a(6, bundle, messenger2);
                        } catch (RemoteException e) {
                        }
                    }
                    android.support.v4.media.session.b a3 = b.a.a(androidx.core.app.d.a(extras, "extra_session_binder"));
                    if (a3 != null) {
                        this.i = MediaSessionCompat.Token.fromToken(this.f394b.getSessionToken(), a3);
                    }
                }
            } catch (IllegalStateException e2) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e2);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.g == messenger) {
                m mVar = this.h.get(str);
                if (mVar == null) {
                    boolean z = MediaBrowserCompat.f384a;
                } else if (mVar.a(bundle) == null) {
                } else {
                    if (bundle == null) {
                        if (list != null) {
                            this.j = bundle2;
                            this.j = null;
                        }
                    } else if (list != null) {
                        this.j = bundle2;
                        this.j = null;
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.AbstractC0006b
        public final void b() {
            this.f = null;
            this.g = null;
            this.i = null;
            this.f396d.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final void c() {
            this.f394b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final void d() {
            Messenger messenger;
            l lVar = this.f;
            if (!(lVar == null || (messenger = this.g) == null)) {
                try {
                    lVar.a(7, null, messenger);
                } catch (RemoteException e) {
                }
            }
            this.f394b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final MediaSessionCompat.Token e() {
            if (this.i == null) {
                this.i = MediaSessionCompat.Token.fromToken(this.f394b.getSessionToken());
            }
            return this.i;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$g.class */
    static class g extends f {
        g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h.class */
    static final class h extends g {
        h(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i.class */
    public static final class i implements e, j {

        /* renamed from: a  reason: collision with root package name */
        final Context f397a;

        /* renamed from: b  reason: collision with root package name */
        final ComponentName f398b;

        /* renamed from: c  reason: collision with root package name */
        final b f399c;

        /* renamed from: d  reason: collision with root package name */
        final Bundle f400d;
        a g;
        l h;
        Messenger i;
        private String k;
        private MediaSessionCompat.Token l;
        private Bundle m;
        private Bundle n;
        final a e = new a(this);
        private final androidx.b.a<String, m> j = new androidx.b.a<>();
        int f = 1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$a.class */
        public final class a implements ServiceConnection {
            a() {
            }

            private void a(Runnable runnable) {
                if (Thread.currentThread() == i.this.e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    i.this.e.post(runnable);
                }
            }

            final boolean a(String str) {
                if (i.this.g == this && i.this.f != 0 && i.this.f != 1) {
                    return true;
                }
                if (i.this.f == 0 || i.this.f == 1) {
                    return false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" for ");
                sb.append(i.this.f398b);
                sb.append(" with mServiceConnection=");
                sb.append(i.this.g);
                sb.append(" this=");
                sb.append(this);
                return false;
            }

            @Override // android.content.ServiceConnection
            public final void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                a(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (MediaBrowserCompat.f384a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceConnected name=");
                            sb.append(componentName);
                            sb.append(" binder=");
                            sb.append(iBinder);
                            i.this.b();
                        }
                        if (a.this.a("onServiceConnected")) {
                            i.this.h = new l(iBinder, i.this.f400d);
                            i.this.i = new Messenger(i.this.e);
                            i.this.e.a(i.this.i);
                            i.this.f = 2;
                            try {
                                if (MediaBrowserCompat.f384a) {
                                    i.this.b();
                                }
                                l lVar = i.this.h;
                                Context context = i.this.f397a;
                                Messenger messenger = i.this.i;
                                Bundle bundle = new Bundle();
                                bundle.putString("data_package_name", context.getPackageName());
                                bundle.putInt("data_calling_pid", Process.myPid());
                                bundle.putBundle("data_root_hints", lVar.f409a);
                                lVar.a(1, bundle, messenger);
                            } catch (RemoteException e) {
                                Log.w("MediaBrowserCompat", "RemoteException during connect for " + i.this.f398b);
                                if (MediaBrowserCompat.f384a) {
                                    i.this.b();
                                }
                            }
                        }
                    }
                });
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(final ComponentName componentName) {
                a(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (MediaBrowserCompat.f384a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceDisconnected name=");
                            sb.append(componentName);
                            sb.append(" this=");
                            sb.append(this);
                            sb.append(" mServiceConnection=");
                            sb.append(i.this.g);
                            i.this.b();
                        }
                        if (a.this.a("onServiceDisconnected")) {
                            i.this.h = null;
                            i.this.i = null;
                            i.this.e.a(null);
                            i.this.f = 4;
                            i.this.f399c.b();
                        }
                    }
                });
            }
        }

        public i(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (bVar != null) {
                this.f397a = context;
                this.f398b = componentName;
                this.f399c = bVar;
                this.f400d = bundle == null ? null : new Bundle(bundle);
            } else {
                throw new IllegalArgumentException("connection callback must not be null");
            }
        }

        private static String a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN/".concat(String.valueOf(i)) : "CONNECT_STATE_SUSPENDED" : "CONNECT_STATE_CONNECTED" : "CONNECT_STATE_CONNECTING" : "CONNECT_STATE_DISCONNECTED" : "CONNECT_STATE_DISCONNECTING";
        }

        private boolean a(Messenger messenger, String str) {
            int i;
            if (this.i == messenger && (i = this.f) != 0 && i != 1) {
                return true;
            }
            int i2 = this.f;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" for ");
            sb.append(this.f398b);
            sb.append(" with mCallbacksMessenger=");
            sb.append(this.i);
            sb.append(" this=");
            sb.append(this);
            return false;
        }

        final void a() {
            a aVar = this.g;
            if (aVar != null) {
                this.f397a.unbindService(aVar);
            }
            this.f = 1;
            this.g = null;
            this.h = null;
            this.i = null;
            this.e.a(null);
            this.k = null;
            this.l = null;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f398b);
            if (a(messenger, "onConnectFailed")) {
                if (this.f != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + a(this.f) + "... ignoring");
                    return;
                }
                a();
                this.f399c.c();
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (a(messenger, "onConnect")) {
                if (this.f != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + a(this.f) + "... ignoring");
                    return;
                }
                this.k = str;
                this.l = token;
                this.m = bundle;
                this.f = 3;
                if (MediaBrowserCompat.f384a) {
                    b();
                }
                this.f399c.a();
                try {
                    for (Map.Entry<String, m> entry : this.j.entrySet()) {
                        String key = entry.getKey();
                        m value = entry.getValue();
                        List<n> list = value.f411a;
                        List<Bundle> list2 = value.f412b;
                        for (int i = 0; i < list.size(); i++) {
                            l lVar = this.h;
                            IBinder iBinder = list.get(i).f414b;
                            Bundle bundle2 = list2.get(i);
                            Messenger messenger2 = this.i;
                            Bundle bundle3 = new Bundle();
                            bundle3.putString("data_media_item_id", key);
                            androidx.core.app.d.a(bundle3, "data_callback_token", iBinder);
                            bundle3.putBundle("data_options", bundle2);
                            lVar.a(3, bundle3, messenger2);
                        }
                    }
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public final void a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f384a) {
                    StringBuilder sb = new StringBuilder("onLoadChildren for ");
                    sb.append(this.f398b);
                    sb.append(" id=");
                    sb.append(str);
                }
                m mVar = this.j.get(str);
                if (mVar == null) {
                    boolean z = MediaBrowserCompat.f384a;
                } else if (mVar.a(bundle) == null) {
                } else {
                    if (bundle == null) {
                        if (list != null) {
                            this.n = bundle2;
                            this.n = null;
                        }
                    } else if (list != null) {
                        this.n = bundle2;
                        this.n = null;
                    }
                }
            }
        }

        final void b() {
            new StringBuilder("  mServiceComponent=").append(this.f398b);
            new StringBuilder("  mCallback=").append(this.f399c);
            new StringBuilder("  mRootHints=").append(this.f400d);
            new StringBuilder("  mState=").append(a(this.f));
            new StringBuilder("  mServiceConnection=").append(this.g);
            new StringBuilder("  mServiceBinderWrapper=").append(this.h);
            new StringBuilder("  mCallbacksMessenger=").append(this.i);
            new StringBuilder("  mRootId=").append(this.k);
            new StringBuilder("  mMediaSessionToken=").append(this.l);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final void c() {
            int i = this.f;
            if (i == 0 || i == 1) {
                this.f = 2;
                this.e.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (i.this.f != 0) {
                            i.this.f = 2;
                            if (MediaBrowserCompat.f384a && i.this.g != null) {
                                throw new RuntimeException("mServiceConnection should be null. Instead it is " + i.this.g);
                            } else if (i.this.h != null) {
                                throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + i.this.h);
                            } else if (i.this.i == null) {
                                Intent intent = new Intent("android.media.browse.MediaBrowserService");
                                intent.setComponent(i.this.f398b);
                                i iVar = i.this;
                                iVar.g = new a();
                                boolean z = false;
                                try {
                                    z = i.this.f397a.bindService(intent, i.this.g, 1);
                                } catch (Exception e) {
                                    Log.e("MediaBrowserCompat", "Failed binding to service " + i.this.f398b);
                                }
                                if (!z) {
                                    i.this.a();
                                    i.this.f399c.c();
                                }
                                if (MediaBrowserCompat.f384a) {
                                    i.this.b();
                                }
                            } else {
                                throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + i.this.i);
                            }
                        }
                    }
                });
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + a(this.f) + ")");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final void d() {
            this.f = 0;
            this.e.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (i.this.i != null) {
                        try {
                            i.this.h.a(2, null, i.this.i);
                        } catch (RemoteException e) {
                            Log.w("MediaBrowserCompat", "RemoteException during connect for " + i.this.f398b);
                        }
                    }
                    int i = i.this.f;
                    i.this.a();
                    if (i != 0) {
                        i.this.f = i;
                    }
                    if (MediaBrowserCompat.f384a) {
                        i.this.b();
                    }
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public final MediaSessionCompat.Token e() {
            if (this.f == 3) {
                return this.l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f + ")");
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    interface j {
        void a(Messenger messenger);

        void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    public static abstract class k {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static final class l {

        /* renamed from: a  reason: collision with root package name */
        Bundle f409a;

        /* renamed from: b  reason: collision with root package name */
        private Messenger f410b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f410b = new Messenger(iBinder);
            this.f409a = bundle;
        }

        final void a(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f410b.send(obtain);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$m.class */
    static final class m {

        /* renamed from: a  reason: collision with root package name */
        final List<n> f411a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final List<Bundle> f412b = new ArrayList();

        public final n a(Bundle bundle) {
            for (int i = 0; i < this.f412b.size(); i++) {
                if (androidx.media.a.a(this.f412b.get(i), bundle)) {
                    return this.f411a.get(i);
                }
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n.class */
    public static abstract class n {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.SubscriptionCallback f413a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f414b = new Binder();

        /* renamed from: c  reason: collision with root package name */
        WeakReference<m> f415c;

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$a.class */
        class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
                m mVar = n.this.f415c == null ? null : n.this.f415c.get();
                if (mVar == null) {
                    MediaItem.fromMediaItemList(list);
                    return;
                }
                List<MediaItem> fromMediaItemList = MediaItem.fromMediaItemList(list);
                List<n> list2 = mVar.f411a;
                List<Bundle> list3 = mVar.f412b;
                for (int i = 0; i < list2.size(); i++) {
                    Bundle bundle = list3.get(i);
                    if (!(bundle == null || fromMediaItemList == null)) {
                        int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                        int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                        if (i2 != -1 || i3 != -1) {
                            int i4 = i3 * i2;
                            int i5 = i4 + i3;
                            if (i2 < 0 || i3 <= 0 || i4 >= fromMediaItemList.size()) {
                                Collections.emptyList();
                            } else {
                                int i6 = i5;
                                if (i5 > fromMediaItemList.size()) {
                                    i6 = fromMediaItemList.size();
                                }
                                fromMediaItemList.subList(i4, i6);
                            }
                        }
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str) {
            }
        }

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$b.class */
        final class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                MediaItem.fromMediaItemList(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
            }
        }

        public n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f413a = new b();
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f413a = new a();
            } else {
                this.f413a = null;
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f385b = new h(context, componentName, bVar, bundle);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f385b = new g(context, componentName, bVar, bundle);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f385b = new f(context, componentName, bVar, bundle);
        } else {
            this.f385b = new i(context, componentName, bVar, bundle);
        }
    }

    public final void a() {
        this.f385b.c();
    }

    public final void b() {
        this.f385b.d();
    }

    public final MediaSessionCompat.Token c() {
        return this.f385b.e();
    }
}
