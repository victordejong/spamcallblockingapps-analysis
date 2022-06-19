package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p000.C0225az;
import zy;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaRouteProviderService.class */
public abstract class MediaRouteProviderService extends Service {

    /* renamed from: h */
    public static final boolean f1291h = Log.isLoggable("MediaRouteProviderSrv", 3);

    /* renamed from: a */
    public final HandlerC0177e f1292a;

    /* renamed from: b */
    public final Messenger f1293b;

    /* renamed from: c */
    public final HandlerC0176d f1294c = new HandlerC0176d();

    /* renamed from: d */
    public final zy.a f1295d;

    /* renamed from: f */
    public zy f1296f;

    /* renamed from: g */
    public final AbstractC0175a f1297g;

    /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$a */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaRouteProviderService$a.class */
    public interface AbstractC0175a {
        /* renamed from: a */
        IBinder m6272a(Intent intent);

        /* renamed from: b */
        boolean m6271b(Messenger messenger, int i, int i2);

        /* renamed from: c */
        boolean m6270c(Messenger messenger, int i, int i2, String str, String str2);

        /* renamed from: d */
        void m6269d(Context context);

        /* renamed from: e */
        boolean m6268e(Messenger messenger, int i, int i2, String str);

        /* renamed from: f */
        void m6267f(Messenger messenger);

        /* renamed from: g */
        boolean m6266g(Messenger messenger, int i, yy yyVar);

        /* renamed from: h */
        boolean m6265h(Messenger messenger, int i, int i2, int i3);

        /* renamed from: i */
        boolean m6264i(Messenger messenger, int i, int i2);

        /* renamed from: j */
        boolean m6263j(Messenger messenger, int i, int i2, String str);

        /* renamed from: k */
        boolean m6262k(Messenger messenger, int i, int i2, String str);

        /* renamed from: l */
        boolean m6261l(Messenger messenger, int i, int i2, Intent intent);

        /* renamed from: m */
        boolean m6260m(Messenger messenger, int i, int i2, int i3);

        /* renamed from: n */
        zy.a m6259n();

        /* renamed from: o */
        boolean m6258o(Messenger messenger, int i, int i2, String str);

        /* renamed from: p */
        boolean m6257p(Messenger messenger, int i, int i2, List<String> list);

        /* renamed from: q */
        boolean m6256q(Messenger messenger, int i, int i2, int i3);

        /* renamed from: r */
        boolean m6255r(Messenger messenger, int i);
    }

    /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$d */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaRouteProviderService$d.class */
    public final class HandlerC0176d extends Handler {
        public HandlerC0176d() {
            MediaRouteProviderService.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            MediaRouteProviderService.this.f1297g.m6267f((Messenger) message.obj);
        }
    }

    /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$e */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaRouteProviderService$e.class */
    public static final class HandlerC0177e extends Handler {

        /* renamed from: a */
        public final WeakReference<MediaRouteProviderService> f1299a;

        public HandlerC0177e(MediaRouteProviderService mediaRouteProviderService) {
            this.f1299a = new WeakReference<>(mediaRouteProviderService);
        }

        /* renamed from: a */
        public final boolean m6254a(int i, Messenger messenger, int i2, int i3, Object obj, Bundle bundle, String str) {
            MediaRouteProviderService mediaRouteProviderService = this.f1299a.get();
            if (mediaRouteProviderService != null) {
                switch (i) {
                    case 1:
                        return mediaRouteProviderService.f1297g.m6258o(messenger, i2, i3, str);
                    case 2:
                        return mediaRouteProviderService.f1297g.m6255r(messenger, i2);
                    case 3:
                        String string = bundle.getString("routeId");
                        String string2 = bundle.getString("routeGroupId");
                        if (string == null) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6270c(messenger, i2, i3, string, string2);
                    case 4:
                        return mediaRouteProviderService.f1297g.m6264i(messenger, i2, i3);
                    case 5:
                        return mediaRouteProviderService.f1297g.m6271b(messenger, i2, i3);
                    case 6:
                        return mediaRouteProviderService.f1297g.m6260m(messenger, i2, i3, bundle == null ? 0 : bundle.getInt("unselectReason", 0));
                    case 7:
                        int i4 = bundle.getInt("volume", -1);
                        if (i4 < 0) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6265h(messenger, i2, i3, i4);
                    case 8:
                        int i5 = bundle.getInt("volume", 0);
                        if (i5 == 0) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6256q(messenger, i2, i3, i5);
                    case 9:
                        if (!(obj instanceof Intent)) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6261l(messenger, i2, i3, (Intent) obj);
                    case 10:
                        if (obj != null && !(obj instanceof Bundle)) {
                            return false;
                        }
                        yy c = yy.c((Bundle) obj);
                        AbstractC0175a abstractC0175a = mediaRouteProviderService.f1297g;
                        if (c == null || !c.f()) {
                            c = null;
                        }
                        return abstractC0175a.m6266g(messenger, i2, c);
                    case 11:
                        String string3 = bundle.getString("memberRouteId");
                        if (string3 == null) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6262k(messenger, i2, i3, string3);
                    case 12:
                        String string4 = bundle.getString("memberRouteId");
                        if (string4 == null) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6268e(messenger, i2, i3, string4);
                    case 13:
                        String string5 = bundle.getString("memberRouteId");
                        if (string5 == null) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6263j(messenger, i2, i3, string5);
                    case 14:
                        ArrayList<String> stringArrayList = bundle.getStringArrayList("memberRouteIds");
                        if (stringArrayList == null) {
                            return false;
                        }
                        return mediaRouteProviderService.f1297g.m6257p(messenger, i2, i3, stringArrayList);
                    default:
                        return false;
                }
            }
            return false;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String[] packagesForUid;
            Messenger messenger = message.replyTo;
            if (!AbstractC0265bz.m5546a(messenger)) {
                if (!MediaRouteProviderService.f1291h) {
                    return;
                }
                Log.d("MediaRouteProviderSrv", "Ignoring message without valid reply messenger.");
                return;
            }
            int i = message.what;
            int i2 = message.arg1;
            int i3 = message.arg2;
            Object obj = message.obj;
            Bundle peekData = message.peekData();
            if (m6254a(i, messenger, i2, i3, obj, peekData, (i != 1 || Build.VERSION.SDK_INT < 21 || (packagesForUid = this.f1299a.get().getPackageManager().getPackagesForUid(message.sendingUid)) == null || packagesForUid.length <= 0) ? null : packagesForUid[0])) {
                return;
            }
            if (MediaRouteProviderService.f1291h) {
                Log.d("MediaRouteProviderSrv", MediaRouteProviderService.m6288c(messenger) + ": Message failed, what=" + i + ", requestId=" + i2 + ", arg=" + i3 + ", obj=" + obj + ", data=" + peekData);
            }
            MediaRouteProviderService.m6285f(messenger, i2);
        }
    }

    @SuppressLint({"NewApi"})
    public MediaRouteProviderService() {
        HandlerC0177e handlerC0177e = new HandlerC0177e(this);
        this.f1292a = handlerC0177e;
        this.f1293b = new Messenger(handlerC0177e);
        this.f1297g = Build.VERSION.SDK_INT >= 30 ? new b(this) : new c(this);
        this.f1295d = this.f1297g.m6259n();
    }

    /* renamed from: a */
    public static Bundle m6290a(C0225az c0225az, int i) {
        if (c0225az == null) {
            return null;
        }
        C0225az.C0226a c0226a = new C0225az.C0226a(c0225az);
        c0226a.m5828c(null);
        if (i < 4) {
            c0226a.m5827d(false);
        }
        for (xy xyVar : c0225az.m5833c()) {
            if (i >= xyVar.o() && i <= xyVar.n()) {
                c0226a.m5830a(xyVar);
            }
        }
        return c0226a.m5829b().m5835a();
    }

    /* renamed from: c */
    public static String m6288c(Messenger messenger) {
        return "Client connection " + messenger.getBinder().toString();
    }

    /* renamed from: f */
    public static void m6285f(Messenger messenger, int i) {
        if (i != 0) {
            m6283h(messenger, 0, i, 0, null, null);
        }
    }

    /* renamed from: g */
    public static void m6284g(Messenger messenger, int i) {
        if (i != 0) {
            m6283h(messenger, 1, i, 0, null, null);
        }
    }

    /* renamed from: h */
    public static void m6283h(Messenger messenger, int i, int i2, int i3, Object obj, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        obtain.setData(bundle);
        try {
            messenger.send(obtain);
        } catch (DeadObjectException e) {
        } catch (RemoteException e2) {
            Log.e("MediaRouteProviderSrv", "Could not send message to " + m6288c(messenger), e2);
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        this.f1297g.m6269d(context);
    }

    /* renamed from: b */
    public void m6289b() {
        zy m6286e;
        if (this.f1296f != null || (m6286e = m6286e()) == null) {
            return;
        }
        String b = m6286e.r().b();
        if (b.equals(getPackageName())) {
            this.f1296f = m6286e;
            m6286e.w(this.f1295d);
            return;
        }
        throw new IllegalStateException("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: " + b + ".  Service package name: " + getPackageName() + ".");
    }

    /* renamed from: d */
    public zy m6287d() {
        return this.f1296f;
    }

    /* renamed from: e */
    public abstract zy m6286e();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1297g.m6272a(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        zy zyVar = this.f1296f;
        if (zyVar != null) {
            zyVar.w((zy.a) null);
        }
        super.onDestroy();
    }
}
