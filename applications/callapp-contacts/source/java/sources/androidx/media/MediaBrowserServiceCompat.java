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
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.session.AbstractC0088b;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.p009os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0741d;
import androidx.core.p036e.C0828b;
import androidx.media.C1329b;
import androidx.p023b.C0428a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: a */
    static final boolean f4887a = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: e */
    C1297b f4891e;

    /* renamed from: g */
    MediaSessionCompat.Token f4893g;

    /* renamed from: h */
    private AbstractC1299c f4894h;

    /* renamed from: b */
    final C1297b f4888b = new C1297b("android.media.session.MediaController", -1, -1, null, null);

    /* renamed from: c */
    final ArrayList<C1297b> f4889c = new ArrayList<>();

    /* renamed from: d */
    final C0428a<IBinder, C1297b> f4890d = new C0428a<>();

    /* renamed from: f */
    final HandlerC1327n f4892f = new HandlerC1327n();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$a.class */
    public static final class C1296a {

        /* renamed from: a */
        final String f4906a;

        /* renamed from: b */
        final Bundle f4907b;

        public C1296a(String str, Bundle bundle) {
            if (str != null) {
                this.f4906a = str;
                this.f4907b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$b.class */
    public final class C1297b implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f4908a;

        /* renamed from: b */
        public final int f4909b;

        /* renamed from: c */
        public final int f4910c;

        /* renamed from: d */
        public final C1329b.C1331b f4911d;

        /* renamed from: e */
        public final Bundle f4912e;

        /* renamed from: f */
        public final AbstractC1325l f4913f;

        /* renamed from: g */
        public final HashMap<String, List<C0828b<IBinder, Bundle>>> f4914g = new HashMap<>();

        /* renamed from: h */
        public C1296a f4915h;

        C1297b(String str, int i, int i2, Bundle bundle, AbstractC1325l abstractC1325l) {
            MediaBrowserServiceCompat.this = r8;
            this.f4908a = str;
            this.f4909b = i;
            this.f4910c = i2;
            this.f4911d = new C1329b.C1331b(str, i, i2);
            this.f4912e = bundle;
            this.f4913f = abstractC1325l;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.f4892f.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaBrowserServiceCompat.this.f4890d.remove(C1297b.this.f4913f.mo43224a());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$c.class */
    public interface AbstractC1299c {
        /* renamed from: a */
        IBinder mo43235a(Intent intent);

        /* renamed from: a */
        void mo43236a();

        /* renamed from: a */
        void mo43234a(MediaSessionCompat.Token token);

        /* renamed from: b */
        C1329b.C1331b mo43233b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d.class */
    public class C1300d implements AbstractC1299c {

        /* renamed from: a */
        final List<Bundle> f4918a = new ArrayList();

        /* renamed from: b */
        MediaBrowserService f4919b;

        /* renamed from: c */
        Messenger f4920c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d$a.class */
        public class C1303a extends MediaBrowserService {
            C1303a(Context context) {
                C1300d.this = r4;
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
                C1296a m43237a = C1300d.this.m43237a(str, i, bundle == null ? null : new Bundle(bundle));
                if (m43237a == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(m43237a.f4906a, m43237a.f4907b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                final C1300d c1300d = C1300d.this;
                final C1314j c1314j = new C1314j(result);
                C1313i<List<MediaBrowserCompat.MediaItem>> c1313i = new C1313i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.d.2
                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    public final void mo43232a() {
                        c1314j.f4946a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    final /* synthetic */ void mo43230a(List<MediaBrowserCompat.MediaItem> list) {
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
                        c1314j.m43226a((C1314j) arrayList);
                    }
                };
                MediaBrowserServiceCompat.this.f4891e = MediaBrowserServiceCompat.this.f4888b;
                MediaBrowserServiceCompat.this.mo40881a(str, c1313i);
                MediaBrowserServiceCompat.this.f4891e = null;
            }
        }

        C1300d() {
            MediaBrowserServiceCompat.this = r5;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final IBinder mo43235a(Intent intent) {
            return this.f4919b.onBind(intent);
        }

        /* renamed from: a */
        public final C1296a m43237a(String str, int i, Bundle bundle) {
            int i2;
            Bundle bundle2;
            Bundle bundle3;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
                i2 = -1;
            } else {
                bundle.remove("extra_client_version");
                this.f4920c = new Messenger(MediaBrowserServiceCompat.this.f4892f);
                Bundle bundle4 = new Bundle();
                bundle4.putInt("extra_service_version", 2);
                C0741d.m44594a(bundle4, "extra_messenger", this.f4920c.getBinder());
                if (MediaBrowserServiceCompat.this.f4893g != null) {
                    AbstractC0088b extraBinder = MediaBrowserServiceCompat.this.f4893g.getExtraBinder();
                    C0741d.m44594a(bundle4, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f4918a.add(bundle4);
                }
                i2 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
                bundle2 = bundle4;
            }
            C1297b c1297b = new C1297b(str, i2, i, bundle, null);
            MediaBrowserServiceCompat.this.f4891e = c1297b;
            C1296a mo40882a = MediaBrowserServiceCompat.this.mo40882a(str, i, bundle);
            MediaBrowserServiceCompat.this.f4891e = null;
            if (mo40882a == null) {
                return null;
            }
            if (this.f4920c != null) {
                MediaBrowserServiceCompat.this.f4889c.add(c1297b);
            }
            if (bundle2 == null) {
                bundle3 = mo40882a.f4907b;
            } else {
                bundle3 = bundle2;
                if (mo40882a.f4907b != null) {
                    bundle2.putAll(mo40882a.f4907b);
                    bundle3 = bundle2;
                }
            }
            return new C1296a(mo40882a.f4906a, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public void mo43236a() {
            C1303a c1303a = new C1303a(MediaBrowserServiceCompat.this);
            this.f4919b = c1303a;
            c1303a.onCreate();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final void mo43234a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!C1300d.this.f4918a.isEmpty()) {
                        AbstractC0088b extraBinder = token.getExtraBinder();
                        if (extraBinder != null) {
                            for (Bundle bundle : C1300d.this.f4918a) {
                                C0741d.m44594a(bundle, "extra_session_binder", extraBinder.asBinder());
                            }
                        }
                        C1300d.this.f4918a.clear();
                    }
                    C1300d.this.f4919b.setSessionToken((MediaSession.Token) token.getToken());
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: b */
        public C1329b.C1331b mo43233b() {
            if (MediaBrowserServiceCompat.this.f4891e != null) {
                return MediaBrowserServiceCompat.this.f4891e.f4911d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public class C1304e extends C1300d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e$a.class */
        public class C1306a extends C1300d.C1303a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C1306a(Context context) {
                super(context);
                C1304e.this = r5;
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                final C1304e c1304e = C1304e.this;
                final C1314j c1314j = new C1314j(result);
                C1313i<MediaBrowserCompat.MediaItem> c1313i = new C1313i<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.e.1
                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    public final void mo43232a() {
                        c1314j.f4946a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    final /* synthetic */ void mo43230a(MediaBrowserCompat.MediaItem mediaItem) {
                        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                        if (mediaItem2 == null) {
                            c1314j.m43226a((C1314j) null);
                            return;
                        }
                        Parcel obtain = Parcel.obtain();
                        mediaItem2.writeToParcel(obtain, 0);
                        c1314j.m43226a((C1314j) obtain);
                    }
                };
                MediaBrowserServiceCompat.this.f4891e = MediaBrowserServiceCompat.this.f4888b;
                MediaBrowserServiceCompat.this.mo40994b(str, c1313i);
                MediaBrowserServiceCompat.this.f4891e = null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1304e() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1300d, androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public void mo43236a() {
            this.f4919b = new C1306a(MediaBrowserServiceCompat.this);
            this.f4919b.onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    public class C1307f extends C1304e {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        final class C1309a extends C1304e.C1306a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C1309a(Context context) {
                super(context);
                C1307f.this = r5;
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, final Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
                MediaBrowserServiceCompat.this.f4891e = MediaBrowserServiceCompat.this.f4888b;
                final C1307f c1307f = C1307f.this;
                final C1314j c1314j = new C1314j(result);
                C1313i<List<MediaBrowserCompat.MediaItem>> c1313i = new C1313i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.f.1
                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    public final void mo43232a() {
                        c1314j.f4946a.detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                    /* renamed from: a */
                    final /* synthetic */ void mo43230a(List<MediaBrowserCompat.MediaItem> list) {
                        List<MediaBrowserCompat.MediaItem> list2 = list;
                        if (list2 == null) {
                            c1314j.m43226a((C1314j) null);
                            return;
                        }
                        List<MediaBrowserCompat.MediaItem> list3 = list2;
                        if ((this.f4945f & 1) != 0) {
                            list3 = MediaBrowserServiceCompat.m43238a(list2, bundle);
                        }
                        ArrayList arrayList = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list3) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                        c1314j.m43226a((C1314j) arrayList);
                    }
                };
                MediaBrowserServiceCompat.this.f4891e = MediaBrowserServiceCompat.this.f4888b;
                MediaBrowserServiceCompat.this.mo40997a(str, c1313i, bundle);
                MediaBrowserServiceCompat.this.f4891e = null;
                MediaBrowserServiceCompat.this.f4891e = null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1307f() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1304e, androidx.media.MediaBrowserServiceCompat.C1300d, androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final void mo43236a() {
            this.f4919b = new C1309a(MediaBrowserServiceCompat.this);
            this.f4919b.onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    public final class C1310g extends C1307f {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1310g() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1300d, androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: b */
        public final C1329b.C1331b mo43233b() {
            if (MediaBrowserServiceCompat.this.f4891e != null) {
                return MediaBrowserServiceCompat.this.f4891e == MediaBrowserServiceCompat.this.f4888b ? new C1329b.C1331b(this.f4919b.getCurrentBrowserInfo()) : MediaBrowserServiceCompat.this.f4891e.f4911d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$h */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h.class */
    public final class C1311h implements AbstractC1299c {

        /* renamed from: b */
        private Messenger f4938b;

        C1311h() {
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final IBinder mo43235a(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f4938b.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final void mo43236a() {
            this.f4938b = new Messenger(MediaBrowserServiceCompat.this.f4892f);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: a */
        public final void mo43234a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f4892f.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator<C1297b> it2 = MediaBrowserServiceCompat.this.f4890d.values().iterator();
                    while (it2.hasNext()) {
                        C1297b next = it2.next();
                        try {
                            next.f4913f.mo43222a(next.f4915h.f4906a, token, next.f4915h.f4907b);
                        } catch (RemoteException e) {
                            Log.w("MBServiceCompat", "Connection for " + next.f4908a + " is no longer valid.");
                            it2.remove();
                        }
                    }
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1299c
        /* renamed from: b */
        public final C1329b.C1331b mo43233b() {
            if (MediaBrowserServiceCompat.this.f4891e != null) {
                return MediaBrowserServiceCompat.this.f4891e.f4911d;
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$i */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i.class */
    public static class C1313i<T> {

        /* renamed from: a */
        private final Object f4941a;

        /* renamed from: b */
        private boolean f4942b;

        /* renamed from: c */
        private boolean f4943c;

        /* renamed from: d */
        private boolean f4944d;

        /* renamed from: f */
        int f4945f;

        C1313i(Object obj) {
            this.f4941a = obj;
        }

        /* renamed from: a */
        public void mo43232a() {
            if (this.f4942b) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.f4941a);
            } else if (this.f4943c) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.f4941a);
            } else if (!this.f4944d) {
                this.f4942b = true;
            } else {
                throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.f4941a);
            }
        }

        /* renamed from: a */
        void mo43231a(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f4941a);
        }

        /* renamed from: a */
        void mo43230a(T t) {
        }

        /* renamed from: b */
        public final void m43229b() {
            if (this.f4943c || this.f4944d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f4941a);
            }
            this.f4944d = true;
            mo43231a((Bundle) null);
        }

        /* renamed from: b */
        public final void m43228b(T t) {
            if (this.f4943c || this.f4944d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f4941a);
            }
            this.f4943c = true;
            mo43230a((C1313i<T>) t);
        }

        /* renamed from: c */
        final boolean m43227c() {
            return this.f4942b || this.f4943c || this.f4944d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$j */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j.class */
    public static final class C1314j<T> {

        /* renamed from: a */
        MediaBrowserService.Result f4946a;

        C1314j(MediaBrowserService.Result result) {
            this.f4946a = result;
        }

        /* renamed from: a */
        private static List<MediaBrowser.MediaItem> m43225a(List<Parcel> list) {
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
        /* renamed from: a */
        public final void m43226a(T t) {
            if (t instanceof List) {
                this.f4946a.sendResult(m43225a((List<Parcel>) t));
            } else if (!(t instanceof Parcel)) {
                this.f4946a.sendResult(null);
            } else {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f4946a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$k */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$k.class */
    public final class C1315k {
        C1315k() {
            MediaBrowserServiceCompat.this = r4;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$l */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$l.class */
    public interface AbstractC1325l {
        /* renamed from: a */
        IBinder mo43224a();

        /* renamed from: a */
        void mo43222a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        /* renamed from: a */
        void mo43221a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        /* renamed from: b */
        void mo43220b() throws RemoteException;
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    static final class C1326m implements AbstractC1325l {

        /* renamed from: a */
        final Messenger f4987a;

        C1326m(Messenger messenger) {
            this.f4987a = messenger;
        }

        /* renamed from: a */
        private void m43223a(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f4987a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1325l
        /* renamed from: a */
        public final IBinder mo43224a() {
            return this.f4987a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1325l
        /* renamed from: a */
        public final void mo43222a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 2);
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putParcelable("data_media_session_token", token);
            bundle3.putBundle("data_root_hints", bundle2);
            m43223a(1, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1325l
        /* renamed from: a */
        public final void mo43221a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            m43223a(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC1325l
        /* renamed from: b */
        public final void mo43220b() throws RemoteException {
            m43223a(2, null);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    public final class HandlerC1327n extends Handler {

        /* renamed from: b */
        private final C1315k f4989b;

        HandlerC1327n() {
            MediaBrowserServiceCompat.this = r6;
            this.f4989b = new C1315k();
        }

        /* renamed from: a */
        public final void m43219a(Runnable runnable) {
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
                    MediaSessionCompat.m46534a(bundle);
                    final C1315k c1315k = this.f4989b;
                    final String string = data.getString("data_package_name");
                    final int i = data.getInt("data_calling_pid");
                    final int i2 = data.getInt("data_calling_uid");
                    final C1326m c1326m = new C1326m(message.replyTo);
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
                        MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                IBinder mo43224a = c1326m.mo43224a();
                                MediaBrowserServiceCompat.this.f4890d.remove(mo43224a);
                                C1297b c1297b = new C1297b(string, i, i2, bundle, c1326m);
                                MediaBrowserServiceCompat.this.f4891e = c1297b;
                                c1297b.f4915h = MediaBrowserServiceCompat.this.mo40882a(string, i2, bundle);
                                MediaBrowserServiceCompat.this.f4891e = null;
                                if (c1297b.f4915h == null) {
                                    StringBuilder sb = new StringBuilder("No root for client ");
                                    sb.append(string);
                                    sb.append(" from service ");
                                    sb.append(getClass().getName());
                                    try {
                                        c1326m.mo43220b();
                                        return;
                                    } catch (RemoteException e) {
                                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + string);
                                        return;
                                    }
                                }
                                try {
                                    MediaBrowserServiceCompat.this.f4890d.put(mo43224a, c1297b);
                                    mo43224a.linkToDeath(c1297b, 0);
                                    if (MediaBrowserServiceCompat.this.f4893g == null) {
                                        return;
                                    }
                                    c1326m.mo43222a(c1297b.f4915h.f4906a, MediaBrowserServiceCompat.this.f4893g, c1297b.f4915h.f4907b);
                                } catch (RemoteException e2) {
                                    Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + string);
                                    MediaBrowserServiceCompat.this.f4890d.remove(mo43224a);
                                }
                            }
                        });
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
                case 2:
                    final C1315k c1315k2 = this.f4989b;
                    final C1326m c1326m2 = new C1326m(message.replyTo);
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b remove = MediaBrowserServiceCompat.this.f4890d.remove(c1326m2.mo43224a());
                            if (remove != null) {
                                remove.f4913f.mo43224a().unlinkToDeath(remove, 0);
                            }
                        }
                    });
                    return;
                case 3:
                    final Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m46534a(bundle2);
                    final C1315k c1315k3 = this.f4989b;
                    final String string2 = data.getString("data_media_item_id");
                    final IBinder m44595a = C0741d.m44595a(data, "data_callback_token");
                    final C1326m c1326m3 = new C1326m(message.replyTo);
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b c1297b = MediaBrowserServiceCompat.this.f4890d.get(c1326m3.mo43224a());
                            if (c1297b != null) {
                                MediaBrowserServiceCompat.this.m43239a(string2, c1297b, m44595a, bundle2);
                                return;
                            }
                            Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + string2);
                        }
                    });
                    return;
                case 4:
                    final C1315k c1315k4 = this.f4989b;
                    final String string3 = data.getString("data_media_item_id");
                    final IBinder m44595a2 = C0741d.m44595a(data, "data_callback_token");
                    final C1326m c1326m4 = new C1326m(message.replyTo);
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b c1297b = MediaBrowserServiceCompat.this.f4890d.get(c1326m4.mo43224a());
                            if (c1297b == null) {
                                Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + string3);
                            } else if (MediaBrowserServiceCompat.this.m43240a(string3, c1297b, m44595a2)) {
                            } else {
                                Log.w("MBServiceCompat", "removeSubscription called for " + string3 + " which is not subscribed");
                            }
                        }
                    });
                    return;
                case 5:
                    final C1315k c1315k5 = this.f4989b;
                    final String string4 = data.getString("data_media_item_id");
                    final ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final C1326m c1326m5 = new C1326m(message.replyTo);
                    if (TextUtils.isEmpty(string4) || resultReceiver == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b c1297b = MediaBrowserServiceCompat.this.f4890d.get(c1326m5.mo43224a());
                            if (c1297b == null) {
                                Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + string4);
                                return;
                            }
                            final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                            String str = string4;
                            final ResultReceiver resultReceiver2 = resultReceiver;
                            C1313i<MediaBrowserCompat.MediaItem> c1313i = new C1313i<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.2
                                @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                                /* renamed from: a */
                                final /* synthetic */ void mo43230a(MediaBrowserCompat.MediaItem mediaItem) {
                                    MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                                    if ((this.f4945f & 2) != 0) {
                                        resultReceiver2.send(-1, null);
                                        return;
                                    }
                                    Bundle bundle3 = new Bundle();
                                    bundle3.putParcelable("media_item", mediaItem2);
                                    resultReceiver2.send(0, bundle3);
                                }
                            };
                            mediaBrowserServiceCompat2.f4891e = c1297b;
                            mediaBrowserServiceCompat2.mo40994b(str, c1313i);
                            mediaBrowserServiceCompat2.f4891e = null;
                            if (!c1313i.m43227c()) {
                                throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=".concat(String.valueOf(str)));
                            }
                        }
                    });
                    return;
                case 6:
                    final Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m46534a(bundle3);
                    final C1315k c1315k6 = this.f4989b;
                    final C1326m c1326m6 = new C1326m(message.replyTo);
                    final String string5 = data.getString("data_package_name");
                    final int i4 = data.getInt("data_calling_pid");
                    final int i5 = data.getInt("data_calling_uid");
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.6
                        /* JADX WARN: Code restructure failed: missing block: B:10:0x0061, code lost:
                            if (r8 <= 0) goto L11;
                         */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                r9 = this;
                                r0 = r9
                                androidx.media.MediaBrowserServiceCompat$l r0 = r5
                                android.os.IBinder r0 = r0.mo43224a()
                                r10 = r0
                                r0 = r9
                                androidx.media.MediaBrowserServiceCompat$k r0 = r4
                                androidx.media.MediaBrowserServiceCompat r0 = androidx.media.MediaBrowserServiceCompat.this
                                androidx.b.a<android.os.IBinder, androidx.media.MediaBrowserServiceCompat$b> r0 = r0.f4890d
                                r1 = r10
                                java.lang.Object r0 = r0.remove(r1)
                                r0 = r9
                                androidx.media.MediaBrowserServiceCompat$k r0 = r4
                                androidx.media.MediaBrowserServiceCompat r0 = androidx.media.MediaBrowserServiceCompat.this
                                java.util.ArrayList<androidx.media.MediaBrowserServiceCompat$b> r0 = r0.f4889c
                                java.util.Iterator r0 = r0.iterator()
                                r11 = r0
                            L27:
                                r0 = r11
                                boolean r0 = r0.hasNext()
                                r12 = r0
                                r0 = 0
                                r13 = r0
                                r0 = 0
                                r14 = r0
                                r0 = r12
                                if (r0 == 0) goto L91
                                r0 = r11
                                java.lang.Object r0 = r0.next()
                                androidx.media.MediaBrowserServiceCompat$b r0 = (androidx.media.MediaBrowserServiceCompat.C1297b) r0
                                r15 = r0
                                r0 = r15
                                int r0 = r0.f4910c
                                r1 = r9
                                int r1 = r6
                                if (r0 != r1) goto L27
                                r0 = r9
                                java.lang.String r0 = r7
                                boolean r0 = android.text.TextUtils.isEmpty(r0)
                                if (r0 != 0) goto L64
                                r0 = r14
                                r13 = r0
                                r0 = r9
                                int r0 = r8
                                if (r0 > 0) goto L8b
                            L64:
                                androidx.media.MediaBrowserServiceCompat$b r0 = new androidx.media.MediaBrowserServiceCompat$b
                                r1 = r0
                                r2 = r9
                                androidx.media.MediaBrowserServiceCompat$k r2 = r4
                                androidx.media.MediaBrowserServiceCompat r2 = androidx.media.MediaBrowserServiceCompat.this
                                r3 = r15
                                java.lang.String r3 = r3.f4908a
                                r4 = r15
                                int r4 = r4.f4909b
                                r5 = r15
                                int r5 = r5.f4910c
                                r6 = r9
                                android.os.Bundle r6 = r9
                                r7 = r9
                                androidx.media.MediaBrowserServiceCompat$l r7 = r5
                                r1.<init>(r3, r4, r5, r6, r7)
                                r13 = r0
                            L8b:
                                r0 = r11
                                r0.remove()
                            L91:
                                r0 = r13
                                r14 = r0
                                r0 = r13
                                if (r0 != 0) goto Lbe
                                androidx.media.MediaBrowserServiceCompat$b r0 = new androidx.media.MediaBrowserServiceCompat$b
                                r1 = r0
                                r2 = r9
                                androidx.media.MediaBrowserServiceCompat$k r2 = r4
                                androidx.media.MediaBrowserServiceCompat r2 = androidx.media.MediaBrowserServiceCompat.this
                                r3 = r9
                                java.lang.String r3 = r7
                                r4 = r9
                                int r4 = r8
                                r5 = r9
                                int r5 = r6
                                r6 = r9
                                android.os.Bundle r6 = r9
                                r7 = r9
                                androidx.media.MediaBrowserServiceCompat$l r7 = r5
                                r1.<init>(r3, r4, r5, r6, r7)
                                r14 = r0
                            Lbe:
                                r0 = r9
                                androidx.media.MediaBrowserServiceCompat$k r0 = r4
                                androidx.media.MediaBrowserServiceCompat r0 = androidx.media.MediaBrowserServiceCompat.this
                                androidx.b.a<android.os.IBinder, androidx.media.MediaBrowserServiceCompat$b> r0 = r0.f4890d
                                r1 = r10
                                r2 = r14
                                java.lang.Object r0 = r0.put(r1, r2)
                                r0 = r10
                                r1 = r14
                                r2 = 0
                                r0.linkToDeath(r1, r2)     // Catch: android.os.RemoteException -> Ld9
                                return
                            Ld9:
                                r13 = move-exception
                                java.lang.String r0 = "MBServiceCompat"
                                java.lang.String r1 = "IBinder is already dead."
                                int r0 = android.util.Log.w(r0, r1)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.media.MediaBrowserServiceCompat.C1315k.RunnableC13216.run():void");
                        }
                    });
                    return;
                case 7:
                    final C1315k c1315k7 = this.f4989b;
                    final C1326m c1326m7 = new C1326m(message.replyTo);
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            IBinder mo43224a = c1326m7.mo43224a();
                            C1297b remove = MediaBrowserServiceCompat.this.f4890d.remove(mo43224a);
                            if (remove != null) {
                                mo43224a.unlinkToDeath(remove, 0);
                            }
                        }
                    });
                    return;
                case 8:
                    final Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m46534a(bundle4);
                    final C1315k c1315k8 = this.f4989b;
                    final String string6 = data.getString("data_search_query");
                    final ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final C1326m c1326m8 = new C1326m(message.replyTo);
                    if (TextUtils.isEmpty(string6) || resultReceiver2 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b c1297b = MediaBrowserServiceCompat.this.f4890d.get(c1326m8.mo43224a());
                            if (c1297b == null) {
                                Log.w("MBServiceCompat", "search for callback that isn't registered query=" + string6);
                                return;
                            }
                            final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                            String str = string6;
                            Bundle bundle5 = bundle4;
                            final ResultReceiver resultReceiver3 = resultReceiver2;
                            C1313i<List<MediaBrowserCompat.MediaItem>> c1313i = new C1313i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.3
                                @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                                /* renamed from: a */
                                final /* synthetic */ void mo43230a(List<MediaBrowserCompat.MediaItem> list) {
                                    List<MediaBrowserCompat.MediaItem> list2 = list;
                                    if ((this.f4945f & 4) != 0 || list2 == null) {
                                        resultReceiver3.send(-1, null);
                                        return;
                                    }
                                    Bundle bundle6 = new Bundle();
                                    bundle6.putParcelableArray("search_results", (Parcelable[]) list2.toArray(new MediaBrowserCompat.MediaItem[0]));
                                    resultReceiver3.send(0, bundle6);
                                }
                            };
                            mediaBrowserServiceCompat2.f4891e = c1297b;
                            mediaBrowserServiceCompat2.mo40998a(str, bundle5, c1313i);
                            mediaBrowserServiceCompat2.f4891e = null;
                            if (!c1313i.m43227c()) {
                                throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=".concat(String.valueOf(str)));
                            }
                        }
                    });
                    return;
                case 9:
                    final Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m46534a(bundle5);
                    final C1315k c1315k9 = this.f4989b;
                    final String string7 = data.getString("data_custom_action");
                    final ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final C1326m c1326m9 = new C1326m(message.replyTo);
                    if (TextUtils.isEmpty(string7) || resultReceiver3 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f4892f.m43219a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.k.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1297b c1297b = MediaBrowserServiceCompat.this.f4890d.get(c1326m9.mo43224a());
                            if (c1297b == null) {
                                Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + string7 + ", extras=" + bundle5);
                                return;
                            }
                            final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                            String str = string7;
                            Bundle bundle6 = bundle5;
                            final ResultReceiver resultReceiver4 = resultReceiver3;
                            C1313i<Bundle> c1313i = new C1313i<Bundle>(str) { // from class: androidx.media.MediaBrowserServiceCompat.4
                                @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                                /* renamed from: a */
                                final void mo43231a(Bundle bundle7) {
                                    resultReceiver4.send(-1, null);
                                }

                                @Override // androidx.media.MediaBrowserServiceCompat.C1313i
                                /* renamed from: a */
                                final /* synthetic */ void mo43230a(Bundle bundle7) {
                                    resultReceiver4.send(0, bundle7);
                                }
                            };
                            mediaBrowserServiceCompat2.f4891e = c1297b;
                            mediaBrowserServiceCompat2.mo40995b(str, bundle6, c1313i);
                            mediaBrowserServiceCompat2.f4891e = null;
                            if (c1313i.m43227c()) {
                                return;
                            }
                            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle6);
                        }
                    });
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

    /* renamed from: a */
    static List<MediaBrowserCompat.MediaItem> m43238a(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
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
        if (i < 0 || i2 <= 0 || i3 >= list.size()) {
            return Collections.emptyList();
        }
        int i5 = i4;
        if (i4 > list.size()) {
            i5 = list.size();
        }
        return list.subList(i3, i5);
    }

    /* renamed from: a */
    public abstract C1296a mo40882a(String str, int i, Bundle bundle);

    /* renamed from: a */
    public final C1329b.C1331b m43243a() {
        return this.f4894h.mo43233b();
    }

    /* renamed from: a */
    public final void m43242a(Context context) {
        attachBaseContext(context);
    }

    /* renamed from: a */
    public final void m43241a(MediaSessionCompat.Token token) {
        if (token != null) {
            if (this.f4893g != null) {
                throw new IllegalStateException("The session token has already been set");
            }
            this.f4893g = token;
            this.f4894h.mo43234a(token);
            return;
        }
        throw new IllegalArgumentException("Session token may not be null");
    }

    /* renamed from: a */
    public void mo41000a(String str) {
    }

    /* renamed from: a */
    public void mo40999a(String str, Bundle bundle) {
    }

    /* renamed from: a */
    public void mo40998a(String str, Bundle bundle, C1313i<List<MediaBrowserCompat.MediaItem>> c1313i) {
        c1313i.f4945f = 4;
        c1313i.m43228b(null);
    }

    /* renamed from: a */
    final void m43239a(final String str, final C1297b c1297b, IBinder iBinder, final Bundle bundle) {
        List<C0828b<IBinder, Bundle>> list = c1297b.f4914g.get(str);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        for (C0828b<IBinder, Bundle> c0828b : arrayList) {
            if (iBinder == c0828b.f3556a && C1328a.m43218a(bundle, c0828b.f3557b)) {
                return;
            }
        }
        arrayList.add(new C0828b<>(iBinder, bundle));
        c1297b.f4914g.put(str, arrayList);
        C1313i<List<MediaBrowserCompat.MediaItem>> c1313i = new C1313i<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            @Override // androidx.media.MediaBrowserServiceCompat.C1313i
            /* renamed from: a */
            final /* synthetic */ void mo43230a(List<MediaBrowserCompat.MediaItem> list2) {
                List<MediaBrowserCompat.MediaItem> list3 = list2;
                if (MediaBrowserServiceCompat.this.f4890d.get(c1297b.f4913f.mo43224a()) != c1297b) {
                    if (!MediaBrowserServiceCompat.f4887a) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                    sb.append(c1297b.f4908a);
                    sb.append(" id=");
                    sb.append(str);
                    return;
                }
                List<MediaBrowserCompat.MediaItem> list4 = list3;
                if ((this.f4945f & 1) != 0) {
                    list4 = MediaBrowserServiceCompat.m43238a(list3, bundle);
                }
                try {
                    c1297b.f4913f.mo43221a(str, list4, bundle, r9);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str + " package=" + c1297b.f4908a);
                }
            }
        };
        this.f4891e = c1297b;
        if (bundle == null) {
            mo40881a(str, c1313i);
        } else {
            mo40997a(str, c1313i, bundle);
        }
        this.f4891e = null;
        if (c1313i.m43227c()) {
            this.f4891e = c1297b;
            mo40999a(str, bundle);
            this.f4891e = null;
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + c1297b.f4908a + " id=" + str);
    }

    /* renamed from: a */
    public abstract void mo40881a(String str, C1313i<List<MediaBrowserCompat.MediaItem>> c1313i);

    /* renamed from: a */
    public void mo40997a(String str, C1313i<List<MediaBrowserCompat.MediaItem>> c1313i, Bundle bundle) {
        c1313i.f4945f = 1;
        mo40881a(str, c1313i);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    final boolean m43240a(String str, C1297b c1297b, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                boolean z2 = c1297b.f4914g.remove(str) != null;
                this.f4891e = c1297b;
                mo41000a(str);
                this.f4891e = null;
                return z2;
            }
            List<C0828b<IBinder, Bundle>> list = c1297b.f4914g.get(str);
            boolean z3 = false;
            if (list != null) {
                Iterator<C0828b<IBinder, Bundle>> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (iBinder == it2.next().f3556a) {
                        it2.remove();
                        z = true;
                    }
                }
                z3 = z;
                if (list.size() == 0) {
                    c1297b.f4914g.remove(str);
                    z3 = z;
                }
            }
            this.f4891e = c1297b;
            mo41000a(str);
            this.f4891e = null;
            return z3;
        } catch (Throwable th) {
            this.f4891e = c1297b;
            mo41000a(str);
            this.f4891e = null;
            throw th;
        }
    }

    /* renamed from: b */
    public void mo40995b(String str, Bundle bundle, C1313i<Bundle> c1313i) {
        c1313i.m43229b();
    }

    /* renamed from: b */
    public void mo40994b(String str, C1313i<MediaBrowserCompat.MediaItem> c1313i) {
        c1313i.f4945f = 2;
        c1313i.m43228b(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4894h.mo43235a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4894h = new C1310g();
        } else if (Build.VERSION.SDK_INT >= 26) {
            this.f4894h = new C1307f();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f4894h = new C1304e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f4894h = new C1300d();
        } else {
            this.f4894h = new C1311h();
        }
        this.f4894h.mo43236a();
    }
}
