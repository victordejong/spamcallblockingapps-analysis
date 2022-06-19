package android.support.p008v4.media;

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
import android.support.p008v4.media.session.AbstractC0088b;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.p009os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0741d;
import androidx.media.C1328a;
import androidx.p023b.C0428a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: a */
    static final boolean f19a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b */
    private final AbstractC0027e f20b;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$CustomActionResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final AbstractC0024c mCallback;
        private final Bundle mExtras;

        CustomActionResultReceiver(String str, Bundle bundle, AbstractC0024c abstractC0024c, Handler handler) {
            super(handler);
            this.mAction = str;
            this.mExtras = bundle;
            this.mCallback = abstractC0024c;
        }

        @Override // android.support.p008v4.p009os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            if (this.mCallback == null) {
                return;
            }
            MediaSessionCompat.m46534a(bundle);
            if (i == -1 || i == 0 || i == 1) {
                return;
            }
            Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    static class ItemReceiver extends ResultReceiver {
        private final AbstractC0025d mCallback;
        private final String mMediaId;

        ItemReceiver(String str, AbstractC0025d abstractC0025d, Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = abstractC0025d;
        }

        @Override // android.support.p008v4.p009os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle != null) {
                bundle2 = MediaSessionCompat.m46527b(bundle);
            }
            if (i != 0 || bundle2 == null || !bundle2.containsKey("media_item")) {
                return;
            }
            bundle2.getParcelable("media_item");
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
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
            if (mediaDescriptionCompat != null) {
                if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                    throw new IllegalArgumentException("description must have a non-empty media id");
                }
                this.mFlags = i;
                this.mDescription = mediaDescriptionCompat;
                return;
            }
            throw new IllegalArgumentException("description cannot be null");
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

    /* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    static class SearchResultReceiver extends ResultReceiver {
        private final AbstractC0038k mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        SearchResultReceiver(String str, Bundle bundle, AbstractC0038k abstractC0038k, Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = abstractC0038k;
        }

        @Override // android.support.p008v4.p009os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            Parcelable[] parcelableArray;
            Bundle bundle2 = bundle;
            if (bundle != null) {
                bundle2 = MediaSessionCompat.m46527b(bundle);
            }
            if (i != 0 || bundle2 == null || !bundle2.containsKey("search_results") || (parcelableArray = bundle2.getParcelableArray("search_results")) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static final class HandlerC0020a extends Handler {

        /* renamed from: a */
        private final WeakReference<AbstractC0037j> f21a;

        /* renamed from: b */
        private WeakReference<Messenger> f22b;

        HandlerC0020a(AbstractC0037j abstractC0037j) {
            this.f21a = new WeakReference<>(abstractC0037j);
        }

        /* renamed from: a */
        final void m46593a(Messenger messenger) {
            this.f22b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f22b;
            if (weakReference == null || weakReference.get() == null || this.f21a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.m46534a(data);
            AbstractC0037j abstractC0037j = this.f21a.get();
            Messenger messenger = this.f22b.get();
            try {
                int i = message.what;
                if (i == 1) {
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.m46534a(bundle);
                    abstractC0037j.mo46580a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                } else if (i == 2) {
                    abstractC0037j.mo46581a(messenger);
                } else if (i != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m46534a(bundle2);
                    Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    MediaSessionCompat.m46534a(bundle3);
                    abstractC0037j.mo46579a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                }
            } catch (BadParcelableException e) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what != 1) {
                    return;
                }
                abstractC0037j.mo46581a(messenger);
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class C0021b {

        /* renamed from: a */
        final MediaBrowser.ConnectionCallback f23a;

        /* renamed from: b */
        AbstractC0023b f24b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        public final class C0022a extends MediaBrowser.ConnectionCallback {
            C0022a() {
                C0021b.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnected() {
                if (C0021b.this.f24b != null) {
                    C0021b.this.f24b.mo46592a();
                }
                C0021b.this.mo41044a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionFailed() {
                C0021b.this.mo41042c();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionSuspended() {
                if (C0021b.this.f24b != null) {
                    C0021b.this.f24b.mo46591b();
                }
                C0021b.this.mo41043b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$b.class */
        public interface AbstractC0023b {
            /* renamed from: a */
            void mo46592a();

            /* renamed from: b */
            void mo46591b();
        }

        public C0021b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f23a = new C0022a();
            } else {
                this.f23a = null;
            }
        }

        /* renamed from: a */
        public void mo41044a() {
        }

        /* renamed from: b */
        public void mo41043b() {
        }

        /* renamed from: c */
        public void mo41042c() {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0024c {
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    public static abstract class AbstractC0025d {

        /* renamed from: a */
        final MediaBrowser.ItemCallback f26a;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d$a.class */
        final class C0026a extends MediaBrowser.ItemCallback {
            C0026a() {
                AbstractC0025d.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public final void onError(String str) {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public final void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                MediaItem.fromMediaItem(mediaItem);
            }
        }

        public AbstractC0025d() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f26a = new C0026a();
            } else {
                this.f26a = null;
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    public interface AbstractC0027e {
        /* renamed from: c */
        void mo46586c();

        /* renamed from: d */
        void mo46585d();

        /* renamed from: e */
        MediaSessionCompat.Token mo46584e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$f.class */
    public static class C0028f implements C0021b.AbstractC0023b, AbstractC0027e, AbstractC0037j {

        /* renamed from: a */
        final Context f28a;

        /* renamed from: b */
        protected final MediaBrowser f29b;

        /* renamed from: c */
        protected final Bundle f30c;

        /* renamed from: e */
        protected int f32e;

        /* renamed from: f */
        protected C0039l f33f;

        /* renamed from: g */
        protected Messenger f34g;

        /* renamed from: i */
        private MediaSessionCompat.Token f36i;

        /* renamed from: j */
        private Bundle f37j;

        /* renamed from: d */
        protected final HandlerC0020a f31d = new HandlerC0020a(this);

        /* renamed from: h */
        private final C0428a<String, C0040m> f35h = new C0428a<>();

        C0028f(Context context, ComponentName componentName, C0021b c0021b, Bundle bundle) {
            this.f28a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f30c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            bundle2.putInt("extra_calling_pid", Process.myPid());
            c0021b.f24b = this;
            this.f29b = new MediaBrowser(context, componentName, c0021b.f23a, bundle2);
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b.AbstractC0023b
        /* renamed from: a */
        public final void mo46592a() {
            try {
                Bundle extras = this.f29b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f32e = extras.getInt("extra_service_version", 0);
                IBinder m44595a = C0741d.m44595a(extras, "extra_messenger");
                if (m44595a != null) {
                    this.f33f = new C0039l(m44595a, this.f30c);
                    Messenger messenger = new Messenger(this.f31d);
                    this.f34g = messenger;
                    this.f31d.m46593a(messenger);
                    try {
                        C0039l c0039l = this.f33f;
                        Context context = this.f28a;
                        Messenger messenger2 = this.f34g;
                        Bundle bundle = new Bundle();
                        bundle.putString("data_package_name", context.getPackageName());
                        bundle.putInt("data_calling_pid", Process.myPid());
                        bundle.putBundle("data_root_hints", c0039l.f60a);
                        c0039l.m46578a(6, bundle, messenger2);
                    } catch (RemoteException e) {
                    }
                }
                AbstractC0088b m46467a = AbstractC0088b.AbstractBinderC0089a.m46467a(C0741d.m44595a(extras, "extra_session_binder"));
                if (m46467a == null) {
                    return;
                }
                this.f36i = MediaSessionCompat.Token.fromToken(this.f29b.getSessionToken(), m46467a);
            } catch (IllegalStateException e2) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e2);
            }
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46581a(Messenger messenger) {
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46580a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46579a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.f34g != messenger) {
                return;
            }
            C0040m c0040m = this.f35h.get(str);
            if (c0040m == null) {
                boolean z = MediaBrowserCompat.f19a;
            } else if (c0040m.m46577a(bundle) == null) {
            } else {
                if (bundle == null) {
                    if (list == null) {
                        return;
                    }
                    this.f37j = bundle2;
                    this.f37j = null;
                } else if (list == null) {
                } else {
                    this.f37j = bundle2;
                    this.f37j = null;
                }
            }
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b.AbstractC0023b
        /* renamed from: b */
        public final void mo46591b() {
            this.f33f = null;
            this.f34g = null;
            this.f36i = null;
            this.f31d.m46593a(null);
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: c */
        public final void mo46586c() {
            this.f29b.connect();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: d */
        public final void mo46585d() {
            Messenger messenger;
            C0039l c0039l = this.f33f;
            if (c0039l != null && (messenger = this.f34g) != null) {
                try {
                    c0039l.m46578a(7, null, messenger);
                } catch (RemoteException e) {
                }
            }
            this.f29b.disconnect();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: e */
        public final MediaSessionCompat.Token mo46584e() {
            if (this.f36i == null) {
                this.f36i = MediaSessionCompat.Token.fromToken(this.f29b.getSessionToken());
            }
            return this.f36i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$g.class */
    public static class C0029g extends C0028f {
        C0029g(Context context, ComponentName componentName, C0021b c0021b, Bundle bundle) {
            super(context, componentName, c0021b, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$h */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h.class */
    public static final class C0030h extends C0029g {
        C0030h(Context context, ComponentName componentName, C0021b c0021b, Bundle bundle) {
            super(context, componentName, c0021b, bundle);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i.class */
    public static final class C0031i implements AbstractC0027e, AbstractC0037j {

        /* renamed from: a */
        final Context f38a;

        /* renamed from: b */
        final ComponentName f39b;

        /* renamed from: c */
        final C0021b f40c;

        /* renamed from: d */
        final Bundle f41d;

        /* renamed from: g */
        ServiceConnectionC0034a f44g;

        /* renamed from: h */
        C0039l f45h;

        /* renamed from: i */
        Messenger f46i;

        /* renamed from: k */
        private String f48k;

        /* renamed from: l */
        private MediaSessionCompat.Token f49l;

        /* renamed from: m */
        private Bundle f50m;

        /* renamed from: n */
        private Bundle f51n;

        /* renamed from: e */
        final HandlerC0020a f42e = new HandlerC0020a(this);

        /* renamed from: j */
        private final C0428a<String, C0040m> f47j = new C0428a<>();

        /* renamed from: f */
        int f43f = 1;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$i$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$a.class */
        public final class ServiceConnectionC0034a implements ServiceConnection {
            ServiceConnectionC0034a() {
                C0031i.this = r4;
            }

            /* renamed from: a */
            private void m46583a(Runnable runnable) {
                if (Thread.currentThread() == C0031i.this.f42e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    C0031i.this.f42e.post(runnable);
                }
            }

            /* renamed from: a */
            final boolean m46582a(String str) {
                if (C0031i.this.f44g != this || C0031i.this.f43f == 0 || C0031i.this.f43f == 1) {
                    if (C0031i.this.f43f == 0 || C0031i.this.f43f == 1) {
                        return false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" for ");
                    sb.append(C0031i.this.f39b);
                    sb.append(" with mServiceConnection=");
                    sb.append(C0031i.this.f44g);
                    sb.append(" this=");
                    sb.append(this);
                    return false;
                }
                return true;
            }

            @Override // android.content.ServiceConnection
            public final void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                m46583a(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (MediaBrowserCompat.f19a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceConnected name=");
                            sb.append(componentName);
                            sb.append(" binder=");
                            sb.append(iBinder);
                            C0031i.this.m46587b();
                        }
                        if (!ServiceConnectionC0034a.this.m46582a("onServiceConnected")) {
                            return;
                        }
                        C0031i.this.f45h = new C0039l(iBinder, C0031i.this.f41d);
                        C0031i.this.f46i = new Messenger(C0031i.this.f42e);
                        C0031i.this.f42e.m46593a(C0031i.this.f46i);
                        C0031i.this.f43f = 2;
                        try {
                            if (MediaBrowserCompat.f19a) {
                                C0031i.this.m46587b();
                            }
                            C0039l c0039l = C0031i.this.f45h;
                            Context context = C0031i.this.f38a;
                            Messenger messenger = C0031i.this.f46i;
                            Bundle bundle = new Bundle();
                            bundle.putString("data_package_name", context.getPackageName());
                            bundle.putInt("data_calling_pid", Process.myPid());
                            bundle.putBundle("data_root_hints", c0039l.f60a);
                            c0039l.m46578a(1, bundle, messenger);
                        } catch (RemoteException e) {
                            Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0031i.this.f39b);
                            if (!MediaBrowserCompat.f19a) {
                                return;
                            }
                            C0031i.this.m46587b();
                        }
                    }
                });
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(final ComponentName componentName) {
                m46583a(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (MediaBrowserCompat.f19a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceDisconnected name=");
                            sb.append(componentName);
                            sb.append(" this=");
                            sb.append(this);
                            sb.append(" mServiceConnection=");
                            sb.append(C0031i.this.f44g);
                            C0031i.this.m46587b();
                        }
                        if (!ServiceConnectionC0034a.this.m46582a("onServiceDisconnected")) {
                            return;
                        }
                        C0031i.this.f45h = null;
                        C0031i.this.f46i = null;
                        C0031i.this.f42e.m46593a(null);
                        C0031i.this.f43f = 4;
                        C0031i.this.f40c.mo41043b();
                    }
                });
            }
        }

        public C0031i(Context context, ComponentName componentName, C0021b c0021b, Bundle bundle) {
            if (context != null) {
                if (componentName == null) {
                    throw new IllegalArgumentException("service component must not be null");
                }
                if (c0021b == null) {
                    throw new IllegalArgumentException("connection callback must not be null");
                }
                this.f38a = context;
                this.f39b = componentName;
                this.f40c = c0021b;
                this.f41d = bundle == null ? null : new Bundle(bundle);
                return;
            }
            throw new IllegalArgumentException("context must not be null");
        }

        /* renamed from: a */
        private static String m46589a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN/".concat(String.valueOf(i)) : "CONNECT_STATE_SUSPENDED" : "CONNECT_STATE_CONNECTED" : "CONNECT_STATE_CONNECTING" : "CONNECT_STATE_DISCONNECTED" : "CONNECT_STATE_DISCONNECTING";
        }

        /* renamed from: a */
        private boolean m46588a(Messenger messenger, String str) {
            int i;
            if (this.f46i != messenger || (i = this.f43f) == 0 || i == 1) {
                int i2 = this.f43f;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" for ");
                sb.append(this.f39b);
                sb.append(" with mCallbacksMessenger=");
                sb.append(this.f46i);
                sb.append(" this=");
                sb.append(this);
                return false;
            }
            return true;
        }

        /* renamed from: a */
        final void m46590a() {
            ServiceConnectionC0034a serviceConnectionC0034a = this.f44g;
            if (serviceConnectionC0034a != null) {
                this.f38a.unbindService(serviceConnectionC0034a);
            }
            this.f43f = 1;
            this.f44g = null;
            this.f45h = null;
            this.f46i = null;
            this.f42e.m46593a(null);
            this.f48k = null;
            this.f49l = null;
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46581a(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f39b);
            if (!m46588a(messenger, "onConnectFailed")) {
                return;
            }
            if (this.f43f == 2) {
                m46590a();
                this.f40c.mo41042c();
                return;
            }
            Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m46589a(this.f43f) + "... ignoring");
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46580a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (!m46588a(messenger, "onConnect")) {
                return;
            }
            if (this.f43f != 2) {
                Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m46589a(this.f43f) + "... ignoring");
                return;
            }
            this.f48k = str;
            this.f49l = token;
            this.f50m = bundle;
            this.f43f = 3;
            if (MediaBrowserCompat.f19a) {
                m46587b();
            }
            this.f40c.mo41044a();
            try {
                for (Map.Entry<String, C0040m> entry : this.f47j.entrySet()) {
                    String key = entry.getKey();
                    C0040m value = entry.getValue();
                    List<AbstractC0041n> list = value.f62a;
                    List<Bundle> list2 = value.f63b;
                    for (int i = 0; i < list.size(); i++) {
                        C0039l c0039l = this.f45h;
                        IBinder iBinder = list.get(i).f65b;
                        Bundle bundle2 = list2.get(i);
                        Messenger messenger2 = this.f46i;
                        Bundle bundle3 = new Bundle();
                        bundle3.putString("data_media_item_id", key);
                        C0741d.m44594a(bundle3, "data_callback_token", iBinder);
                        bundle3.putBundle("data_options", bundle2);
                        c0039l.m46578a(3, bundle3, messenger2);
                    }
                }
            } catch (RemoteException e) {
            }
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0037j
        /* renamed from: a */
        public final void mo46579a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (!m46588a(messenger, "onLoadChildren")) {
                return;
            }
            if (MediaBrowserCompat.f19a) {
                StringBuilder sb = new StringBuilder("onLoadChildren for ");
                sb.append(this.f39b);
                sb.append(" id=");
                sb.append(str);
            }
            C0040m c0040m = this.f47j.get(str);
            if (c0040m == null) {
                boolean z = MediaBrowserCompat.f19a;
            } else if (c0040m.m46577a(bundle) == null) {
            } else {
                if (bundle == null) {
                    if (list == null) {
                        return;
                    }
                    this.f51n = bundle2;
                    this.f51n = null;
                } else if (list == null) {
                } else {
                    this.f51n = bundle2;
                    this.f51n = null;
                }
            }
        }

        /* renamed from: b */
        final void m46587b() {
            new StringBuilder("  mServiceComponent=").append(this.f39b);
            new StringBuilder("  mCallback=").append(this.f40c);
            new StringBuilder("  mRootHints=").append(this.f41d);
            new StringBuilder("  mState=").append(m46589a(this.f43f));
            new StringBuilder("  mServiceConnection=").append(this.f44g);
            new StringBuilder("  mServiceBinderWrapper=").append(this.f45h);
            new StringBuilder("  mCallbacksMessenger=").append(this.f46i);
            new StringBuilder("  mRootId=").append(this.f48k);
            new StringBuilder("  mMediaSessionToken=").append(this.f49l);
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: c */
        public final void mo46586c() {
            int i = this.f43f;
            if (i == 0 || i == 1) {
                this.f43f = 2;
                this.f42e.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C0031i.this.f43f == 0) {
                            return;
                        }
                        C0031i.this.f43f = 2;
                        if (MediaBrowserCompat.f19a && C0031i.this.f44g != null) {
                            throw new RuntimeException("mServiceConnection should be null. Instead it is " + C0031i.this.f44g);
                        } else if (C0031i.this.f45h != null) {
                            throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + C0031i.this.f45h);
                        } else if (C0031i.this.f46i != null) {
                            throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + C0031i.this.f46i);
                        } else {
                            Intent intent = new Intent("android.media.browse.MediaBrowserService");
                            intent.setComponent(C0031i.this.f39b);
                            C0031i c0031i = C0031i.this;
                            c0031i.f44g = new ServiceConnectionC0034a();
                            boolean z = false;
                            try {
                                z = C0031i.this.f38a.bindService(intent, C0031i.this.f44g, 1);
                            } catch (Exception e) {
                                Log.e("MediaBrowserCompat", "Failed binding to service " + C0031i.this.f39b);
                            }
                            if (!z) {
                                C0031i.this.m46590a();
                                C0031i.this.f40c.mo41042c();
                            }
                            if (!MediaBrowserCompat.f19a) {
                                return;
                            }
                            C0031i.this.m46587b();
                        }
                    }
                });
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m46589a(this.f43f) + ")");
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: d */
        public final void mo46585d() {
            this.f43f = 0;
            this.f42e.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.i.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (C0031i.this.f46i != null) {
                        try {
                            C0031i.this.f45h.m46578a(2, null, C0031i.this.f46i);
                        } catch (RemoteException e) {
                            Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0031i.this.f39b);
                        }
                    }
                    int i = C0031i.this.f43f;
                    C0031i.this.m46590a();
                    if (i != 0) {
                        C0031i.this.f43f = i;
                    }
                    if (MediaBrowserCompat.f19a) {
                        C0031i.this.m46587b();
                    }
                }
            });
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.AbstractC0027e
        /* renamed from: e */
        public final MediaSessionCompat.Token mo46584e() {
            if (this.f43f == 3) {
                return this.f49l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f43f + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    public interface AbstractC0037j {
        /* renamed from: a */
        void mo46581a(Messenger messenger);

        /* renamed from: a */
        void mo46580a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: a */
        void mo46579a(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$k */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    public static abstract class AbstractC0038k {
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$l */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static final class C0039l {

        /* renamed from: a */
        Bundle f60a;

        /* renamed from: b */
        private Messenger f61b;

        public C0039l(IBinder iBinder, Bundle bundle) {
            this.f61b = new Messenger(iBinder);
            this.f60a = bundle;
        }

        /* renamed from: a */
        final void m46578a(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f61b.send(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$m */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$m.class */
    public static final class C0040m {

        /* renamed from: a */
        final List<AbstractC0041n> f62a = new ArrayList();

        /* renamed from: b */
        final List<Bundle> f63b = new ArrayList();

        /* renamed from: a */
        public final AbstractC0041n m46577a(Bundle bundle) {
            for (int i = 0; i < this.f63b.size(); i++) {
                if (C1328a.m43218a(this.f63b.get(i), bundle)) {
                    return this.f62a.get(i);
                }
            }
            return null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$n */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n.class */
    public static abstract class AbstractC0041n {

        /* renamed from: a */
        final MediaBrowser.SubscriptionCallback f64a;

        /* renamed from: b */
        final IBinder f65b = new Binder();

        /* renamed from: c */
        WeakReference<C0040m> f66c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$n$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$a.class */
        public class C0042a extends MediaBrowser.SubscriptionCallback {
            C0042a() {
                AbstractC0041n.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
                C0040m c0040m = AbstractC0041n.this.f66c == null ? null : AbstractC0041n.this.f66c.get();
                if (c0040m == null) {
                    MediaItem.fromMediaItemList(list);
                    return;
                }
                List<MediaItem> fromMediaItemList = MediaItem.fromMediaItemList(list);
                List<AbstractC0041n> list2 = c0040m.f62a;
                List<Bundle> list3 = c0040m.f63b;
                for (int i = 0; i < list2.size(); i++) {
                    Bundle bundle = list3.get(i);
                    if (bundle != null && fromMediaItemList != null) {
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

        /* renamed from: android.support.v4.media.MediaBrowserCompat$n$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$b.class */
        final class C0043b extends C0042a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0043b() {
                super();
                AbstractC0041n.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
                MediaItem.fromMediaItemList(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str, Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
            }
        }

        public AbstractC0041n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f64a = new C0043b();
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f64a = new C0042a();
            } else {
                this.f64a = null;
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, C0021b c0021b, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f20b = new C0030h(context, componentName, c0021b, bundle);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f20b = new C0029g(context, componentName, c0021b, bundle);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f20b = new C0028f(context, componentName, c0021b, bundle);
        } else {
            this.f20b = new C0031i(context, componentName, c0021b, bundle);
        }
    }

    /* renamed from: a */
    public final void m46596a() {
        this.f20b.mo46586c();
    }

    /* renamed from: b */
    public final void m46595b() {
        this.f20b.mo46585d();
    }

    /* renamed from: c */
    public final MediaSessionCompat.Token m46594c() {
        return this.f20b.mo46584e();
    }
}
