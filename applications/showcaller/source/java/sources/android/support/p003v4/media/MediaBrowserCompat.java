package android.support.p003v4.media;

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
import android.os.RemoteException;
import android.support.p003v4.media.session.AbstractC0059b;
import android.support.p003v4.media.session.MediaSessionCompat;
import android.support.p003v4.p004os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0561e;
import androidx.media.C0866a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: a */
    static final boolean f2a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b */
    private final AbstractC0016d f3b;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$CustomActionResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    private static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: g */
        private final Bundle f4g;

        /* renamed from: h */
        private final AbstractC0015c f5h;

        @Override // android.support.p003v4.p004os.ResultReceiver
        /* renamed from: a */
        protected void mo35772a(int i, Bundle bundle) {
            if (this.f5h == null) {
                return;
            }
            MediaSessionCompat.m35842a(bundle);
            if (i == -1) {
                throw null;
            }
            if (i == 0) {
                throw null;
            }
            if (i == 1) {
                throw null;
            }
            Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.f4g + ", resultData=" + bundle + ")");
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    private static class ItemReceiver extends ResultReceiver {
        @Override // android.support.p003v4.p004os.ResultReceiver
        /* renamed from: a */
        protected void mo35772a(int i, Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            MediaItem mediaItem = (MediaItem) parcelable;
            throw null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new C0010a();

        /* renamed from: d */
        private final int f6d;

        /* renamed from: e */
        private final MediaDescriptionCompat f7e;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem$a.class */
        static final class C0010a implements Parcelable.Creator<MediaItem> {
            C0010a() {
            }

            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            /* renamed from: b */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        MediaItem(Parcel parcel) {
            this.f6d = parcel.readInt();
            this.f7e = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat != null) {
                if (TextUtils.isEmpty(mediaDescriptionCompat.m35894c())) {
                    throw new IllegalArgumentException("description must have a non-empty media id");
                }
                this.f6d = i;
                this.f7e = mediaDescriptionCompat;
                return;
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        /* renamed from: a */
        public static MediaItem m35932a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.m35896a(mediaItem.getDescription()), mediaItem.getFlags());
        }

        /* renamed from: b */
        public static List<MediaItem> m35931b(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m35932a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f6d + ", mDescription=" + this.f7e + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f6d);
            this.f7e.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    private static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.p003v4.p004os.ResultReceiver
        /* renamed from: a */
        protected void mo35772a(int i, Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                throw null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            if (parcelableArray != null) {
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            throw null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static class HandlerC0011a extends Handler {

        /* renamed from: a */
        private final WeakReference<AbstractC0026i> f8a;

        /* renamed from: b */
        private WeakReference<Messenger> f9b;

        HandlerC0011a(AbstractC0026i abstractC0026i) {
            this.f8a = new WeakReference<>(abstractC0026i);
        }

        /* renamed from: a */
        void m35928a(Messenger messenger) {
            this.f9b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f9b;
            if (weakReference == null || weakReference.get() == null || this.f8a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.m35842a(data);
            AbstractC0026i abstractC0026i = this.f8a.get();
            Messenger messenger = this.f9b.get();
            try {
                int i = message.what;
                if (i == 1) {
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.m35842a(bundle);
                    abstractC0026i.mo35913c(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                } else if (i == 2) {
                    abstractC0026i.mo35911g(messenger);
                } else if (i != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m35842a(bundle2);
                    Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    MediaSessionCompat.m35842a(bundle3);
                    abstractC0026i.mo35912d(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                }
            } catch (BadParcelableException e) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what != 1) {
                    return;
                }
                abstractC0026i.mo35911g(messenger);
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class C0012b {

        /* renamed from: a */
        final MediaBrowser.ConnectionCallback f10a;

        /* renamed from: b */
        AbstractC0014b f11b;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        public class C0013a extends MediaBrowser.ConnectionCallback {
            C0013a() {
                C0012b.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                AbstractC0014b abstractC0014b = C0012b.this.f11b;
                if (abstractC0014b != null) {
                    abstractC0014b.mo35925h();
                }
                C0012b.this.mo32232a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                AbstractC0014b abstractC0014b = C0012b.this.f11b;
                if (abstractC0014b != null) {
                    abstractC0014b.mo35924i();
                }
                C0012b.this.mo32231b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                AbstractC0014b abstractC0014b = C0012b.this.f11b;
                if (abstractC0014b != null) {
                    abstractC0014b.mo35926e();
                }
                C0012b.this.mo32230c();
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$b.class */
        public interface AbstractC0014b {
            /* renamed from: e */
            void mo35926e();

            /* renamed from: h */
            void mo35925h();

            /* renamed from: i */
            void mo35924i();
        }

        public C0012b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f10a = new C0013a();
            } else {
                this.f10a = null;
            }
        }

        /* renamed from: a */
        public void mo32232a() {
            throw null;
        }

        /* renamed from: b */
        public void mo32231b() {
            throw null;
        }

        /* renamed from: c */
        public void mo32230c() {
            throw null;
        }

        /* renamed from: d */
        void m35927d(AbstractC0014b abstractC0014b) {
            this.f11b = abstractC0014b;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0015c {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    public interface AbstractC0016d {
        /* renamed from: a */
        void mo35923a();

        /* renamed from: b */
        MediaSessionCompat.Token mo35922b();

        /* renamed from: f */
        void mo35920f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    public static class C0017e implements AbstractC0016d, AbstractC0026i, C0012b.AbstractC0014b {

        /* renamed from: a */
        final Context f13a;

        /* renamed from: b */
        protected final MediaBrowser f14b;

        /* renamed from: c */
        protected final Bundle f15c;

        /* renamed from: d */
        protected final HandlerC0011a f16d = new HandlerC0011a(this);

        /* renamed from: e */
        private final C1489a<String, C0028k> f17e = new C1489a<>();

        /* renamed from: f */
        protected int f18f;

        /* renamed from: g */
        protected C0027j f19g;

        /* renamed from: h */
        protected Messenger f20h;

        /* renamed from: i */
        private MediaSessionCompat.Token f21i;

        /* renamed from: j */
        private Bundle f22j;

        C0017e(Context context, ComponentName componentName, C0012b c0012b, Bundle bundle) {
            this.f13a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f15c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            c0012b.m35927d(this);
            this.f14b = new MediaBrowser(context, componentName, c0012b.f10a, bundle2);
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: a */
        public void mo35923a() {
            Messenger messenger;
            C0027j c0027j = this.f19g;
            if (c0027j != null && (messenger = this.f20h) != null) {
                try {
                    c0027j.m35905f(messenger);
                } catch (RemoteException e) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            this.f14b.disconnect();
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: b */
        public MediaSessionCompat.Token mo35922b() {
            if (this.f21i == null) {
                this.f21i = MediaSessionCompat.Token.m35835a(this.f14b.getSessionToken());
            }
            return this.f21i;
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: c */
        public void mo35913c(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: d */
        public void mo35912d(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f20h != messenger) {
                return;
            }
            C0028k c0028k = this.f17e.get(str);
            if (c0028k == null) {
                if (!MediaBrowserCompat.f2a) {
                    return;
                }
                Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                return;
            }
            AbstractC0029l m35904a = c0028k.m35904a(bundle);
            if (m35904a == null) {
                return;
            }
            if (bundle == null) {
                if (list == null) {
                    m35904a.m35899c(str);
                    return;
                }
                this.f22j = bundle2;
                m35904a.m35901a(str, list);
                this.f22j = null;
            } else if (list == null) {
                m35904a.m35898d(str, bundle);
            } else {
                this.f22j = bundle2;
                m35904a.m35900b(str, list, bundle);
                this.f22j = null;
            }
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b.AbstractC0014b
        /* renamed from: e */
        public void mo35926e() {
            this.f19g = null;
            this.f20h = null;
            this.f21i = null;
            this.f16d.m35928a(null);
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: f */
        public void mo35920f() {
            this.f14b.connect();
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: g */
        public void mo35911g(Messenger messenger) {
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b.AbstractC0014b
        /* renamed from: h */
        public void mo35925h() {
            try {
                Bundle extras = this.f14b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f18f = extras.getInt("extra_service_version", 0);
                IBinder m33461a = C0561e.m33461a(extras, "extra_messenger");
                if (m33461a != null) {
                    this.f19g = new C0027j(m33461a, this.f15c);
                    Messenger messenger = new Messenger(this.f16d);
                    this.f20h = messenger;
                    this.f16d.m35928a(messenger);
                    try {
                        this.f19g.m35907d(this.f13a, this.f20h);
                    } catch (RemoteException e) {
                        Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                    }
                }
                AbstractC0059b m35807c0 = AbstractC0059b.AbstractBinderC0060a.m35807c0(C0561e.m33461a(extras, "extra_session_binder"));
                if (m35807c0 == null) {
                    return;
                }
                this.f21i = MediaSessionCompat.Token.m35834b(this.f14b.getSessionToken(), m35807c0);
            } catch (IllegalStateException e2) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e2);
            }
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b.AbstractC0014b
        /* renamed from: i */
        public void mo35924i() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$f.class */
    public static class C0018f extends C0017e {
        C0018f(Context context, ComponentName componentName, C0012b c0012b, Bundle bundle) {
            super(context, componentName, c0012b, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$g.class */
    public static class C0019g extends C0018f {
        C0019g(Context context, ComponentName componentName, C0012b c0012b, Bundle bundle) {
            super(context, componentName, c0012b, bundle);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$h */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h.class */
    public static class C0020h implements AbstractC0016d, AbstractC0026i {

        /* renamed from: a */
        final Context f23a;

        /* renamed from: b */
        final ComponentName f24b;

        /* renamed from: c */
        final C0012b f25c;

        /* renamed from: d */
        final Bundle f26d;

        /* renamed from: e */
        final HandlerC0011a f27e = new HandlerC0011a(this);

        /* renamed from: f */
        private final C1489a<String, C0028k> f28f = new C1489a<>();

        /* renamed from: g */
        int f29g = 1;

        /* renamed from: h */
        ServiceConnectionC0023c f30h;

        /* renamed from: i */
        C0027j f31i;

        /* renamed from: j */
        Messenger f32j;

        /* renamed from: k */
        private String f33k;

        /* renamed from: l */
        private MediaSessionCompat.Token f34l;

        /* renamed from: m */
        private Bundle f35m;

        /* renamed from: n */
        private Bundle f36n;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$h$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$a.class */
        class RunnableC0021a implements Runnable {
            RunnableC0021a() {
                C0020h.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                C0020h c0020h = C0020h.this;
                if (c0020h.f29g == 0) {
                    return;
                }
                c0020h.f29g = 2;
                if (MediaBrowserCompat.f2a && c0020h.f30h != null) {
                    throw new RuntimeException("mServiceConnection should be null. Instead it is " + C0020h.this.f30h);
                } else if (c0020h.f31i != null) {
                    throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + C0020h.this.f31i);
                } else if (c0020h.f32j != null) {
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + C0020h.this.f32j);
                } else {
                    Intent intent = new Intent("android.media.browse.MediaBrowserService");
                    intent.setComponent(C0020h.this.f24b);
                    C0020h c0020h2 = C0020h.this;
                    c0020h2.f30h = new ServiceConnectionC0023c();
                    try {
                        C0020h c0020h3 = C0020h.this;
                        z = c0020h3.f23a.bindService(intent, c0020h3.f30h, 1);
                    } catch (Exception e) {
                        Log.e("MediaBrowserCompat", "Failed binding to service " + C0020h.this.f24b);
                        z = false;
                    }
                    if (!z) {
                        C0020h.this.m35919h();
                        C0020h.this.f25c.mo32231b();
                    }
                    if (!MediaBrowserCompat.f2a) {
                        return;
                    }
                    Log.d("MediaBrowserCompat", "connect...");
                    C0020h.this.m35921e();
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$h$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$b.class */
        class RunnableC0022b implements Runnable {
            RunnableC0022b() {
                C0020h.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0020h c0020h = C0020h.this;
                Messenger messenger = c0020h.f32j;
                if (messenger != null) {
                    try {
                        c0020h.f31i.m35908c(messenger);
                    } catch (RemoteException e) {
                        Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0020h.this.f24b);
                    }
                }
                C0020h c0020h2 = C0020h.this;
                int i = c0020h2.f29g;
                c0020h2.m35919h();
                if (i != 0) {
                    C0020h.this.f29g = i;
                }
                if (MediaBrowserCompat.f2a) {
                    Log.d("MediaBrowserCompat", "disconnect...");
                    C0020h.this.m35921e();
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$h$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$c.class */
        public class ServiceConnectionC0023c implements ServiceConnection {

            /* renamed from: android.support.v4.media.MediaBrowserCompat$h$c$a */
            /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$c$a.class */
            class RunnableC0024a implements Runnable {

                /* renamed from: d */
                final /* synthetic */ ComponentName f40d;

                /* renamed from: e */
                final /* synthetic */ IBinder f41e;

                RunnableC0024a(ComponentName componentName, IBinder iBinder) {
                    ServiceConnectionC0023c.this = r4;
                    this.f40d = componentName;
                    this.f41e = iBinder;
                }

                @Override // java.lang.Runnable
                public void run() {
                    boolean z = MediaBrowserCompat.f2a;
                    if (z) {
                        Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.f40d + " binder=" + this.f41e);
                        C0020h.this.m35921e();
                    }
                    if (!ServiceConnectionC0023c.this.m35915a("onServiceConnected")) {
                        return;
                    }
                    C0020h c0020h = C0020h.this;
                    c0020h.f31i = new C0027j(this.f41e, c0020h.f26d);
                    C0020h.this.f32j = new Messenger(C0020h.this.f27e);
                    C0020h c0020h2 = C0020h.this;
                    c0020h2.f27e.m35928a(c0020h2.f32j);
                    C0020h.this.f29g = 2;
                    if (z) {
                        try {
                            Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                            C0020h.this.m35921e();
                        } catch (RemoteException e) {
                            Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0020h.this.f24b);
                            if (!MediaBrowserCompat.f2a) {
                                return;
                            }
                            Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                            C0020h.this.m35921e();
                            return;
                        }
                    }
                    C0020h c0020h3 = C0020h.this;
                    c0020h3.f31i.m35909b(c0020h3.f23a, c0020h3.f32j);
                }
            }

            /* renamed from: android.support.v4.media.MediaBrowserCompat$h$c$b */
            /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$c$b.class */
            class RunnableC0025b implements Runnable {

                /* renamed from: d */
                final /* synthetic */ ComponentName f43d;

                RunnableC0025b(ComponentName componentName) {
                    ServiceConnectionC0023c.this = r4;
                    this.f43d = componentName;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f2a) {
                        Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.f43d + " this=" + this + " mServiceConnection=" + C0020h.this.f30h);
                        C0020h.this.m35921e();
                    }
                    if (!ServiceConnectionC0023c.this.m35915a("onServiceDisconnected")) {
                        return;
                    }
                    C0020h c0020h = C0020h.this;
                    c0020h.f31i = null;
                    c0020h.f32j = null;
                    c0020h.f27e.m35928a(null);
                    C0020h c0020h2 = C0020h.this;
                    c0020h2.f29g = 4;
                    c0020h2.f25c.mo32230c();
                }
            }

            ServiceConnectionC0023c() {
                C0020h.this = r4;
            }

            /* renamed from: b */
            private void m35914b(Runnable runnable) {
                if (Thread.currentThread() == C0020h.this.f27e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    C0020h.this.f27e.post(runnable);
                }
            }

            /* renamed from: a */
            boolean m35915a(String str) {
                int i;
                C0020h c0020h = C0020h.this;
                if (c0020h.f30h != this || (i = c0020h.f29g) == 0 || i == 1) {
                    int i2 = c0020h.f29g;
                    if (i2 == 0 || i2 == 1) {
                        return false;
                    }
                    Log.i("MediaBrowserCompat", str + " for " + C0020h.this.f24b + " with mServiceConnection=" + C0020h.this.f30h + " this=" + this);
                    return false;
                }
                return true;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                m35914b(new RunnableC0024a(componentName, iBinder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                m35914b(new RunnableC0025b(componentName));
            }
        }

        public C0020h(Context context, ComponentName componentName, C0012b c0012b, Bundle bundle) {
            if (context != null) {
                if (componentName == null) {
                    throw new IllegalArgumentException("service component must not be null");
                }
                if (c0012b == null) {
                    throw new IllegalArgumentException("connection callback must not be null");
                }
                this.f23a = context;
                this.f24b = componentName;
                this.f25c = c0012b;
                this.f26d = bundle == null ? null : new Bundle(bundle);
                return;
            }
            throw new IllegalArgumentException("context must not be null");
        }

        /* renamed from: i */
        private static String m35918i(int i) {
            if (i != 0) {
                if (i == 1) {
                    return "CONNECT_STATE_DISCONNECTED";
                }
                if (i == 2) {
                    return "CONNECT_STATE_CONNECTING";
                }
                if (i == 3) {
                    return "CONNECT_STATE_CONNECTED";
                }
                if (i == 4) {
                    return "CONNECT_STATE_SUSPENDED";
                }
                return "UNKNOWN/" + i;
            }
            return "CONNECT_STATE_DISCONNECTING";
        }

        /* renamed from: k */
        private boolean m35916k(Messenger messenger, String str) {
            int i;
            if (this.f32j != messenger || (i = this.f29g) == 0 || i == 1) {
                int i2 = this.f29g;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                Log.i("MediaBrowserCompat", str + " for " + this.f24b + " with mCallbacksMessenger=" + this.f32j + " this=" + this);
                return false;
            }
            return true;
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: a */
        public void mo35923a() {
            this.f29g = 0;
            this.f27e.post(new RunnableC0022b());
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: b */
        public MediaSessionCompat.Token mo35922b() {
            if (m35917j()) {
                return this.f34l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f29g + ")");
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: c */
        public void mo35913c(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (!m35916k(messenger, "onConnect")) {
                return;
            }
            if (this.f29g != 2) {
                Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m35918i(this.f29g) + "... ignoring");
                return;
            }
            this.f33k = str;
            this.f34l = token;
            this.f35m = bundle;
            this.f29g = 3;
            if (MediaBrowserCompat.f2a) {
                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                m35921e();
            }
            this.f25c.mo32232a();
            try {
                for (Map.Entry<String, C0028k> entry : this.f28f.entrySet()) {
                    String key = entry.getKey();
                    C0028k value = entry.getValue();
                    List<AbstractC0029l> m35903b = value.m35903b();
                    List<Bundle> m35902c = value.m35902c();
                    for (int i = 0; i < m35903b.size(); i++) {
                        this.f31i.m35910a(key, m35903b.get(i).f50b, m35902c.get(i), this.f32j);
                    }
                }
            } catch (RemoteException e) {
                Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
            }
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: d */
        public void mo35912d(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (!m35916k(messenger, "onLoadChildren")) {
                return;
            }
            boolean z = MediaBrowserCompat.f2a;
            if (z) {
                Log.d("MediaBrowserCompat", "onLoadChildren for " + this.f24b + " id=" + str);
            }
            C0028k c0028k = this.f28f.get(str);
            if (c0028k == null) {
                if (!z) {
                    return;
                }
                Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                return;
            }
            AbstractC0029l m35904a = c0028k.m35904a(bundle);
            if (m35904a == null) {
                return;
            }
            if (bundle == null) {
                if (list == null) {
                    m35904a.m35899c(str);
                    return;
                }
                this.f36n = bundle2;
                m35904a.m35901a(str, list);
                this.f36n = null;
            } else if (list == null) {
                m35904a.m35898d(str, bundle);
            } else {
                this.f36n = bundle2;
                m35904a.m35900b(str, list, bundle);
                this.f36n = null;
            }
        }

        /* renamed from: e */
        void m35921e() {
            Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
            Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.f24b);
            Log.d("MediaBrowserCompat", "  mCallback=" + this.f25c);
            Log.d("MediaBrowserCompat", "  mRootHints=" + this.f26d);
            Log.d("MediaBrowserCompat", "  mState=" + m35918i(this.f29g));
            Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.f30h);
            Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.f31i);
            Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.f32j);
            Log.d("MediaBrowserCompat", "  mRootId=" + this.f33k);
            Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.f34l);
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0016d
        /* renamed from: f */
        public void mo35920f() {
            int i = this.f29g;
            if (i == 0 || i == 1) {
                this.f29g = 2;
                this.f27e.post(new RunnableC0021a());
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m35918i(this.f29g) + ")");
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.AbstractC0026i
        /* renamed from: g */
        public void mo35911g(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f24b);
            if (!m35916k(messenger, "onConnectFailed")) {
                return;
            }
            if (this.f29g == 2) {
                m35919h();
                this.f25c.mo32231b();
                return;
            }
            Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m35918i(this.f29g) + "... ignoring");
        }

        /* renamed from: h */
        void m35919h() {
            ServiceConnectionC0023c serviceConnectionC0023c = this.f30h;
            if (serviceConnectionC0023c != null) {
                this.f23a.unbindService(serviceConnectionC0023c);
            }
            this.f29g = 1;
            this.f30h = null;
            this.f31i = null;
            this.f32j = null;
            this.f27e.m35928a(null);
            this.f33k = null;
            this.f34l = null;
        }

        /* renamed from: j */
        public boolean m35917j() {
            return this.f29g == 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$i */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i.class */
    public interface AbstractC0026i {
        /* renamed from: c */
        void mo35913c(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: d */
        void mo35912d(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);

        /* renamed from: g */
        void mo35911g(Messenger messenger);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    public static class C0027j {

        /* renamed from: a */
        private Messenger f45a;

        /* renamed from: b */
        private Bundle f46b;

        public C0027j(IBinder iBinder, Bundle bundle) {
            this.f45a = new Messenger(iBinder);
            this.f46b = bundle;
        }

        /* renamed from: e */
        private void m35906e(int i, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f45a.send(obtain);
        }

        /* renamed from: a */
        void m35910a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            C0561e.m33460b(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            m35906e(3, bundle2, messenger);
        }

        /* renamed from: b */
        void m35909b(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f46b);
            m35906e(1, bundle, messenger);
        }

        /* renamed from: c */
        void m35908c(Messenger messenger) {
            m35906e(2, null, messenger);
        }

        /* renamed from: d */
        void m35907d(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f46b);
            m35906e(6, bundle, messenger);
        }

        /* renamed from: f */
        void m35905f(Messenger messenger) {
            m35906e(7, null, messenger);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$k */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    public static class C0028k {

        /* renamed from: a */
        private final List<AbstractC0029l> f47a = new ArrayList();

        /* renamed from: b */
        private final List<Bundle> f48b = new ArrayList();

        /* renamed from: a */
        public AbstractC0029l m35904a(Bundle bundle) {
            for (int i = 0; i < this.f48b.size(); i++) {
                if (C0866a.m32248a(this.f48b.get(i), bundle)) {
                    return this.f47a.get(i);
                }
            }
            return null;
        }

        /* renamed from: b */
        public List<AbstractC0029l> m35903b() {
            return this.f47a;
        }

        /* renamed from: c */
        public List<Bundle> m35902c() {
            return this.f48b;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$l */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static abstract class AbstractC0029l {

        /* renamed from: a */
        final MediaBrowser.SubscriptionCallback f49a;

        /* renamed from: b */
        final IBinder f50b = new Binder();

        /* renamed from: c */
        WeakReference<C0028k> f51c;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$l$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l$a.class */
        public class C0030a extends MediaBrowser.SubscriptionCallback {
            C0030a() {
                AbstractC0029l.this = r4;
            }

            /* renamed from: a */
            List<MediaItem> m35897a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                if (i == -1 && i2 == -1) {
                    return list;
                }
                int i3 = i2 * i;
                int i4 = i3 + i2;
                if (i < 0 || i2 < 1 || i3 >= list.size()) {
                    return Collections.emptyList();
                }
                int i5 = i4;
                if (i4 > list.size()) {
                    i5 = list.size();
                }
                return list.subList(i3, i5);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
                WeakReference<C0028k> weakReference = AbstractC0029l.this.f51c;
                C0028k c0028k = weakReference == null ? null : weakReference.get();
                if (c0028k == null) {
                    AbstractC0029l.this.m35901a(str, MediaItem.m35931b(list));
                    return;
                }
                List<MediaItem> m35931b = MediaItem.m35931b(list);
                List<AbstractC0029l> m35903b = c0028k.m35903b();
                List<Bundle> m35902c = c0028k.m35902c();
                for (int i = 0; i < m35903b.size(); i++) {
                    Bundle bundle = m35902c.get(i);
                    if (bundle == null) {
                        AbstractC0029l.this.m35901a(str, m35931b);
                    } else {
                        AbstractC0029l.this.m35900b(str, m35897a(m35931b, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str) {
                AbstractC0029l.this.m35899c(str);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$l$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l$b.class */
        private class C0031b extends C0030a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0031b() {
                super();
                AbstractC0029l.this = r4;
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
                MediaSessionCompat.m35842a(bundle);
                AbstractC0029l.this.m35900b(str, MediaItem.m35931b(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str, Bundle bundle) {
                MediaSessionCompat.m35842a(bundle);
                AbstractC0029l.this.m35898d(str, bundle);
            }
        }

        public AbstractC0029l() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                this.f49a = new C0031b();
            } else if (i >= 21) {
                this.f49a = new C0030a();
            } else {
                this.f49a = null;
            }
        }

        /* renamed from: a */
        public void m35901a(String str, List<MediaItem> list) {
        }

        /* renamed from: b */
        public void m35900b(String str, List<MediaItem> list, Bundle bundle) {
        }

        /* renamed from: c */
        public void m35899c(String str) {
        }

        /* renamed from: d */
        public void m35898d(String str, Bundle bundle) {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, C0012b c0012b, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f3b = new C0019g(context, componentName, c0012b, bundle);
        } else if (i >= 23) {
            this.f3b = new C0018f(context, componentName, c0012b, bundle);
        } else if (i >= 21) {
            this.f3b = new C0017e(context, componentName, c0012b, bundle);
        } else {
            this.f3b = new C0020h(context, componentName, c0012b, bundle);
        }
    }

    /* renamed from: a */
    public void m35935a() {
        Log.d("MediaBrowserCompat", "Connecting to a MediaBrowserService.");
        this.f3b.mo35920f();
    }

    /* renamed from: b */
    public void m35934b() {
        this.f3b.mo35923a();
    }

    /* renamed from: c */
    public MediaSessionCompat.Token m35933c() {
        return this.f3b.mo35922b();
    }
}
