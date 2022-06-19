package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import pf;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: j */
    public static final boolean f1031j = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: a */
    public AbstractC0131g f1032a;

    /* renamed from: f */
    public C0129f f1036f;

    /* renamed from: h */
    public MediaSessionCompat.Token f1038h;

    /* renamed from: b */
    public final C0129f f1033b = new C0129f("android.media.session.MediaController", -1, -1, null, null);

    /* renamed from: c */
    public final ArrayList<C0129f> f1034c = new ArrayList<>();

    /* renamed from: d */
    public final b4<IBinder, C0129f> f1035d = new b4<>();

    /* renamed from: g */
    public final HandlerC0145r f1037g = new HandlerC0145r();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public static final class C0128e {

        /* renamed from: a */
        public final String f1039a;

        /* renamed from: b */
        public final Bundle f1040b;

        public C0128e(String str, Bundle bundle) {
            if (str != null) {
                this.f1039a = str;
                this.f1040b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }

        /* renamed from: c */
        public Bundle m6553c() {
            return this.f1040b;
        }

        /* renamed from: d */
        public String m6552d() {
            return this.f1039a;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    public class C0129f implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f1041a;

        /* renamed from: b */
        public final int f1042b;

        /* renamed from: c */
        public final int f1043c;

        /* renamed from: d */
        public final AbstractC0144p f1044d;

        /* renamed from: e */
        public final HashMap<String, List<ka<IBinder, Bundle>>> f1045e = new HashMap<>();

        /* renamed from: f */
        public C0128e f1046f;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        public class RunnableC0130a implements Runnable {
            public RunnableC0130a() {
                C0129f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = C0129f.this;
                MediaBrowserServiceCompat.this.f1035d.remove(c0129f.f1044d.asBinder());
            }
        }

        public C0129f(String str, int i, int i2, Bundle bundle, AbstractC0144p abstractC0144p) {
            MediaBrowserServiceCompat.this = r7;
            this.f1041a = str;
            this.f1042b = i;
            this.f1043c = i2;
            new pf.b(str, i, i2);
            this.f1044d = abstractC0144p;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f1037g.post(new RunnableC0130a());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    public interface AbstractC0131g {
        /* renamed from: a */
        IBinder m6551a(Intent intent);

        /* renamed from: b */
        void m6550b();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    public static class C0132m<T> {

        /* renamed from: a */
        public final Object f1049a;

        /* renamed from: b */
        public boolean f1050b;

        /* renamed from: c */
        public boolean f1051c;

        /* renamed from: d */
        public boolean f1052d;

        /* renamed from: e */
        public int f1053e;

        public C0132m(Object obj) {
            this.f1049a = obj;
        }

        /* renamed from: a */
        public int m6549a() {
            return this.f1053e;
        }

        /* renamed from: b */
        public boolean m6548b() {
            return this.f1050b || this.f1051c || this.f1052d;
        }

        /* renamed from: c */
        public void m6547c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f1049a);
        }

        /* renamed from: d */
        public void m6546d(T t) {
            throw null;
        }

        /* renamed from: e */
        public void m6545e(Bundle bundle) {
            if (!this.f1051c && !this.f1052d) {
                this.f1052d = true;
                m6547c(bundle);
                return;
            }
            throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f1049a);
        }

        /* renamed from: f */
        public void m6544f(T t) {
            if (!this.f1051c && !this.f1052d) {
                this.f1051c = true;
                m6546d(t);
                return;
            }
            throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f1049a);
        }

        /* renamed from: g */
        public void m6543g(int i) {
            this.f1053e = i;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    public static class C0133n<T> {

        /* renamed from: a */
        public MediaBrowserService.Result f1054a;

        public C0133n(MediaBrowserService.Result result) {
            this.f1054a = result;
        }

        /* renamed from: a */
        public List<MediaBrowser.MediaItem> m6542a(List<Parcel> list) {
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
        /* renamed from: b */
        public void m6541b(T t) {
            if (t instanceof List) {
                this.f1054a.sendResult(m6542a((List) t));
            } else if (!(t instanceof Parcel)) {
                this.f1054a.sendResult(null);
            } else {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f1054a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$o */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o.class */
    public class C0134o {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$a.class */
        public class RunnableC0135a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1056a;

            /* renamed from: b */
            public final /* synthetic */ String f1057b;

            /* renamed from: c */
            public final /* synthetic */ int f1058c;

            /* renamed from: d */
            public final /* synthetic */ int f1059d;

            /* renamed from: f */
            public final /* synthetic */ Bundle f1060f;

            public RunnableC0135a(AbstractC0144p abstractC0144p, String str, int i, int i2, Bundle bundle) {
                C0134o.this = r4;
                this.f1056a = abstractC0144p;
                this.f1057b = str;
                this.f1058c = i;
                this.f1059d = i2;
                this.f1060f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1056a.asBinder();
                MediaBrowserServiceCompat.this.f1035d.remove(asBinder);
                C0129f c0129f = new C0129f(this.f1057b, this.f1058c, this.f1059d, this.f1060f, this.f1056a);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f1036f = c0129f;
                C0128e m6567e = mediaBrowserServiceCompat.m6567e(this.f1057b, this.f1059d, this.f1060f);
                c0129f.f1046f = m6567e;
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f1036f = null;
                if (m6567e != null) {
                    try {
                        mediaBrowserServiceCompat2.f1035d.put(asBinder, c0129f);
                        asBinder.linkToDeath(c0129f, 0);
                        if (MediaBrowserServiceCompat.this.f1038h == null) {
                            return;
                        }
                        this.f1056a.m6529c(c0129f.f1046f.m6552d(), MediaBrowserServiceCompat.this.f1038h, c0129f.f1046f.m6553c());
                        return;
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.f1057b);
                        MediaBrowserServiceCompat.this.f1035d.remove(asBinder);
                        return;
                    }
                }
                Log.i("MBServiceCompat", "No root for client " + this.f1057b + " from service " + RunnableC0135a.class.getName());
                try {
                    this.f1056a.m6530b();
                } catch (RemoteException e2) {
                    Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f1057b);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$b.class */
        public class RunnableC0136b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1062a;

            public RunnableC0136b(AbstractC0144p abstractC0144p) {
                C0134o.this = r4;
                this.f1062a = abstractC0144p;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.remove(this.f1062a.asBinder());
                if (c0129f != null) {
                    c0129f.f1044d.asBinder().unlinkToDeath(c0129f, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$c */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$c.class */
        public class RunnableC0137c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1064a;

            /* renamed from: b */
            public final /* synthetic */ String f1065b;

            /* renamed from: c */
            public final /* synthetic */ IBinder f1066c;

            /* renamed from: d */
            public final /* synthetic */ Bundle f1067d;

            public RunnableC0137c(AbstractC0144p abstractC0144p, String str, IBinder iBinder, Bundle bundle) {
                C0134o.this = r4;
                this.f1064a = abstractC0144p;
                this.f1065b = str;
                this.f1066c = iBinder;
                this.f1067d = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.get(this.f1064a.asBinder());
                if (c0129f != null) {
                    MediaBrowserServiceCompat.this.m6571a(this.f1065b, c0129f, this.f1066c, this.f1067d);
                    return;
                }
                Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.f1065b);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$d */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$d.class */
        public class RunnableC0138d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1069a;

            /* renamed from: b */
            public final /* synthetic */ String f1070b;

            /* renamed from: c */
            public final /* synthetic */ IBinder f1071c;

            public RunnableC0138d(AbstractC0144p abstractC0144p, String str, IBinder iBinder) {
                C0134o.this = r4;
                this.f1069a = abstractC0144p;
                this.f1070b = str;
                this.f1071c = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.get(this.f1069a.asBinder());
                if (c0129f == null) {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.f1070b);
                } else if (MediaBrowserServiceCompat.this.m6556p(this.f1070b, c0129f, this.f1071c)) {
                } else {
                    Log.w("MBServiceCompat", "removeSubscription called for " + this.f1070b + " which is not subscribed");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$e */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$e.class */
        public class RunnableC0139e implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1073a;

            /* renamed from: b */
            public final /* synthetic */ String f1074b;

            /* renamed from: c */
            public final /* synthetic */ ResultReceiver f1075c;

            public RunnableC0139e(AbstractC0144p abstractC0144p, String str, ResultReceiver resultReceiver) {
                C0134o.this = r4;
                this.f1073a = abstractC0144p;
                this.f1074b = str;
                this.f1075c = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.get(this.f1073a.asBinder());
                if (c0129f != null) {
                    MediaBrowserServiceCompat.this.m6558n(this.f1074b, c0129f, this.f1075c);
                    return;
                }
                Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f1074b);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$f */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$f.class */
        public class RunnableC0140f implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1077a;

            /* renamed from: b */
            public final /* synthetic */ int f1078b;

            /* renamed from: c */
            public final /* synthetic */ String f1079c;

            /* renamed from: d */
            public final /* synthetic */ int f1080d;

            /* renamed from: f */
            public final /* synthetic */ Bundle f1081f;

            public RunnableC0140f(AbstractC0144p abstractC0144p, int i, String str, int i2, Bundle bundle) {
                C0134o.this = r4;
                this.f1077a = abstractC0144p;
                this.f1078b = i;
                this.f1079c = str;
                this.f1080d = i2;
                this.f1081f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1077a.asBinder();
                MediaBrowserServiceCompat.this.f1035d.remove(asBinder);
                Iterator<C0129f> it = MediaBrowserServiceCompat.this.f1034c.iterator();
                C0129f c0129f = null;
                while (it.hasNext()) {
                    C0129f next = it.next();
                    if (next.f1043c == this.f1078b) {
                        if (TextUtils.isEmpty(this.f1079c) || this.f1080d <= 0) {
                            c0129f = new C0129f(next.f1041a, next.f1042b, next.f1043c, this.f1081f, this.f1077a);
                        }
                        it.remove();
                    }
                }
                C0129f c0129f2 = c0129f;
                if (c0129f == null) {
                    c0129f2 = new C0129f(this.f1079c, this.f1080d, this.f1078b, this.f1081f, this.f1077a);
                }
                MediaBrowserServiceCompat.this.f1035d.put(asBinder, c0129f2);
                try {
                    asBinder.linkToDeath(c0129f2, 0);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$g */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$g.class */
        public class RunnableC0141g implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1083a;

            public RunnableC0141g(AbstractC0144p abstractC0144p) {
                C0134o.this = r4;
                this.f1083a = abstractC0144p;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f1083a.asBinder();
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.remove(asBinder);
                if (c0129f != null) {
                    asBinder.unlinkToDeath(c0129f, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$h */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$h.class */
        public class RunnableC0142h implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1085a;

            /* renamed from: b */
            public final /* synthetic */ String f1086b;

            /* renamed from: c */
            public final /* synthetic */ Bundle f1087c;

            /* renamed from: d */
            public final /* synthetic */ ResultReceiver f1088d;

            public RunnableC0142h(AbstractC0144p abstractC0144p, String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0134o.this = r4;
                this.f1085a = abstractC0144p;
                this.f1086b = str;
                this.f1087c = bundle;
                this.f1088d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.get(this.f1085a.asBinder());
                if (c0129f != null) {
                    MediaBrowserServiceCompat.this.m6557o(this.f1086b, this.f1087c, c0129f, this.f1088d);
                    return;
                }
                Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f1086b);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$o$i */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o$i.class */
        public class RunnableC0143i implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC0144p f1090a;

            /* renamed from: b */
            public final /* synthetic */ String f1091b;

            /* renamed from: c */
            public final /* synthetic */ Bundle f1092c;

            /* renamed from: d */
            public final /* synthetic */ ResultReceiver f1093d;

            public RunnableC0143i(AbstractC0144p abstractC0144p, String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0134o.this = r4;
                this.f1090a = abstractC0144p;
                this.f1091b = str;
                this.f1092c = bundle;
                this.f1093d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0129f c0129f = (C0129f) MediaBrowserServiceCompat.this.f1035d.get(this.f1090a.asBinder());
                if (c0129f != null) {
                    MediaBrowserServiceCompat.this.m6560l(this.f1091b, this.f1092c, c0129f, this.f1093d);
                    return;
                }
                Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f1091b + ", extras=" + this.f1092c);
            }
        }

        public C0134o() {
            MediaBrowserServiceCompat.this = r4;
        }

        /* renamed from: a */
        public void m6540a(String str, IBinder iBinder, Bundle bundle, AbstractC0144p abstractC0144p) {
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0137c(abstractC0144p, str, iBinder, bundle));
        }

        /* renamed from: b */
        public void m6539b(String str, int i, int i2, Bundle bundle, AbstractC0144p abstractC0144p) {
            if (MediaBrowserServiceCompat.this.m6569c(str, i2)) {
                MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0135a(abstractC0144p, str, i, i2, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }

        /* renamed from: c */
        public void m6538c(AbstractC0144p abstractC0144p) {
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0136b(abstractC0144p));
        }

        /* renamed from: d */
        public void m6537d(String str, ResultReceiver resultReceiver, AbstractC0144p abstractC0144p) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0139e(abstractC0144p, str, resultReceiver));
        }

        /* renamed from: e */
        public void m6536e(AbstractC0144p abstractC0144p, String str, int i, int i2, Bundle bundle) {
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0140f(abstractC0144p, i2, str, i, bundle));
        }

        /* renamed from: f */
        public void m6535f(String str, IBinder iBinder, AbstractC0144p abstractC0144p) {
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0138d(abstractC0144p, str, iBinder));
        }

        /* renamed from: g */
        public void m6534g(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0144p abstractC0144p) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0142h(abstractC0144p, str, bundle, resultReceiver));
        }

        /* renamed from: h */
        public void m6533h(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0144p abstractC0144p) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0143i(abstractC0144p, str, bundle, resultReceiver));
        }

        /* renamed from: i */
        public void m6532i(AbstractC0144p abstractC0144p) {
            MediaBrowserServiceCompat.this.f1037g.m6528a(new RunnableC0141g(abstractC0144p));
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$p */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$p.class */
    public interface AbstractC0144p {
        /* renamed from: a */
        void m6531a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);

        IBinder asBinder();

        /* renamed from: b */
        void m6530b();

        /* renamed from: c */
        void m6529c(String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$r */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$r.class */
    public final class HandlerC0145r extends Handler {

        /* renamed from: a */
        public final C0134o f1095a;

        public HandlerC0145r() {
            MediaBrowserServiceCompat.this = r6;
            this.f1095a = new C0134o();
        }

        /* renamed from: a */
        public void m6528a(Runnable runnable) {
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
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.f1095a.m6539b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new q(message.replyTo));
                    return;
                case 2:
                    this.f1095a.m6538c(new q(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.f1095a.m6540a(data.getString("data_media_item_id"), v7.a(data, "data_callback_token"), bundle2, new q(message.replyTo));
                    return;
                case 4:
                    this.f1095a.m6535f(data.getString("data_media_item_id"), v7.a(data, "data_callback_token"), new q(message.replyTo));
                    return;
                case 5:
                    this.f1095a.m6537d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.f1095a.m6536e(new q(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f1095a.m6532i(new q(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.f1095a.m6534g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.f1095a.m6533h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
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
            if (callingPid <= 0) {
                if (!data.containsKey("data_calling_pid")) {
                    callingPid = -1;
                }
                return super.sendMessageAtTime(message, j);
            }
            data.putInt("data_calling_pid", callingPid);
            return super.sendMessageAtTime(message, j);
        }
    }

    /* renamed from: a */
    public void m6571a(String str, C0129f c0129f, IBinder iBinder, Bundle bundle) {
        List<ka<IBinder, Bundle>> list = c0129f.f1045e.get(str);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        for (ka<IBinder, Bundle> kaVar : arrayList) {
            if (iBinder == kaVar.a && of.a(bundle, (Bundle) kaVar.b)) {
                return;
            }
        }
        arrayList.add(new ka<>(iBinder, bundle));
        c0129f.f1045e.put(str, arrayList);
        m6559m(str, c0129f, bundle, null);
        m6562j(str, bundle);
    }

    /* renamed from: b */
    public List<MediaBrowserCompat.MediaItem> m6570b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
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
    public boolean m6569c(String str, int i) {
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
    public void m6568d(String str, Bundle bundle, C0132m<Bundle> c0132m) {
        c0132m.m6545e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: e */
    public abstract C0128e m6567e(String str, int i, Bundle bundle);

    /* renamed from: f */
    public abstract void m6566f(String str, C0132m<List<MediaBrowserCompat.MediaItem>> c0132m);

    /* renamed from: g */
    public void m6565g(String str, C0132m<List<MediaBrowserCompat.MediaItem>> c0132m, Bundle bundle) {
        c0132m.m6543g(1);
        m6566f(str, c0132m);
    }

    /* renamed from: h */
    public void m6564h(String str, C0132m<MediaBrowserCompat.MediaItem> c0132m) {
        c0132m.m6543g(2);
        c0132m.m6544f(null);
    }

    /* renamed from: i */
    public void m6563i(String str, Bundle bundle, C0132m<List<MediaBrowserCompat.MediaItem>> c0132m) {
        c0132m.m6543g(4);
        c0132m.m6544f(null);
    }

    /* renamed from: j */
    public void m6562j(String str, Bundle bundle) {
    }

    /* renamed from: k */
    public void m6561k(String str) {
    }

    /* renamed from: l */
    public void m6560l(String str, Bundle bundle, C0129f c0129f, ResultReceiver resultReceiver) {
        d dVar = new d(this, str, resultReceiver);
        m6568d(str, bundle, dVar);
        if (dVar.m6548b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    /* renamed from: m */
    public void m6559m(String str, C0129f c0129f, Bundle bundle, Bundle bundle2) {
        a aVar = new a(this, str, c0129f, str, bundle, bundle2);
        if (bundle == null) {
            m6566f(str, aVar);
        } else {
            m6565g(str, aVar, bundle);
        }
        if (aVar.m6548b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + c0129f.f1041a + " id=" + str);
    }

    /* renamed from: n */
    public void m6558n(String str, C0129f c0129f, ResultReceiver resultReceiver) {
        b bVar = new b(this, str, resultReceiver);
        m6564h(str, bVar);
        if (bVar.m6548b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    /* renamed from: o */
    public void m6557o(String str, Bundle bundle, C0129f c0129f, ResultReceiver resultReceiver) {
        c cVar = new c(this, str, resultReceiver);
        m6563i(str, bundle, cVar);
        if (cVar.m6548b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1032a.m6551a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        this.f1032a = i >= 28 ? new k(this) : i >= 26 ? new j(this) : i >= 23 ? new i(this) : i >= 21 ? new h(this) : new l(this);
        this.f1032a.m6550b();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: p */
    public boolean m6556p(String str, C0129f c0129f, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                boolean z2 = c0129f.f1045e.remove(str) != null;
                m6561k(str);
                return z2;
            }
            List<ka<IBinder, Bundle>> list = c0129f.f1045e.get(str);
            boolean z3 = false;
            if (list != null) {
                Iterator<ka<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().a) {
                        it.remove();
                        z = true;
                    }
                }
                z3 = z;
                if (list.size() == 0) {
                    c0129f.f1045e.remove(str);
                    z3 = z;
                }
            }
            m6561k(str);
            return z3;
        } catch (Throwable th) {
            m6561k(str);
            throw th;
        }
    }
}
