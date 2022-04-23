package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
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
import android.support.p009v4.media.MediaBrowserCompat;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.support.p009v4.p010os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p000a.p001a.p003b.p005b.p006a.AbstractC0011b;
import p012b.p035f.C0780a;
import p012b.p042i.p043h.C0849d;
import p012b.p042i.p053o.C0944d;
import p012b.p074r.C1140b;
import p012b.p074r.C1141c;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: h */
    public static final boolean f1415h = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: a */
    public AbstractC0245g f1416a;

    /* renamed from: e */
    public C0243f f1420e;

    /* renamed from: g */
    public MediaSessionCompat.Token f1422g;

    /* renamed from: b */
    public final C0243f f1417b = new C0243f("android.media.session.MediaController", -1, -1, null, null);

    /* renamed from: c */
    public final ArrayList<C0243f> f1418c = new ArrayList<>();

    /* renamed from: d */
    public final C0780a<IBinder, C0243f> f1419d = new C0780a<>();

    /* renamed from: f */
    public final HandlerC0271r f1421f = new HandlerC0271r();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$a.class */
    public class C0238a extends C0257m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        public final /* synthetic */ C0243f f1423f;

        /* renamed from: g */
        public final /* synthetic */ String f1424g;

        /* renamed from: h */
        public final /* synthetic */ Bundle f1425h;

        /* renamed from: i */
        public final /* synthetic */ Bundle f1426i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0238a(Object obj, C0243f fVar, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            this.f1423f = fVar;
            this.f1424g = str;
            this.f1425h = bundle;
            this.f1426i = bundle2;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo38268a(List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.f1419d.get(this.f1423f.f1437e.asBinder()) == this.f1423f) {
                List<MediaBrowserCompat.MediaItem> list2 = list;
                if ((m38271a() & 1) != 0) {
                    list2 = MediaBrowserServiceCompat.this.m38290a(list, this.f1425h);
                }
                try {
                    this.f1423f.f1437e.mo38250a(this.f1424g, list2, this.f1425h, this.f1426i);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f1424g + " package=" + this.f1423f.f1433a);
                }
            } else if (MediaBrowserServiceCompat.f1415h) {
                Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f1423f.f1433a + " id=" + this.f1424g);
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$b.class */
    public class C0239b extends C0257m<MediaBrowserCompat.MediaItem> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f1428f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0239b(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1428f = resultReceiver;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo38268a(MediaBrowserCompat.MediaItem mediaItem) {
            if ((m38271a() & 2) != 0) {
                this.f1428f.m39230b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f1428f.m39230b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$c.class */
    public class C0240c extends C0257m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f1429f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0240c(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1429f = resultReceiver;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo38268a(List<MediaBrowserCompat.MediaItem> list) {
            if ((m38271a() & 4) != 0 || list == null) {
                this.f1429f.m39230b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f1429f.m39230b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d.class */
    public class C0241d extends C0257m<Bundle> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f1430f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0241d(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1430f = resultReceiver;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media.MediaBrowserServiceCompat.C0257m
        /* renamed from: a */
        public void mo38269a(Bundle bundle) {
            this.f1430f.m39230b(-1, bundle);
        }

        /* renamed from: c */
        public void mo38268a(Bundle bundle) {
            this.f1430f.m39230b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public static final class C0242e {

        /* renamed from: a */
        public final String f1431a;

        /* renamed from: b */
        public final Bundle f1432b;

        public C0242e(String str, Bundle bundle) {
            if (str != null) {
                this.f1431a = str;
                this.f1432b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }

        /* renamed from: a */
        public Bundle m38282a() {
            return this.f1432b;
        }

        /* renamed from: b */
        public String m38280b() {
            return this.f1431a;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    public class C0243f implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f1433a;

        /* renamed from: b */
        public final int f1434b;

        /* renamed from: c */
        public final int f1435c;

        /* renamed from: d */
        public final Bundle f1436d;

        /* renamed from: e */
        public final AbstractC0269p f1437e;

        /* renamed from: f */
        public final HashMap<String, List<C0944d<IBinder, Bundle>>> f1438f = new HashMap<>();

        /* renamed from: g */
        public C0242e f1439g;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        public class RunnableC0244a implements Runnable {
            public RunnableC0244a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = C0243f.this;
                MediaBrowserServiceCompat.this.f1419d.remove(fVar.f1437e.asBinder());
            }
        }

        public C0243f(String str, int i, int i2, Bundle bundle, AbstractC0269p pVar) {
            this.f1433a = str;
            this.f1434b = i;
            this.f1435c = i2;
            new C1141c.C1143b(str, i, i2);
            this.f1436d = bundle;
            this.f1437e = pVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f1421f.post(new RunnableC0244a());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    public interface AbstractC0245g {
        IBinder onBind(Intent intent);

        void onCreate();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$h */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h.class */
    public class C0246h implements AbstractC0245g {

        /* renamed from: a */
        public final List<Bundle> f1442a = new ArrayList();

        /* renamed from: b */
        public MediaBrowserService f1443b;

        /* renamed from: c */
        public Messenger f1444c;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$h$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h$a.class */
        public class C0247a extends C0257m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            public final /* synthetic */ C0258n f1446f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0247a(C0246h hVar, Object obj, C0258n nVar) {
                super(obj);
                this.f1446f = nVar;
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo38268a(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<MediaBrowserCompat.MediaItem> it = list.iterator();
                    while (true) {
                        arrayList = arrayList2;
                        if (!it.hasNext()) {
                            break;
                        }
                        MediaBrowserCompat.MediaItem next = it.next();
                        Parcel obtain = Parcel.obtain();
                        next.writeToParcel(obtain, 0);
                        arrayList2.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f1446f.m38264a((C0258n) arrayList);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$h$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h$b.class */
        public class C0248b extends MediaBrowserService {
            public C0248b(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                MediaBrowserService.BrowserRoot browserRoot = null;
                C0242e a = C0246h.this.m38278a(str, i, bundle == null ? null : new Bundle(bundle));
                if (a != null) {
                    browserRoot = new MediaBrowserService.BrowserRoot(a.f1431a, a.f1432b);
                }
                return browserRoot;
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                C0246h.this.m38277a(str, new C0258n<>(result));
            }
        }

        public C0246h() {
        }

        /* renamed from: a */
        public C0242e m38278a(String str, int i, Bundle bundle) {
            int i2;
            Bundle bundle2;
            Bundle bundle3;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
                i2 = -1;
            } else {
                bundle.remove("extra_client_version");
                this.f1444c = new Messenger(MediaBrowserServiceCompat.this.f1421f);
                Bundle bundle4 = new Bundle();
                bundle4.putInt("extra_service_version", 2);
                C0849d.m35782a(bundle4, "extra_messenger", this.f1444c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f1422g;
                if (token != null) {
                    AbstractC0011b a = token.m39244a();
                    C0849d.m35782a(bundle4, "extra_session_binder", a == null ? null : a.asBinder());
                } else {
                    this.f1442a.add(bundle4);
                }
                i2 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
                bundle2 = bundle4;
            }
            C0243f fVar = new C0243f(str, i2, i, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1420e = fVar;
            C0242e a2 = mediaBrowserServiceCompat.m38300a(str, i, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.f1420e = null;
            if (a2 == null) {
                return null;
            }
            if (this.f1444c != null) {
                mediaBrowserServiceCompat2.f1418c.add(fVar);
            }
            if (bundle2 == null) {
                bundle3 = a2.m38282a();
            } else {
                bundle3 = bundle2;
                if (a2.m38282a() != null) {
                    bundle2.putAll(a2.m38282a());
                    bundle3 = bundle2;
                }
            }
            return new C0242e(a2.m38280b(), bundle3);
        }

        /* renamed from: a */
        public void m38277a(String str, C0258n<List<Parcel>> nVar) {
            C0247a aVar = new C0247a(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1420e = mediaBrowserServiceCompat.f1417b;
            mediaBrowserServiceCompat.m38292a(str, aVar);
            MediaBrowserServiceCompat.this.f1420e = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public IBinder onBind(Intent intent) {
            return this.f1443b.onBind(intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public void onCreate() {
            C0248b bVar = new C0248b(MediaBrowserServiceCompat.this);
            this.f1443b = bVar;
            bVar.onCreate();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$i */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i.class */
    public class C0249i extends C0246h {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i$a.class */
        public class C0250a extends C0257m<MediaBrowserCompat.MediaItem> {

            /* renamed from: f */
            public final /* synthetic */ C0258n f1449f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0250a(C0249i iVar, Object obj, C0258n nVar) {
                super(obj);
                this.f1449f = nVar;
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo38268a(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f1449f.m38264a((C0258n) null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem.writeToParcel(obtain, 0);
                this.f1449f.m38264a((C0258n) obtain);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$i$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i$b.class */
        public class C0251b extends C0246h.C0248b {
            public C0251b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                C0249i.this.m38275b(str, new C0258n<>(result));
            }
        }

        public C0249i() {
            super();
        }

        /* renamed from: b */
        public void m38275b(String str, C0258n<Parcel> nVar) {
            C0250a aVar = new C0250a(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1420e = mediaBrowserServiceCompat.f1417b;
            mediaBrowserServiceCompat.m38287b(str, aVar);
            MediaBrowserServiceCompat.this.f1420e = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C0246h, androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public void onCreate() {
            C0251b bVar = new C0251b(MediaBrowserServiceCompat.this);
            this.f1443b = bVar;
            bVar.onCreate();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$j */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j.class */
    public class C0252j extends C0249i {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$j$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j$a.class */
        public class C0253a extends C0257m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            public final /* synthetic */ C0258n f1452f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f1453g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0253a(Object obj, C0258n nVar, Bundle bundle) {
                super(obj);
                this.f1452f = nVar;
                this.f1453g = bundle;
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo38268a(List<MediaBrowserCompat.MediaItem> list) {
                if (list == null) {
                    this.f1452f.m38264a((C0258n) null);
                    return;
                }
                List<MediaBrowserCompat.MediaItem> list2 = list;
                if ((m38271a() & 1) != 0) {
                    list2 = MediaBrowserServiceCompat.this.m38290a(list, this.f1453g);
                }
                ArrayList arrayList = new ArrayList();
                for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    arrayList.add(obtain);
                }
                this.f1452f.m38264a((C0258n) arrayList);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$j$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j$b.class */
        public class C0254b extends C0249i.C0251b {
            public C0254b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                C0252j jVar = C0252j.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f1420e = mediaBrowserServiceCompat.f1417b;
                jVar.m38273a(str, new C0258n<>(result), bundle);
                MediaBrowserServiceCompat.this.f1420e = null;
            }
        }

        public C0252j() {
            super();
        }

        /* renamed from: a */
        public void m38273a(String str, C0258n<List<Parcel>> nVar, Bundle bundle) {
            C0253a aVar = new C0253a(str, nVar, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1420e = mediaBrowserServiceCompat.f1417b;
            mediaBrowserServiceCompat.m38291a(str, aVar, bundle);
            MediaBrowserServiceCompat.this.f1420e = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C0249i, androidx.media.MediaBrowserServiceCompat.C0246h, androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public void onCreate() {
            C0254b bVar = new C0254b(MediaBrowserServiceCompat.this);
            this.f1443b = bVar;
            bVar.onCreate();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$k */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$k.class */
    public class C0255k extends C0252j {
        public C0255k(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$l */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$l.class */
    public class C0256l implements AbstractC0245g {

        /* renamed from: a */
        public Messenger f1456a;

        public C0256l() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public IBinder onBind(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f1456a.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0245g
        public void onCreate() {
            this.f1456a = new Messenger(MediaBrowserServiceCompat.this.f1421f);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    public static class C0257m<T> {

        /* renamed from: a */
        public final Object f1458a;

        /* renamed from: b */
        public boolean f1459b;

        /* renamed from: c */
        public boolean f1460c;

        /* renamed from: d */
        public boolean f1461d;

        /* renamed from: e */
        public int f1462e;

        public C0257m(Object obj) {
            this.f1458a = obj;
        }

        /* renamed from: a */
        public int m38271a() {
            return this.f1462e;
        }

        /* renamed from: a */
        public void m38270a(int i) {
            this.f1462e = i;
        }

        /* renamed from: a */
        public void mo38269a(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f1458a);
        }

        /* renamed from: a */
        public void mo38268a(T t) {
            throw null;
        }

        /* renamed from: b */
        public void m38266b(Bundle bundle) {
            if (this.f1460c || this.f1461d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f1458a);
            }
            this.f1461d = true;
            mo38269a(bundle);
        }

        /* renamed from: b */
        public void m38265b(T t) {
            if (this.f1460c || this.f1461d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f1458a);
            }
            this.f1460c = true;
            mo38268a((C0257m<T>) t);
        }

        /* renamed from: b */
        public boolean m38267b() {
            return this.f1459b || this.f1460c || this.f1461d;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    public static class C0258n<T> {

        /* renamed from: a */
        public MediaBrowserService.Result f1463a;

        public C0258n(MediaBrowserService.Result result) {
            this.f1463a = result;
        }

        /* renamed from: a */
        public List<MediaBrowser.MediaItem> m38263a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public void m38264a(T t) {
            if (t instanceof List) {
                this.f1463a.sendResult(m38263a((List) t));
            } else if (t instanceof Parcel) {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f1463a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            } else {
                this.f1463a.sendResult(null);
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$o */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o.class */
    public class C0259o {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$a.class */
        public class RunnableC0260a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1465a;

            /* renamed from: b */
            public final /* synthetic */ String f1466b;

            /* renamed from: c */
            public final /* synthetic */ int f1467c;

            /* renamed from: d */
            public final /* synthetic */ int f1468d;

            /* renamed from: e */
            public final /* synthetic */ Bundle f1469e;

            public RunnableC0260a(AbstractC0269p pVar, String str, int i, int i2, Bundle bundle) {
                this.f1465a = pVar;
                this.f1466b = str;
                this.f1467c = i;
                this.f1468d = i2;
                this.f1469e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1465a.asBinder();
                MediaBrowserServiceCompat.this.f1419d.remove(asBinder);
                C0243f fVar = new C0243f(this.f1466b, this.f1467c, this.f1468d, this.f1469e, this.f1465a);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f1420e = fVar;
                C0242e a = mediaBrowserServiceCompat.m38300a(this.f1466b, this.f1468d, this.f1469e);
                fVar.f1439g = a;
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f1420e = null;
                if (a == null) {
                    Log.i("MBServiceCompat", "No root for client " + this.f1466b + " from service " + RunnableC0260a.class.getName());
                    try {
                        this.f1465a.mo38253a();
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f1466b);
                    }
                } else {
                    try {
                        mediaBrowserServiceCompat2.f1419d.put(asBinder, fVar);
                        asBinder.linkToDeath(fVar, 0);
                        if (MediaBrowserServiceCompat.this.f1422g != null) {
                            this.f1465a.mo38251a(fVar.f1439g.m38280b(), MediaBrowserServiceCompat.this.f1422g, fVar.f1439g.m38282a());
                        }
                    } catch (RemoteException e2) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.f1466b);
                        MediaBrowserServiceCompat.this.f1419d.remove(asBinder);
                    }
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$b.class */
        public class RunnableC0261b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1471a;

            public RunnableC0261b(AbstractC0269p pVar) {
                this.f1471a = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f remove = MediaBrowserServiceCompat.this.f1419d.remove(this.f1471a.asBinder());
                if (remove != null) {
                    remove.f1437e.asBinder().unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$c */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$c.class */
        public class RunnableC0262c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1473a;

            /* renamed from: b */
            public final /* synthetic */ String f1474b;

            /* renamed from: c */
            public final /* synthetic */ IBinder f1475c;

            /* renamed from: d */
            public final /* synthetic */ Bundle f1476d;

            public RunnableC0262c(AbstractC0269p pVar, String str, IBinder iBinder, Bundle bundle) {
                this.f1473a = pVar;
                this.f1474b = str;
                this.f1475c = iBinder;
                this.f1476d = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = MediaBrowserServiceCompat.this.f1419d.get(this.f1473a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.f1474b);
                    return;
                }
                MediaBrowserServiceCompat.this.m38294a(this.f1474b, fVar, this.f1475c, this.f1476d);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$d */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$d.class */
        public class RunnableC0263d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1478a;

            /* renamed from: b */
            public final /* synthetic */ String f1479b;

            /* renamed from: c */
            public final /* synthetic */ IBinder f1480c;

            public RunnableC0263d(AbstractC0269p pVar, String str, IBinder iBinder) {
                this.f1478a = pVar;
                this.f1479b = str;
                this.f1480c = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = MediaBrowserServiceCompat.this.f1419d.get(this.f1478a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.f1479b);
                } else if (!MediaBrowserServiceCompat.this.m38295a(this.f1479b, fVar, this.f1480c)) {
                    Log.w("MBServiceCompat", "removeSubscription called for " + this.f1479b + " which is not subscribed");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$e */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$e.class */
        public class RunnableC0264e implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1482a;

            /* renamed from: b */
            public final /* synthetic */ String f1483b;

            /* renamed from: c */
            public final /* synthetic */ ResultReceiver f1484c;

            public RunnableC0264e(AbstractC0269p pVar, String str, ResultReceiver resultReceiver) {
                this.f1482a = pVar;
                this.f1483b = str;
                this.f1484c = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = MediaBrowserServiceCompat.this.f1419d.get(this.f1482a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f1483b);
                    return;
                }
                MediaBrowserServiceCompat.this.m38293a(this.f1483b, fVar, this.f1484c);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$f */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$f.class */
        public class RunnableC0265f implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1486a;

            /* renamed from: b */
            public final /* synthetic */ int f1487b;

            /* renamed from: c */
            public final /* synthetic */ String f1488c;

            /* renamed from: d */
            public final /* synthetic */ int f1489d;

            /* renamed from: e */
            public final /* synthetic */ Bundle f1490e;

            public RunnableC0265f(AbstractC0269p pVar, int i, String str, int i2, Bundle bundle) {
                this.f1486a = pVar;
                this.f1487b = i;
                this.f1488c = str;
                this.f1489d = i2;
                this.f1490e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1486a.asBinder();
                MediaBrowserServiceCompat.this.f1419d.remove(asBinder);
                Iterator<C0243f> it = MediaBrowserServiceCompat.this.f1418c.iterator();
                C0243f fVar = null;
                while (it.hasNext()) {
                    C0243f next = it.next();
                    if (next.f1435c == this.f1487b) {
                        if (TextUtils.isEmpty(this.f1488c) || this.f1489d <= 0) {
                            fVar = new C0243f(next.f1433a, next.f1434b, next.f1435c, this.f1490e, this.f1486a);
                        }
                        it.remove();
                    }
                }
                C0243f fVar2 = fVar;
                if (fVar == null) {
                    fVar2 = new C0243f(this.f1488c, this.f1489d, this.f1487b, this.f1490e, this.f1486a);
                }
                MediaBrowserServiceCompat.this.f1419d.put(asBinder, fVar2);
                try {
                    asBinder.linkToDeath(fVar2, 0);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$g */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$g.class */
        public class RunnableC0266g implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1492a;

            public RunnableC0266g(AbstractC0269p pVar) {
                this.f1492a = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1492a.asBinder();
                C0243f remove = MediaBrowserServiceCompat.this.f1419d.remove(asBinder);
                if (remove != null) {
                    asBinder.unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$h */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$h.class */
        public class RunnableC0267h implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1494a;

            /* renamed from: b */
            public final /* synthetic */ String f1495b;

            /* renamed from: c */
            public final /* synthetic */ Bundle f1496c;

            /* renamed from: d */
            public final /* synthetic */ ResultReceiver f1497d;

            public RunnableC0267h(AbstractC0269p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f1494a = pVar;
                this.f1495b = str;
                this.f1496c = bundle;
                this.f1497d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = MediaBrowserServiceCompat.this.f1419d.get(this.f1494a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f1495b);
                    return;
                }
                MediaBrowserServiceCompat.this.m38289b(this.f1495b, this.f1496c, fVar, this.f1497d);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$i */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$i.class */
        public class RunnableC0268i implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0269p f1499a;

            /* renamed from: b */
            public final /* synthetic */ String f1500b;

            /* renamed from: c */
            public final /* synthetic */ Bundle f1501c;

            /* renamed from: d */
            public final /* synthetic */ ResultReceiver f1502d;

            public RunnableC0268i(AbstractC0269p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f1499a = pVar;
                this.f1500b = str;
                this.f1501c = bundle;
                this.f1502d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0243f fVar = MediaBrowserServiceCompat.this.f1419d.get(this.f1499a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f1500b + ", extras=" + this.f1501c);
                    return;
                }
                MediaBrowserServiceCompat.this.m38298a(this.f1500b, this.f1501c, fVar, this.f1502d);
            }
        }

        public C0259o() {
        }

        /* renamed from: a */
        public void m38262a(AbstractC0269p pVar) {
            MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0261b(pVar));
        }

        /* renamed from: a */
        public void m38261a(AbstractC0269p pVar, String str, int i, int i2, Bundle bundle) {
            MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0265f(pVar, i2, str, i, bundle));
        }

        /* renamed from: a */
        public void m38260a(String str, int i, int i2, Bundle bundle, AbstractC0269p pVar) {
            if (MediaBrowserServiceCompat.this.m38301a(str, i2)) {
                MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0260a(pVar, str, i, i2, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }

        /* renamed from: a */
        public void m38259a(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0269p pVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0267h(pVar, str, bundle, resultReceiver));
            }
        }

        /* renamed from: a */
        public void m38258a(String str, IBinder iBinder, Bundle bundle, AbstractC0269p pVar) {
            MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0262c(pVar, str, iBinder, bundle));
        }

        /* renamed from: a */
        public void m38257a(String str, IBinder iBinder, AbstractC0269p pVar) {
            MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0263d(pVar, str, iBinder));
        }

        /* renamed from: a */
        public void m38256a(String str, ResultReceiver resultReceiver, AbstractC0269p pVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0264e(pVar, str, resultReceiver));
            }
        }

        /* renamed from: b */
        public void m38255b(AbstractC0269p pVar) {
            MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0266g(pVar));
        }

        /* renamed from: b */
        public void m38254b(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0269p pVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f1421f.m38249a(new RunnableC0268i(pVar, str, bundle, resultReceiver));
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$p */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$p.class */
    public interface AbstractC0269p {
        /* renamed from: a */
        void mo38253a() throws RemoteException;

        /* renamed from: a */
        void mo38251a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        /* renamed from: a */
        void mo38250a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        IBinder asBinder();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$q */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$q.class */
    public static class C0270q implements AbstractC0269p {

        /* renamed from: a */
        public final Messenger f1504a;

        public C0270q(Messenger messenger) {
            this.f1504a = messenger;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0269p
        /* renamed from: a */
        public void mo38253a() throws RemoteException {
            m38252a(2, null);
        }

        /* renamed from: a */
        public final void m38252a(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f1504a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0269p
        /* renamed from: a */
        public void mo38251a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 2);
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putParcelable("data_media_session_token", token);
            bundle3.putBundle("data_root_hints", bundle2);
            m38252a(1, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0269p
        /* renamed from: a */
        public void mo38250a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            m38252a(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0269p
        public IBinder asBinder() {
            return this.f1504a.getBinder();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$r */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$r.class */
    public final class HandlerC0271r extends Handler {

        /* renamed from: a */
        public final C0259o f1505a;

        public HandlerC0271r() {
            this.f1505a = new C0259o();
        }

        /* renamed from: a */
        public void m38249a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.m39248a(bundle);
                    this.f1505a.m38260a(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new C0270q(message.replyTo));
                    return;
                case 2:
                    this.f1505a.m38262a(new C0270q(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m39248a(bundle2);
                    this.f1505a.m38258a(data.getString("data_media_item_id"), C0849d.m35783a(data, "data_callback_token"), bundle2, new C0270q(message.replyTo));
                    return;
                case 4:
                    this.f1505a.m38257a(data.getString("data_media_item_id"), C0849d.m35783a(data, "data_callback_token"), new C0270q(message.replyTo));
                    return;
                case 5:
                    this.f1505a.m38256a(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new C0270q(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m39248a(bundle3);
                    this.f1505a.m38261a(new C0270q(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f1505a.m38255b(new C0270q(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m39248a(bundle4);
                    this.f1505a.m38259a(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new C0270q(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m39248a(bundle5);
                    this.f1505a.m38254b(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new C0270q(message.replyTo));
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
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

    /* renamed from: a */
    public abstract C0242e m38300a(String str, int i, Bundle bundle);

    /* renamed from: a */
    public List<MediaBrowserCompat.MediaItem> m38290a(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
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

    /* renamed from: a */
    public void m38302a(String str) {
    }

    /* renamed from: a */
    public void m38299a(String str, Bundle bundle) {
    }

    /* renamed from: a */
    public void m38298a(String str, Bundle bundle, C0243f fVar, ResultReceiver resultReceiver) {
        C0241d dVar = new C0241d(this, str, resultReceiver);
        m38297a(str, bundle, dVar);
        if (!dVar.m38267b()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
        }
    }

    /* renamed from: a */
    public void m38297a(String str, Bundle bundle, C0257m<Bundle> mVar) {
        mVar.m38266b((Bundle) null);
    }

    /* renamed from: a */
    public void m38296a(String str, C0243f fVar, Bundle bundle, Bundle bundle2) {
        C0238a aVar = new C0238a(str, fVar, str, bundle, bundle2);
        if (bundle == null) {
            m38292a(str, aVar);
        } else {
            m38291a(str, aVar, bundle);
        }
        if (!aVar.m38267b()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + fVar.f1433a + " id=" + str);
        }
    }

    /* renamed from: a */
    public void m38294a(String str, C0243f fVar, IBinder iBinder, Bundle bundle) {
        List<C0944d<IBinder, Bundle>> list = fVar.f1438f.get(str);
        List<C0944d<IBinder, Bundle>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        for (C0944d<IBinder, Bundle> dVar : list2) {
            if (iBinder == dVar.f4191a && C1140b.m34587a(bundle, dVar.f4192b)) {
                return;
            }
        }
        list2.add(new C0944d<>(iBinder, bundle));
        fVar.f1438f.put(str, list2);
        m38296a(str, fVar, bundle, (Bundle) null);
        m38299a(str, bundle);
    }

    /* renamed from: a */
    public void m38293a(String str, C0243f fVar, ResultReceiver resultReceiver) {
        C0239b bVar = new C0239b(this, str, resultReceiver);
        m38287b(str, bVar);
        if (!bVar.m38267b()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
        }
    }

    /* renamed from: a */
    public abstract void m38292a(String str, C0257m<List<MediaBrowserCompat.MediaItem>> mVar);

    /* renamed from: a */
    public void m38291a(String str, C0257m<List<MediaBrowserCompat.MediaItem>> mVar, Bundle bundle) {
        mVar.m38270a(1);
        m38292a(str, mVar);
    }

    /* renamed from: a */
    public boolean m38301a(String str, int i) {
        if (str == null) {
            return false;
        }
        String[] packagesForUid = getPackageManager().getPackagesForUid(i);
        for (String str2 : packagesForUid) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m38295a(String str, C0243f fVar, IBinder iBinder) {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (iBinder == null) {
                if (fVar.f1438f.remove(str) == null) {
                    z = false;
                }
                m38302a(str);
                return z;
            }
            List<C0944d<IBinder, Bundle>> list = fVar.f1438f.get(str);
            if (list != null) {
                Iterator<C0944d<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f4191a) {
                        it.remove();
                        z3 = true;
                    }
                }
                z2 = z3;
                if (list.size() == 0) {
                    fVar.f1438f.remove(str);
                    z2 = z3;
                }
            }
            m38302a(str);
            return z2;
        } catch (Throwable th) {
            m38302a(str);
            throw th;
        }
    }

    /* renamed from: b */
    public void m38289b(String str, Bundle bundle, C0243f fVar, ResultReceiver resultReceiver) {
        C0240c cVar = new C0240c(this, str, resultReceiver);
        m38288b(str, bundle, cVar);
        if (!cVar.m38267b()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
        }
    }

    /* renamed from: b */
    public void m38288b(String str, Bundle bundle, C0257m<List<MediaBrowserCompat.MediaItem>> mVar) {
        mVar.m38270a(4);
        mVar.m38265b((C0257m<List<MediaBrowserCompat.MediaItem>>) null);
    }

    /* renamed from: b */
    public void m38287b(String str, C0257m<MediaBrowserCompat.MediaItem> mVar) {
        mVar.m38270a(2);
        mVar.m38265b((C0257m<MediaBrowserCompat.MediaItem>) null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1416a.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f1416a = new C0255k(this);
        } else if (i >= 26) {
            this.f1416a = new C0252j();
        } else if (i >= 23) {
            this.f1416a = new C0249i();
        } else if (i >= 21) {
            this.f1416a = new C0246h();
        } else {
            this.f1416a = new C0256l();
        }
        this.f1416a.onCreate();
    }
}
