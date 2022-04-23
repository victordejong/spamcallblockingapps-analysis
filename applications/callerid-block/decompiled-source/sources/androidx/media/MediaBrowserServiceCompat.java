package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0247e;
import d.e.a;
import d.h.l.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: g */
    static final boolean f2075g = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: b */
    private AbstractC0377g f2076b;

    /* renamed from: d */
    C0375f f2078d;

    /* renamed from: f */
    MediaSessionCompat.Token f2080f;

    /* renamed from: c */
    final a<IBinder, C0375f> f2077c = new a<>();

    /* renamed from: e */
    final HandlerC0390q f2079e = new HandlerC0390q();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public static final class C0374e {
        /* renamed from: a */
        public Bundle m12937a() {
            throw null;
        }

        /* renamed from: b */
        public String m12936b() {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    public class C0375f implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f2081a;

        /* renamed from: b */
        public final AbstractC0389o f2082b;

        /* renamed from: c */
        public final HashMap<String, List<d<IBinder, Bundle>>> f2083c = new HashMap<>();

        /* renamed from: d */
        public C0374e f2084d;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        class RunnableC0376a implements Runnable {
            RunnableC0376a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = C0375f.this;
                MediaBrowserServiceCompat.this.f2077c.remove(fVar.f2082b.asBinder());
            }
        }

        C0375f(String str, int i, int i2, Bundle bundle, AbstractC0389o oVar) {
            this.f2081a = str;
            new C0400h(str, i, i2);
            this.f2082b = oVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f2079e.post(new RunnableC0376a());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    interface AbstractC0377g {
        /* renamed from: a */
        void m12935a();

        /* renamed from: h0 */
        IBinder m12934h0(Intent intent);
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    public static class C0378m<T> {

        /* renamed from: a */
        private final Object f2087a;

        /* renamed from: b */
        private boolean f2088b;

        /* renamed from: c */
        private boolean f2089c;

        /* renamed from: d */
        private boolean f2090d;

        /* renamed from: e */
        private int f2091e;

        C0378m(Object obj) {
            this.f2087a = obj;
        }

        /* renamed from: a */
        int m12933a() {
            return this.f2091e;
        }

        /* renamed from: b */
        boolean m12932b() {
            return this.f2088b || this.f2089c || this.f2090d;
        }

        /* renamed from: c */
        void m12931c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f2087a);
        }

        /* renamed from: d */
        void m12930d(T t) {
            throw null;
        }

        /* renamed from: e */
        public void m12929e(Bundle bundle) {
            if (this.f2089c || this.f2090d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f2087a);
            }
            this.f2090d = true;
            m12931c(bundle);
        }

        /* renamed from: f */
        public void m12928f(T t) {
            if (this.f2089c || this.f2090d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f2087a);
            }
            this.f2089c = true;
            m12930d(t);
        }

        /* renamed from: g */
        void m12927g(int i) {
            this.f2091e = i;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    private class C0379n {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$a.class */
        public class RunnableC0380a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2093b;

            /* renamed from: c */
            final /* synthetic */ String f2094c;

            /* renamed from: d */
            final /* synthetic */ int f2095d;

            /* renamed from: e */
            final /* synthetic */ int f2096e;

            /* renamed from: f */
            final /* synthetic */ Bundle f2097f;

            RunnableC0380a(AbstractC0389o oVar, String str, int i, int i2, Bundle bundle) {
                this.f2093b = oVar;
                this.f2094c = str;
                this.f2095d = i;
                this.f2096e = i2;
                this.f2097f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2093b.asBinder();
                MediaBrowserServiceCompat.this.f2077c.remove(asBinder);
                C0375f fVar = new C0375f(this.f2094c, this.f2095d, this.f2096e, this.f2097f, this.f2093b);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f2078d = fVar;
                C0374e e = mediaBrowserServiceCompat.m12949e(this.f2094c, this.f2096e, this.f2097f);
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f2078d = null;
                if (e == null) {
                    Log.i("MBServiceCompat", "No root for client " + this.f2094c + " from service " + RunnableC0380a.class.getName());
                    try {
                        this.f2093b.m12917a();
                    } catch (RemoteException e2) {
                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f2094c);
                    }
                } else {
                    try {
                        mediaBrowserServiceCompat2.f2077c.put(asBinder, fVar);
                        asBinder.linkToDeath(fVar, 0);
                        if (MediaBrowserServiceCompat.this.f2080f != null) {
                            fVar.f2084d.m12936b();
                            throw null;
                        }
                    } catch (RemoteException e3) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.f2094c);
                        MediaBrowserServiceCompat.this.f2077c.remove(asBinder);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$b.class */
        public class RunnableC0381b implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2099b;

            RunnableC0381b(AbstractC0389o oVar) {
                this.f2099b = oVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.remove(this.f2099b.asBinder());
                if (fVar != null) {
                    fVar.f2082b.asBinder().unlinkToDeath(fVar, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$c */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$c.class */
        public class RunnableC0382c implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2101b;

            /* renamed from: c */
            final /* synthetic */ String f2102c;

            /* renamed from: d */
            final /* synthetic */ IBinder f2103d;

            /* renamed from: e */
            final /* synthetic */ Bundle f2104e;

            RunnableC0382c(AbstractC0389o oVar, String str, IBinder iBinder, Bundle bundle) {
                this.f2101b = oVar;
                this.f2102c = str;
                this.f2103d = iBinder;
                this.f2104e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.get(this.f2101b.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.f2102c);
                    return;
                }
                MediaBrowserServiceCompat.this.m12953a(this.f2102c, fVar, this.f2103d, this.f2104e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$d */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$d.class */
        public class RunnableC0383d implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2106b;

            /* renamed from: c */
            final /* synthetic */ String f2107c;

            /* renamed from: d */
            final /* synthetic */ IBinder f2108d;

            RunnableC0383d(AbstractC0389o oVar, String str, IBinder iBinder) {
                this.f2106b = oVar;
                this.f2107c = str;
                this.f2108d = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.get(this.f2106b.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.f2107c);
                } else if (!MediaBrowserServiceCompat.this.m12938p(this.f2107c, fVar, this.f2108d)) {
                    Log.w("MBServiceCompat", "removeSubscription called for " + this.f2107c + " which is not subscribed");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$e */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$e.class */
        public class RunnableC0384e implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2110b;

            /* renamed from: c */
            final /* synthetic */ String f2111c;

            /* renamed from: d */
            final /* synthetic */ ResultReceiver f2112d;

            RunnableC0384e(AbstractC0389o oVar, String str, ResultReceiver resultReceiver) {
                this.f2110b = oVar;
                this.f2111c = str;
                this.f2112d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.get(this.f2110b.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f2111c);
                    return;
                }
                MediaBrowserServiceCompat.this.m12940n(this.f2111c, fVar, this.f2112d);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$f */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$f.class */
        public class RunnableC0385f implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2114b;

            /* renamed from: c */
            final /* synthetic */ String f2115c;

            /* renamed from: d */
            final /* synthetic */ int f2116d;

            /* renamed from: e */
            final /* synthetic */ int f2117e;

            /* renamed from: f */
            final /* synthetic */ Bundle f2118f;

            RunnableC0385f(AbstractC0389o oVar, String str, int i, int i2, Bundle bundle) {
                this.f2114b = oVar;
                this.f2115c = str;
                this.f2116d = i;
                this.f2117e = i2;
                this.f2118f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2114b.asBinder();
                MediaBrowserServiceCompat.this.f2077c.remove(asBinder);
                C0375f fVar = new C0375f(this.f2115c, this.f2116d, this.f2117e, this.f2118f, this.f2114b);
                MediaBrowserServiceCompat.this.f2077c.put(asBinder, fVar);
                try {
                    asBinder.linkToDeath(fVar, 0);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$g */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$g.class */
        public class RunnableC0386g implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2120b;

            RunnableC0386g(AbstractC0389o oVar) {
                this.f2120b = oVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2120b.asBinder();
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.remove(asBinder);
                if (fVar != null) {
                    asBinder.unlinkToDeath(fVar, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$h */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$h.class */
        public class RunnableC0387h implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2122b;

            /* renamed from: c */
            final /* synthetic */ String f2123c;

            /* renamed from: d */
            final /* synthetic */ Bundle f2124d;

            /* renamed from: e */
            final /* synthetic */ ResultReceiver f2125e;

            RunnableC0387h(AbstractC0389o oVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f2122b = oVar;
                this.f2123c = str;
                this.f2124d = bundle;
                this.f2125e = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.get(this.f2122b.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f2123c);
                    return;
                }
                MediaBrowserServiceCompat.this.m12939o(this.f2123c, this.f2124d, fVar, this.f2125e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$i */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$i.class */
        public class RunnableC0388i implements Runnable {

            /* renamed from: b */
            final /* synthetic */ AbstractC0389o f2127b;

            /* renamed from: c */
            final /* synthetic */ String f2128c;

            /* renamed from: d */
            final /* synthetic */ Bundle f2129d;

            /* renamed from: e */
            final /* synthetic */ ResultReceiver f2130e;

            RunnableC0388i(AbstractC0389o oVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f2127b = oVar;
                this.f2128c = str;
                this.f2129d = bundle;
                this.f2130e = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0375f fVar = (C0375f) MediaBrowserServiceCompat.this.f2077c.get(this.f2127b.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f2128c + ", extras=" + this.f2129d);
                    return;
                }
                MediaBrowserServiceCompat.this.m12942l(this.f2128c, this.f2129d, fVar, this.f2130e);
            }
        }

        C0379n() {
        }

        /* renamed from: a */
        public void m12926a(String str, IBinder iBinder, Bundle bundle, AbstractC0389o oVar) {
            MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0382c(oVar, str, iBinder, bundle));
        }

        /* renamed from: b */
        public void m12925b(String str, int i, int i2, Bundle bundle, AbstractC0389o oVar) {
            if (MediaBrowserServiceCompat.this.m12951c(str, i2)) {
                MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0380a(oVar, str, i, i2, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }

        /* renamed from: c */
        public void m12924c(AbstractC0389o oVar) {
            MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0381b(oVar));
        }

        /* renamed from: d */
        public void m12923d(String str, ResultReceiver resultReceiver, AbstractC0389o oVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0384e(oVar, str, resultReceiver));
            }
        }

        /* renamed from: e */
        public void m12922e(AbstractC0389o oVar, String str, int i, int i2, Bundle bundle) {
            MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0385f(oVar, str, i, i2, bundle));
        }

        /* renamed from: f */
        public void m12921f(String str, IBinder iBinder, AbstractC0389o oVar) {
            MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0383d(oVar, str, iBinder));
        }

        /* renamed from: g */
        public void m12920g(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0389o oVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0387h(oVar, str, bundle, resultReceiver));
            }
        }

        /* renamed from: h */
        public void m12919h(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0389o oVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0388i(oVar, str, bundle, resultReceiver));
            }
        }

        /* renamed from: i */
        public void m12918i(AbstractC0389o oVar) {
            MediaBrowserServiceCompat.this.f2079e.m12915a(new RunnableC0386g(oVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$o */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o.class */
    public interface AbstractC0389o {
        /* renamed from: a */
        void m12917a();

        IBinder asBinder();

        /* renamed from: b */
        void m12916b(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$q */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$q.class */
    public final class HandlerC0390q extends Handler {

        /* renamed from: a */
        private final C0379n f2132a;

        HandlerC0390q() {
            this.f2132a = new C0379n();
        }

        /* renamed from: a */
        public void m12915a(Runnable runnable) {
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
                    MediaSessionCompat.m15086a(bundle);
                    this.f2132a.m12925b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new p(message.replyTo));
                    return;
                case 2:
                    this.f2132a.m12924c(new p(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m15086a(bundle2);
                    this.f2132a.m12926a(data.getString("data_media_item_id"), C0247e.m13653a(data, "data_callback_token"), bundle2, new p(message.replyTo));
                    return;
                case 4:
                    this.f2132a.m12921f(data.getString("data_media_item_id"), C0247e.m13653a(data, "data_callback_token"), new p(message.replyTo));
                    return;
                case 5:
                    this.f2132a.m12923d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new p(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m15086a(bundle3);
                    this.f2132a.m12922e(new p(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f2132a.m12918i(new p(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m15086a(bundle4);
                    this.f2132a.m12920g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new p(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m15086a(bundle5);
                    this.f2132a.m12919h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new p(message.replyTo));
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
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    /* renamed from: a */
    void m12953a(String str, C0375f fVar, IBinder iBinder, Bundle bundle) {
        List<d<IBinder, Bundle>> list = fVar.f2083c.get(str);
        List<d<IBinder, Bundle>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        for (d<IBinder, Bundle> dVar : list2) {
            if (iBinder == dVar.a && C0391d.m12914a(bundle, (Bundle) dVar.b)) {
                return;
            }
        }
        list2.add(new d<>(iBinder, bundle));
        fVar.f2083c.put(str, list2);
        m12941m(str, fVar, bundle, null);
        m12944j(str, bundle);
    }

    /* renamed from: b */
    List<MediaBrowserCompat.MediaItem> m12952b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
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

    /* renamed from: c */
    boolean m12951c(String str, int i) {
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

    /* renamed from: d */
    public void m12950d(String str, Bundle bundle, C0378m<Bundle> mVar) {
        mVar.m12929e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: e */
    public abstract C0374e m12949e(String str, int i, Bundle bundle);

    /* renamed from: f */
    public abstract void m12948f(String str, C0378m<List<MediaBrowserCompat.MediaItem>> mVar);

    /* renamed from: g */
    public void m12947g(String str, C0378m<List<MediaBrowserCompat.MediaItem>> mVar, Bundle bundle) {
        mVar.m12927g(1);
        m12948f(str, mVar);
    }

    /* renamed from: h */
    public void m12946h(String str, C0378m<MediaBrowserCompat.MediaItem> mVar) {
        mVar.m12927g(2);
        mVar.m12928f(null);
    }

    /* renamed from: i */
    public void m12945i(String str, Bundle bundle, C0378m<List<MediaBrowserCompat.MediaItem>> mVar) {
        mVar.m12927g(4);
        mVar.m12928f(null);
    }

    /* renamed from: j */
    public void m12944j(String str, Bundle bundle) {
    }

    /* renamed from: k */
    public void m12943k(String str) {
    }

    /* renamed from: l */
    void m12942l(String str, Bundle bundle, C0375f fVar, ResultReceiver resultReceiver) {
        d dVar = new d(this, str, resultReceiver);
        m12950d(str, bundle, dVar);
        if (!dVar.m12932b()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
        }
    }

    /* renamed from: m */
    void m12941m(String str, C0375f fVar, Bundle bundle, Bundle bundle2) {
        a aVar = new a(this, str, fVar, str, bundle, bundle2);
        if (bundle == null) {
            m12948f(str, aVar);
        } else {
            m12947g(str, aVar, bundle);
        }
        if (!aVar.m12932b()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + fVar.f2081a + " id=" + str);
        }
    }

    /* renamed from: n */
    void m12940n(String str, C0375f fVar, ResultReceiver resultReceiver) {
        b bVar = new b(this, str, resultReceiver);
        m12946h(str, bVar);
        if (!bVar.m12932b()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
        }
    }

    /* renamed from: o */
    void m12939o(String str, Bundle bundle, C0375f fVar, ResultReceiver resultReceiver) {
        c cVar = new c(this, str, resultReceiver);
        m12945i(str, bundle, cVar);
        if (!cVar.m12932b()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2076b.m12934h0(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        this.f2076b = i >= 28 ? new k(this) : i >= 26 ? new j(this) : i >= 23 ? new i(this) : i >= 21 ? new h(this) : new l(this);
        this.f2076b.m12935a();
    }

    /* renamed from: p */
    boolean m12938p(String str, C0375f fVar, IBinder iBinder) {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (iBinder == null) {
                if (fVar.f2083c.remove(str) == null) {
                    z = false;
                }
                m12943k(str);
                return z;
            }
            List<d<IBinder, Bundle>> list = fVar.f2083c.get(str);
            if (list != null) {
                Iterator<d<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().a) {
                        it.remove();
                        z3 = true;
                    }
                }
                z2 = z3;
                if (list.size() == 0) {
                    fVar.f2083c.remove(str);
                    z2 = z3;
                }
            }
            m12943k(str);
            return z2;
        } catch (Throwable th) {
            m12943k(str);
            throw th;
        }
    }
}
