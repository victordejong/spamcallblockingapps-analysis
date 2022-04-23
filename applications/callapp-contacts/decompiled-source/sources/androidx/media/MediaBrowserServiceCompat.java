package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
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
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f2625a = Log.isLoggable("MBServiceCompat", 3);
    b e;
    MediaSessionCompat.Token g;
    private c h;

    /* renamed from: b  reason: collision with root package name */
    final b f2626b = new b("android.media.session.MediaController", -1, -1, null, null);

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<b> f2627c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    final androidx.b.a<IBinder, b> f2628d = new androidx.b.a<>();
    final n f = new n();

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f2639a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f2640b;

        public a(String str, Bundle bundle) {
            if (str != null) {
                this.f2639a = str;
                this.f2640b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$b.class */
    public final class b implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        public final String f2641a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2642b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2643c;

        /* renamed from: d  reason: collision with root package name */
        public final b.C0073b f2644d;
        public final Bundle e;
        public final l f;
        public final HashMap<String, List<androidx.core.e.b<IBinder, Bundle>>> g = new HashMap<>();
        public a h;

        b(String str, int i, int i2, Bundle bundle, l lVar) {
            this.f2641a = str;
            this.f2642b = i;
            this.f2643c = i2;
            this.f2644d = new b.C0073b(str, i, i2);
            this.e = bundle;
            this.f = lVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.f.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaBrowserServiceCompat.this.f2628d.remove(b.this.f.a());
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$c.class */
    interface c {
        IBinder a(Intent intent);

        void a();

        void a(MediaSessionCompat.Token token);

        b.C0073b b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d.class */
    class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final List<Bundle> f2646a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        MediaBrowserService f2647b;

        /* renamed from: c  reason: collision with root package name */
        Messenger f2648c;

        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d$a.class */
        class a extends MediaBrowserService {
            a(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a a2 = d.this.a(str, i, bundle == null ? null : new Bundle(bundle));
                if (a2 == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(a2.f2639a, a2.f2640b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                final d dVar = d.this;
                final j jVar = new j(result);
                i<List<MediaBrowserCompat.MediaItem>> iVar = new i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.d.2
                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    public final void a() {
                        jVar.f2670a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    final /* synthetic */ void a(List<MediaBrowserCompat.MediaItem> list) {
                        ArrayList arrayList;
                        List<MediaBrowserCompat.MediaItem> list2 = list;
                        if (list2 != null) {
                            ArrayList arrayList2 = new ArrayList();
                            Iterator<MediaBrowserCompat.MediaItem> it2 = list2.iterator();
                            while (true) {
                                arrayList = arrayList2;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                MediaBrowserCompat.MediaItem next = it2.next();
                                Parcel obtain = Parcel.obtain();
                                next.writeToParcel(obtain, 0);
                                arrayList2.add(obtain);
                            }
                        } else {
                            arrayList = null;
                        }
                        jVar.a((j) arrayList);
                    }
                };
                MediaBrowserServiceCompat.this.e = MediaBrowserServiceCompat.this.f2626b;
                MediaBrowserServiceCompat.this.a(str, iVar);
                MediaBrowserServiceCompat.this.e = null;
            }
        }

        d() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final IBinder a(Intent intent) {
            return this.f2647b.onBind(intent);
        }

        public final a a(String str, int i, Bundle bundle) {
            int i2;
            Bundle bundle2;
            Bundle bundle3;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
                i2 = -1;
            } else {
                bundle.remove("extra_client_version");
                this.f2648c = new Messenger(MediaBrowserServiceCompat.this.f);
                Bundle bundle4 = new Bundle();
                bundle4.putInt("extra_service_version", 2);
                androidx.core.app.d.a(bundle4, "extra_messenger", this.f2648c.getBinder());
                if (MediaBrowserServiceCompat.this.g != null) {
                    android.support.v4.media.session.b extraBinder = MediaBrowserServiceCompat.this.g.getExtraBinder();
                    androidx.core.app.d.a(bundle4, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f2646a.add(bundle4);
                }
                i2 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
                bundle2 = bundle4;
            }
            b bVar = new b(str, i2, i, bundle, null);
            MediaBrowserServiceCompat.this.e = bVar;
            a a2 = MediaBrowserServiceCompat.this.a(str, i, bundle);
            MediaBrowserServiceCompat.this.e = null;
            if (a2 == null) {
                return null;
            }
            if (this.f2648c != null) {
                MediaBrowserServiceCompat.this.f2627c.add(bVar);
            }
            if (bundle2 == null) {
                bundle3 = a2.f2640b;
            } else {
                bundle3 = bundle2;
                if (a2.f2640b != null) {
                    bundle2.putAll(a2.f2640b);
                    bundle3 = bundle2;
                }
            }
            return new a(a2.f2639a, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public void a() {
            a aVar = new a(MediaBrowserServiceCompat.this);
            this.f2647b = aVar;
            aVar.onCreate();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final void a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!d.this.f2646a.isEmpty()) {
                        android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                        if (extraBinder != null) {
                            for (Bundle bundle : d.this.f2646a) {
                                androidx.core.app.d.a(bundle, "extra_session_binder", extraBinder.asBinder());
                            }
                        }
                        d.this.f2646a.clear();
                    }
                    d.this.f2647b.setSessionToken((MediaSession.Token) token.getToken());
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public b.C0073b b() {
            if (MediaBrowserServiceCompat.this.e != null) {
                return MediaBrowserServiceCompat.this.e.f2644d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    class e extends d {

        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e$a.class */
        class a extends d.a {
            a(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                final e eVar = e.this;
                final j jVar = new j(result);
                i<MediaBrowserCompat.MediaItem> iVar = new i<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.e.1
                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    public final void a() {
                        jVar.f2670a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    final /* synthetic */ void a(MediaBrowserCompat.MediaItem mediaItem) {
                        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                        if (mediaItem2 == null) {
                            jVar.a((j) null);
                            return;
                        }
                        Parcel obtain = Parcel.obtain();
                        mediaItem2.writeToParcel(obtain, 0);
                        jVar.a((j) obtain);
                    }
                };
                MediaBrowserServiceCompat.this.e = MediaBrowserServiceCompat.this.f2626b;
                MediaBrowserServiceCompat.this.b(str, iVar);
                MediaBrowserServiceCompat.this.e = null;
            }
        }

        e() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.d, androidx.media.MediaBrowserServiceCompat.c
        public void a() {
            this.f2647b = new a(MediaBrowserServiceCompat.this);
            this.f2647b.onCreate();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    class f extends e {

        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        final class a extends e.a {
            a(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, final Bundle bundle) {
                MediaSessionCompat.a(bundle);
                MediaBrowserServiceCompat.this.e = MediaBrowserServiceCompat.this.f2626b;
                final f fVar = f.this;
                final j jVar = new j(result);
                i<List<MediaBrowserCompat.MediaItem>> iVar = new i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.f.1
                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    public final void a() {
                        jVar.f2670a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.i
                    final /* synthetic */ void a(List<MediaBrowserCompat.MediaItem> list) {
                        List<MediaBrowserCompat.MediaItem> list2 = list;
                        if (list2 == null) {
                            jVar.a((j) null);
                            return;
                        }
                        List<MediaBrowserCompat.MediaItem> list3 = list2;
                        if ((this.f & 1) != 0) {
                            list3 = MediaBrowserServiceCompat.a(list2, bundle);
                        }
                        ArrayList arrayList = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list3) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                        jVar.a((j) arrayList);
                    }
                };
                MediaBrowserServiceCompat.this.e = MediaBrowserServiceCompat.this.f2626b;
                MediaBrowserServiceCompat.this.a(str, iVar, bundle);
                MediaBrowserServiceCompat.this.e = null;
                MediaBrowserServiceCompat.this.e = null;
            }
        }

        f() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.e, androidx.media.MediaBrowserServiceCompat.d, androidx.media.MediaBrowserServiceCompat.c
        public final void a() {
            this.f2647b = new a(MediaBrowserServiceCompat.this);
            this.f2647b.onCreate();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    final class g extends f {
        g() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.d, androidx.media.MediaBrowserServiceCompat.c
        public final b.C0073b b() {
            if (MediaBrowserServiceCompat.this.e != null) {
                return MediaBrowserServiceCompat.this.e == MediaBrowserServiceCompat.this.f2626b ? new b.C0073b(this.f2647b.getCurrentBrowserInfo()) : MediaBrowserServiceCompat.this.e.f2644d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h.class */
    final class h implements c {

        /* renamed from: b  reason: collision with root package name */
        private Messenger f2663b;

        h() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final IBinder a(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f2663b.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final void a() {
            this.f2663b = new Messenger(MediaBrowserServiceCompat.this.f);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final void a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator<b> it2 = MediaBrowserServiceCompat.this.f2628d.values().iterator();
                    while (it2.hasNext()) {
                        b next = it2.next();
                        try {
                            next.f.a(next.h.f2639a, token, next.h.f2640b);
                        } catch (RemoteException e) {
                            Log.w("MBServiceCompat", "Connection for " + next.f2641a + " is no longer valid.");
                            it2.remove();
                        }
                    }
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c
        public final b.C0073b b() {
            if (MediaBrowserServiceCompat.this.e != null) {
                return MediaBrowserServiceCompat.this.e.f2644d;
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i.class */
    public static class i<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f2666a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2667b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2668c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2669d;
        int f;

        i(Object obj) {
            this.f2666a = obj;
        }

        public void a() {
            if (this.f2667b) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.f2666a);
            } else if (this.f2668c) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.f2666a);
            } else if (!this.f2669d) {
                this.f2667b = true;
            } else {
                throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.f2666a);
            }
        }

        void a(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f2666a);
        }

        void a(T t) {
        }

        public final void b() {
            if (this.f2668c || this.f2669d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f2666a);
            }
            this.f2669d = true;
            a((Bundle) null);
        }

        public final void b(T t) {
            if (this.f2668c || this.f2669d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f2666a);
            }
            this.f2668c = true;
            a((i<T>) t);
        }

        final boolean c() {
            return this.f2667b || this.f2668c || this.f2669d;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j.class */
    static final class j<T> {

        /* renamed from: a  reason: collision with root package name */
        MediaBrowserService.Result f2670a;

        j(MediaBrowserService.Result result) {
            this.f2670a = result;
        }

        private static List<MediaBrowser.MediaItem> a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(T t) {
            if (t instanceof List) {
                this.f2670a.sendResult(a((List<Parcel>) t));
            } else if (t instanceof Parcel) {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f2670a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            } else {
                this.f2670a.sendResult(null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$k.class */
    final class k {
        k() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$l.class */
    public interface l {
        IBinder a();

        void a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        void b() throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    static final class m implements l {

        /* renamed from: a  reason: collision with root package name */
        final Messenger f2704a;

        m(Messenger messenger) {
            this.f2704a = messenger;
        }

        private void a(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f2704a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.l
        public final IBinder a() {
            return this.f2704a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.l
        public final void a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 2);
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putParcelable("data_media_session_token", token);
            bundle3.putBundle("data_root_hints", bundle2);
            a(1, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.l
        public final void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            a(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.l
        public final void b() throws RemoteException {
            a(2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    public final class n extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private final k f2706b;

        n() {
            this.f2706b = new k();
        }

        public final void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    final Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle);
                    final k kVar = this.f2706b;
                    final String string = data.getString("data_package_name");
                    final int i = data.getInt("data_calling_pid");
                    final int i2 = data.getInt("data_calling_uid");
                    final m mVar = new m(message.replyTo);
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                    boolean z = false;
                    if (string != null) {
                        String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i2);
                        int length = packagesForUid.length;
                        int i3 = 0;
                        while (true) {
                            z = false;
                            if (i3 < length) {
                                if (packagesForUid[i3].equals(string)) {
                                    z = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    if (z) {
                        MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                IBinder a2 = mVar.a();
                                MediaBrowserServiceCompat.this.f2628d.remove(a2);
                                b bVar = new b(string, i, i2, bundle, mVar);
                                MediaBrowserServiceCompat.this.e = bVar;
                                bVar.h = MediaBrowserServiceCompat.this.a(string, i2, bundle);
                                MediaBrowserServiceCompat.this.e = null;
                                if (bVar.h == null) {
                                    StringBuilder sb = new StringBuilder("No root for client ");
                                    sb.append(string);
                                    sb.append(" from service ");
                                    sb.append(getClass().getName());
                                    try {
                                        mVar.b();
                                    } catch (RemoteException e) {
                                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + string);
                                    }
                                } else {
                                    try {
                                        MediaBrowserServiceCompat.this.f2628d.put(a2, bVar);
                                        a2.linkToDeath(bVar, 0);
                                        if (MediaBrowserServiceCompat.this.g != null) {
                                            mVar.a(bVar.h.f2639a, MediaBrowserServiceCompat.this.g, bVar.h.f2640b);
                                        }
                                    } catch (RemoteException e2) {
                                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + string);
                                        MediaBrowserServiceCompat.this.f2628d.remove(a2);
                                    }
                                }
                            }
                        });
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
                case 2:
                    final k kVar2 = this.f2706b;
                    final m mVar2 = new m(message.replyTo);
                    MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            b remove = MediaBrowserServiceCompat.this.f2628d.remove(mVar2.a());
                            if (remove != null) {
                                remove.f.a().unlinkToDeath(remove, 0);
                            }
                        }
                    });
                    return;
                case 3:
                    final Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.a(bundle2);
                    final k kVar3 = this.f2706b;
                    final String string2 = data.getString("data_media_item_id");
                    final IBinder a2 = androidx.core.app.d.a(data, "data_callback_token");
                    final m mVar3 = new m(message.replyTo);
                    MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            b bVar = MediaBrowserServiceCompat.this.f2628d.get(mVar3.a());
                            if (bVar == null) {
                                Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + string2);
                                return;
                            }
                            MediaBrowserServiceCompat.this.a(string2, bVar, a2, bundle2);
                        }
                    });
                    return;
                case 4:
                    final k kVar4 = this.f2706b;
                    final String string3 = data.getString("data_media_item_id");
                    final IBinder a3 = androidx.core.app.d.a(data, "data_callback_token");
                    final m mVar4 = new m(message.replyTo);
                    MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            b bVar = MediaBrowserServiceCompat.this.f2628d.get(mVar4.a());
                            if (bVar == null) {
                                Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + string3);
                            } else if (!MediaBrowserServiceCompat.this.a(string3, bVar, a3)) {
                                Log.w("MBServiceCompat", "removeSubscription called for " + string3 + " which is not subscribed");
                            }
                        }
                    });
                    return;
                case 5:
                    final k kVar5 = this.f2706b;
                    final String string4 = data.getString("data_media_item_id");
                    final ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final m mVar5 = new m(message.replyTo);
                    if (!TextUtils.isEmpty(string4) && resultReceiver != null) {
                        MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                b bVar = MediaBrowserServiceCompat.this.f2628d.get(mVar5.a());
                                if (bVar == null) {
                                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + string4);
                                    return;
                                }
                                final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string4;
                                final ResultReceiver resultReceiver2 = resultReceiver;
                                i<MediaBrowserCompat.MediaItem> iVar = new i<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.2
                                    @Override // androidx.media.MediaBrowserServiceCompat.i
                                    final /* synthetic */ void a(MediaBrowserCompat.MediaItem mediaItem) {
                                        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                                        if ((this.f & 2) != 0) {
                                            resultReceiver2.send(-1, null);
                                            return;
                                        }
                                        Bundle bundle3 = new Bundle();
                                        bundle3.putParcelable("media_item", mediaItem2);
                                        resultReceiver2.send(0, bundle3);
                                    }
                                };
                                mediaBrowserServiceCompat2.e = bVar;
                                mediaBrowserServiceCompat2.b(str, iVar);
                                mediaBrowserServiceCompat2.e = null;
                                if (!iVar.c()) {
                                    throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=".concat(String.valueOf(str)));
                                }
                            }
                        });
                        return;
                    }
                    return;
                case 6:
                    final Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle3);
                    final k kVar6 = this.f2706b;
                    final m mVar6 = new m(message.replyTo);
                    final String string5 = data.getString("data_package_name");
                    final int i4 = data.getInt("data_calling_pid");
                    final int i5 = data.getInt("data_calling_uid");
                    MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.6
                        @Override // java.lang.Runnable
                        public final void run() {
                            b bVar;
                            IBinder a4 = mVar6.a();
                            MediaBrowserServiceCompat.this.f2628d.remove(a4);
                            Iterator<b> it2 = MediaBrowserServiceCompat.this.f2627c.iterator();
                            while (true) {
                                bVar = null;
                                bVar = null;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                b next = it2.next();
                                if (next.f2643c == i5) {
                                    if (TextUtils.isEmpty(string5) || i4 <= 0) {
                                        bVar = new b(next.f2641a, next.f2642b, next.f2643c, bundle3, mVar6);
                                    }
                                    it2.remove();
                                }
                            }
                            b bVar2 = bVar;
                            if (bVar == null) {
                                bVar2 = new b(string5, i4, i5, bundle3, mVar6);
                            }
                            MediaBrowserServiceCompat.this.f2628d.put(a4, bVar2);
                            try {
                                a4.linkToDeath(bVar2, 0);
                            } catch (RemoteException e) {
                                Log.w("MBServiceCompat", "IBinder is already dead.");
                            }
                        }
                    });
                    return;
                case 7:
                    final k kVar7 = this.f2706b;
                    final m mVar7 = new m(message.replyTo);
                    MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            IBinder a4 = mVar7.a();
                            b remove = MediaBrowserServiceCompat.this.f2628d.remove(a4);
                            if (remove != null) {
                                a4.unlinkToDeath(remove, 0);
                            }
                        }
                    });
                    return;
                case 8:
                    final Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.a(bundle4);
                    final k kVar8 = this.f2706b;
                    final String string6 = data.getString("data_search_query");
                    final ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final m mVar8 = new m(message.replyTo);
                    if (!TextUtils.isEmpty(string6) && resultReceiver2 != null) {
                        MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                b bVar = MediaBrowserServiceCompat.this.f2628d.get(mVar8.a());
                                if (bVar == null) {
                                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + string6);
                                    return;
                                }
                                final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string6;
                                Bundle bundle5 = bundle4;
                                final ResultReceiver resultReceiver3 = resultReceiver2;
                                i<List<MediaBrowserCompat.MediaItem>> iVar = new i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.3
                                    @Override // androidx.media.MediaBrowserServiceCompat.i
                                    final /* synthetic */ void a(List<MediaBrowserCompat.MediaItem> list) {
                                        List<MediaBrowserCompat.MediaItem> list2 = list;
                                        if ((this.f & 4) != 0 || list2 == null) {
                                            resultReceiver3.send(-1, null);
                                            return;
                                        }
                                        Bundle bundle6 = new Bundle();
                                        bundle6.putParcelableArray("search_results", (Parcelable[]) list2.toArray(new MediaBrowserCompat.MediaItem[0]));
                                        resultReceiver3.send(0, bundle6);
                                    }
                                };
                                mediaBrowserServiceCompat2.e = bVar;
                                mediaBrowserServiceCompat2.a(str, bundle5, iVar);
                                mediaBrowserServiceCompat2.e = null;
                                if (!iVar.c()) {
                                    throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=".concat(String.valueOf(str)));
                                }
                            }
                        });
                        return;
                    }
                    return;
                case 9:
                    final Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.a(bundle5);
                    final k kVar9 = this.f2706b;
                    final String string7 = data.getString("data_custom_action");
                    final ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final m mVar9 = new m(message.replyTo);
                    if (!TextUtils.isEmpty(string7) && resultReceiver3 != null) {
                        MediaBrowserServiceCompat.this.f.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.9
                            @Override // java.lang.Runnable
                            public final void run() {
                                b bVar = MediaBrowserServiceCompat.this.f2628d.get(mVar9.a());
                                if (bVar == null) {
                                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + string7 + ", extras=" + bundle5);
                                    return;
                                }
                                final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string7;
                                Bundle bundle6 = bundle5;
                                final ResultReceiver resultReceiver4 = resultReceiver3;
                                i<Bundle> iVar = new i<Bundle>(str) { // from class: androidx.media.MediaBrowserServiceCompat.4
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // androidx.media.MediaBrowserServiceCompat.i
                                    final void a(Bundle bundle7) {
                                        resultReceiver4.send(-1, null);
                                    }

                                    @Override // androidx.media.MediaBrowserServiceCompat.i
                                    final /* synthetic */ void a(Bundle bundle7) {
                                        resultReceiver4.send(0, bundle7);
                                    }
                                };
                                mediaBrowserServiceCompat2.e = bVar;
                                mediaBrowserServiceCompat2.b(str, bundle6, iVar);
                                mediaBrowserServiceCompat2.e = null;
                                if (!iVar.c()) {
                                    throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle6);
                                }
                            }
                        });
                        return;
                    }
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public final boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j);
        }
    }

    static List<MediaBrowserCompat.MediaItem> a(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i2 == -1 && i3 == -1) {
            return list;
        }
        int i4 = i3 * i2;
        int i5 = i4 + i3;
        if (i2 < 0 || i3 <= 0 || i4 >= list.size()) {
            return Collections.emptyList();
        }
        int i6 = i5;
        if (i5 > list.size()) {
            i6 = list.size();
        }
        return list.subList(i4, i6);
    }

    public abstract a a(String str, int i2, Bundle bundle);

    public final b.C0073b a() {
        return this.h.b();
    }

    public final void a(Context context) {
        attachBaseContext(context);
    }

    public final void a(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null");
        } else if (this.g == null) {
            this.g = token;
            this.h.a(token);
        } else {
            throw new IllegalStateException("The session token has already been set");
        }
    }

    public void a(String str) {
    }

    public void a(String str, Bundle bundle) {
    }

    public void a(String str, Bundle bundle, i<List<MediaBrowserCompat.MediaItem>> iVar) {
        iVar.f = 4;
        iVar.b(null);
    }

    final void a(final String str, final b bVar, IBinder iBinder, final Bundle bundle) {
        List<androidx.core.e.b<IBinder, Bundle>> list = bVar.g.get(str);
        List<androidx.core.e.b<IBinder, Bundle>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        for (androidx.core.e.b<IBinder, Bundle> bVar2 : list2) {
            if (iBinder == bVar2.f1889a && androidx.media.a.a(bundle, bVar2.f1890b)) {
                return;
            }
        }
        list2.add(new androidx.core.e.b<>(iBinder, bundle));
        bVar.g.put(str, list2);
        i<List<MediaBrowserCompat.MediaItem>> iVar = new i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            @Override // androidx.media.MediaBrowserServiceCompat.i
            final /* synthetic */ void a(List<MediaBrowserCompat.MediaItem> list3) {
                List<MediaBrowserCompat.MediaItem> list4 = list3;
                if (MediaBrowserServiceCompat.this.f2628d.get(bVar.f.a()) == bVar) {
                    List<MediaBrowserCompat.MediaItem> list5 = list4;
                    if ((this.f & 1) != 0) {
                        list5 = MediaBrowserServiceCompat.a(list4, bundle);
                    }
                    try {
                        bVar.f.a(str, list5, bundle, r9);
                    } catch (RemoteException e2) {
                        Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str + " package=" + bVar.f2641a);
                    }
                } else if (MediaBrowserServiceCompat.f2625a) {
                    StringBuilder sb = new StringBuilder("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                    sb.append(bVar.f2641a);
                    sb.append(" id=");
                    sb.append(str);
                }
            }
        };
        this.e = bVar;
        if (bundle == null) {
            a(str, iVar);
        } else {
            a(str, iVar, bundle);
        }
        this.e = null;
        if (iVar.c()) {
            this.e = bVar;
            a(str, bundle);
            this.e = null;
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + bVar.f2641a + " id=" + str);
    }

    public abstract void a(String str, i<List<MediaBrowserCompat.MediaItem>> iVar);

    public void a(String str, i<List<MediaBrowserCompat.MediaItem>> iVar, Bundle bundle) {
        iVar.f = 1;
        a(str, iVar);
    }

    final boolean a(String str, b bVar, IBinder iBinder) {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (iBinder == null) {
                if (bVar.g.remove(str) == null) {
                    z = false;
                }
                return z;
            }
            List<androidx.core.e.b<IBinder, Bundle>> list = bVar.g.get(str);
            if (list != null) {
                Iterator<androidx.core.e.b<IBinder, Bundle>> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (iBinder == it2.next().f1889a) {
                        it2.remove();
                        z3 = true;
                    }
                }
                z2 = z3;
                if (list.size() == 0) {
                    bVar.g.remove(str);
                    z2 = z3;
                }
            }
            return z2;
        } finally {
            this.e = bVar;
            a(str);
            this.e = null;
        }
    }

    public void b(String str, Bundle bundle, i<Bundle> iVar) {
        iVar.b();
    }

    public void b(String str, i<MediaBrowserCompat.MediaItem> iVar) {
        iVar.f = 2;
        iVar.b(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.h.a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 28) {
            this.h = new g();
        } else if (Build.VERSION.SDK_INT >= 26) {
            this.h = new f();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.h = new e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.h = new d();
        } else {
            this.h = new h();
        }
        this.h.a();
    }
}
