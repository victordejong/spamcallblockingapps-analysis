package androidx.media;

import android.app.Service;
import android.content.Intent;
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
import android.support.p003v4.media.MediaBrowserCompat;
import android.support.p003v4.media.session.AbstractC0059b;
import android.support.p003v4.media.session.MediaSessionCompat;
import android.support.p003v4.p004os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0561e;
import androidx.media.C0867b;
import androidx.media.C0872c;
import androidx.media.C0875d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p020b.p036e.C1489a;
import p020b.p041h.p049k.C1593d;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: d */
    static final boolean f3786d = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: e */
    private AbstractC0843g f3787e;

    /* renamed from: g */
    C0841f f3789g;

    /* renamed from: i */
    MediaSessionCompat.Token f3791i;

    /* renamed from: f */
    final C1489a<IBinder, C0841f> f3788f = new C1489a<>();

    /* renamed from: h */
    final HandlerC0865q f3790h = new HandlerC0865q();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$a.class */
    public class C0836a extends C0852m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        final /* synthetic */ C0841f f3792f;

        /* renamed from: g */
        final /* synthetic */ String f3793g;

        /* renamed from: h */
        final /* synthetic */ Bundle f3794h;

        /* renamed from: i */
        final /* synthetic */ Bundle f3795i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0836a(Object obj, C0841f c0841f, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            MediaBrowserServiceCompat.this = r4;
            this.f3792f = c0841f;
            this.f3793g = str;
            this.f3794h = bundle;
            this.f3795i = bundle2;
        }

        /* renamed from: h */
        public void mo32265d(List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.f3788f.get(this.f3792f.f3808f.asBinder()) != this.f3792f) {
                if (!MediaBrowserServiceCompat.f3786d) {
                    return;
                }
                Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f3792f.f3803a + " id=" + this.f3793g);
                return;
            }
            List<MediaBrowserCompat.MediaItem> list2 = list;
            if ((m32268a() & 1) != 0) {
                list2 = MediaBrowserServiceCompat.this.m32292b(list, this.f3794h);
            }
            try {
                this.f3792f.f3808f.mo32252a(this.f3793g, list2, this.f3794h, this.f3795i);
            } catch (RemoteException e) {
                Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f3793g + " package=" + this.f3792f.f3803a);
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$b.class */
    public class C0837b extends C0852m<MediaBrowserCompat.MediaItem> {

        /* renamed from: f */
        final /* synthetic */ ResultReceiver f3797f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0837b(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            MediaBrowserServiceCompat.this = r4;
            this.f3797f = resultReceiver;
        }

        /* renamed from: h */
        public void mo32265d(MediaBrowserCompat.MediaItem mediaItem) {
            if ((m32268a() & 2) != 0) {
                this.f3797f.m35771b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f3797f.m35771b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$c.class */
    public class C0838c extends C0852m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        final /* synthetic */ ResultReceiver f3799f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0838c(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            MediaBrowserServiceCompat.this = r4;
            this.f3799f = resultReceiver;
        }

        /* renamed from: h */
        public void mo32265d(List<MediaBrowserCompat.MediaItem> list) {
            if ((m32268a() & 4) != 0 || list == null) {
                this.f3799f.m35771b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f3799f.m35771b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d.class */
    public class C0839d extends C0852m<Bundle> {

        /* renamed from: f */
        final /* synthetic */ ResultReceiver f3801f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0839d(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            MediaBrowserServiceCompat.this = r4;
            this.f3801f = resultReceiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C0852m
        /* renamed from: c */
        void mo32266c(Bundle bundle) {
            this.f3801f.m35771b(-1, bundle);
        }

        /* renamed from: h */
        public void mo32265d(Bundle bundle) {
            this.f3801f.m35771b(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public static final class C0840e {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    public class C0841f implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f3803a;

        /* renamed from: b */
        public final int f3804b;

        /* renamed from: c */
        public final int f3805c;

        /* renamed from: d */
        public final C0879e f3806d;

        /* renamed from: e */
        public final Bundle f3807e;

        /* renamed from: f */
        public final AbstractC0863o f3808f;

        /* renamed from: g */
        public final HashMap<String, List<C1593d<IBinder, Bundle>>> f3809g = new HashMap<>();

        /* renamed from: androidx.media.MediaBrowserServiceCompat$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f$a.class */
        class RunnableC0842a implements Runnable {
            RunnableC0842a() {
                C0841f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = C0841f.this;
                MediaBrowserServiceCompat.this.f3788f.remove(c0841f.f3808f.asBinder());
            }
        }

        C0841f(String str, int i, int i2, Bundle bundle, AbstractC0863o abstractC0863o) {
            MediaBrowserServiceCompat.this = r8;
            this.f3803a = str;
            this.f3804b = i;
            this.f3805c = i2;
            this.f3806d = new C0879e(str, i, i2);
            this.f3807e = bundle;
            this.f3808f = abstractC0863o;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f3790h.post(new RunnableC0842a());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    interface AbstractC0843g {
        /* renamed from: a */
        void mo32270a();

        /* renamed from: c0 */
        IBinder mo32269c0(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$h */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h.class */
    public class C0844h implements AbstractC0843g, C0867b.AbstractC0871d {

        /* renamed from: a */
        final List<Bundle> f3812a = new ArrayList();

        /* renamed from: b */
        Object f3813b;

        /* renamed from: c */
        Messenger f3814c;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$h$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h$a.class */
        class C0845a extends C0852m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            final /* synthetic */ C0867b.C0870c f3816f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0845a(Object obj, C0867b.C0870c c0870c) {
                super(obj);
                C0844h.this = r4;
                this.f3816f = c0870c;
            }

            /* renamed from: h */
            public void mo32265d(List<MediaBrowserCompat.MediaItem> list) {
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
                this.f3816f.m32243b(arrayList);
            }
        }

        C0844h() {
            MediaBrowserServiceCompat.this = r5;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: a */
        public void mo32270a() {
            Object m32247a = C0867b.m32247a(MediaBrowserServiceCompat.this, this);
            this.f3813b = m32247a;
            C0867b.m32245c(m32247a);
        }

        @Override // androidx.media.C0867b.AbstractC0871d
        /* renamed from: c */
        public void mo32242c(String str, C0867b.C0870c<List<Parcel>> c0870c) {
            MediaBrowserServiceCompat.this.m32288f(str, new C0845a(str, c0870c));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: c0 */
        public IBinder mo32269c0(Intent intent) {
            return C0867b.m32246b(this.f3813b, intent);
        }

        @Override // androidx.media.C0867b.AbstractC0871d
        /* renamed from: e */
        public C0867b.C0868a mo32241e(String str, int i, Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
            } else {
                bundle.remove("extra_client_version");
                this.f3814c = new Messenger(MediaBrowserServiceCompat.this.f3790h);
                Bundle bundle3 = new Bundle();
                bundle3.putInt("extra_service_version", 2);
                C0561e.m33460b(bundle3, "extra_messenger", this.f3814c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f3791i;
                if (token != null) {
                    AbstractC0059b m35833c = token.m35833c();
                    C0561e.m33460b(bundle3, "extra_session_binder", m35833c == null ? null : m35833c.asBinder());
                    bundle2 = bundle3;
                } else {
                    this.f3812a.add(bundle3);
                    bundle2 = bundle3;
                }
            }
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f3789g = new C0841f(str, -1, i, bundle, null);
            C0840e m32289e = MediaBrowserServiceCompat.this.m32289e(str, i, bundle);
            MediaBrowserServiceCompat.this.f3789g = null;
            if (m32289e == null) {
                return null;
            }
            Objects.requireNonNull(bundle2);
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$i */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i.class */
    public class C0846i extends C0844h implements C0872c.AbstractC0874b {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$i$a.class */
        class C0847a extends C0852m<MediaBrowserCompat.MediaItem> {

            /* renamed from: f */
            final /* synthetic */ C0867b.C0870c f3819f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0847a(Object obj, C0867b.C0870c c0870c) {
                super(obj);
                C0846i.this = r4;
                this.f3819f = c0870c;
            }

            /* renamed from: h */
            public void mo32265d(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f3819f.m32243b(null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem.writeToParcel(obtain, 0);
                this.f3819f.m32243b(obtain);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0846i() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C0844h, androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: a */
        public void mo32270a() {
            Object m32240a = C0872c.m32240a(MediaBrowserServiceCompat.this, this);
            this.f3813b = m32240a;
            C0867b.m32245c(m32240a);
        }

        @Override // androidx.media.C0872c.AbstractC0874b
        /* renamed from: b */
        public void mo32239b(String str, C0867b.C0870c<Parcel> c0870c) {
            MediaBrowserServiceCompat.this.m32286h(str, new C0847a(str, c0870c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$j */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j.class */
    public class C0848j extends C0846i implements C0875d.AbstractC0878c {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$j$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$j$a.class */
        class C0849a extends C0852m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            final /* synthetic */ C0875d.C0877b f3822f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0849a(Object obj, C0875d.C0877b c0877b) {
                super(obj);
                C0848j.this = r4;
                this.f3822f = c0877b;
            }

            /* renamed from: h */
            public void mo32265d(List<MediaBrowserCompat.MediaItem> list) {
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
                this.f3822f.m32236b(arrayList, m32268a());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0848j() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C0846i, androidx.media.MediaBrowserServiceCompat.C0844h, androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: a */
        public void mo32270a() {
            Object m32238a = C0875d.m32238a(MediaBrowserServiceCompat.this, this);
            this.f3813b = m32238a;
            C0867b.m32245c(m32238a);
        }

        @Override // androidx.media.C0875d.AbstractC0878c
        /* renamed from: d */
        public void mo32235d(String str, C0875d.C0877b c0877b, Bundle bundle) {
            MediaBrowserServiceCompat.this.m32287g(str, new C0849a(str, c0877b), bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$k */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$k.class */
    class C0850k extends C0848j {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0850k() {
            super();
            MediaBrowserServiceCompat.this = r4;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$l */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$l.class */
    class C0851l implements AbstractC0843g {

        /* renamed from: a */
        private Messenger f3825a;

        C0851l() {
            MediaBrowserServiceCompat.this = r4;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: a */
        public void mo32270a() {
            this.f3825a = new Messenger(MediaBrowserServiceCompat.this.f3790h);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0843g
        /* renamed from: c0 */
        public IBinder mo32269c0(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f3825a.getBinder();
            }
            return null;
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$m.class */
    public static class C0852m<T> {

        /* renamed from: a */
        private final Object f3827a;

        /* renamed from: b */
        private boolean f3828b;

        /* renamed from: c */
        private boolean f3829c;

        /* renamed from: d */
        private boolean f3830d;

        /* renamed from: e */
        private int f3831e;

        C0852m(Object obj) {
            this.f3827a = obj;
        }

        /* renamed from: a */
        int m32268a() {
            return this.f3831e;
        }

        /* renamed from: b */
        boolean m32267b() {
            return this.f3828b || this.f3829c || this.f3830d;
        }

        /* renamed from: c */
        void mo32266c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f3827a);
        }

        /* renamed from: d */
        void mo32265d(T t) {
            throw null;
        }

        /* renamed from: e */
        public void m32264e(Bundle bundle) {
            if (!this.f3829c && !this.f3830d) {
                this.f3830d = true;
                mo32266c(bundle);
                return;
            }
            throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f3827a);
        }

        /* renamed from: f */
        public void m32263f(T t) {
            if (!this.f3829c && !this.f3830d) {
                this.f3829c = true;
                mo32265d(t);
                return;
            }
            throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f3827a);
        }

        /* renamed from: g */
        void m32262g(int i) {
            this.f3831e = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n.class */
    public class C0853n {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$a */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$a.class */
        public class RunnableC0854a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3833d;

            /* renamed from: e */
            final /* synthetic */ String f3834e;

            /* renamed from: f */
            final /* synthetic */ int f3835f;

            /* renamed from: g */
            final /* synthetic */ int f3836g;

            /* renamed from: h */
            final /* synthetic */ Bundle f3837h;

            RunnableC0854a(AbstractC0863o abstractC0863o, String str, int i, int i2, Bundle bundle) {
                C0853n.this = r4;
                this.f3833d = abstractC0863o;
                this.f3834e = str;
                this.f3835f = i;
                this.f3836g = i2;
                this.f3837h = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f3833d.asBinder();
                MediaBrowserServiceCompat.this.f3788f.remove(asBinder);
                C0841f c0841f = new C0841f(this.f3834e, this.f3835f, this.f3836g, this.f3837h, this.f3833d);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f3789g = c0841f;
                C0840e m32289e = mediaBrowserServiceCompat.m32289e(this.f3834e, this.f3836g, this.f3837h);
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f3789g = null;
                if (m32289e != null) {
                    try {
                        mediaBrowserServiceCompat2.f3788f.put(asBinder, c0841f);
                        asBinder.linkToDeath(c0841f, 0);
                        if (MediaBrowserServiceCompat.this.f3791i != null) {
                            throw null;
                        }
                        return;
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.f3834e);
                        MediaBrowserServiceCompat.this.f3788f.remove(asBinder);
                        return;
                    }
                }
                Log.i("MBServiceCompat", "No root for client " + this.f3834e + " from service " + RunnableC0854a.class.getName());
                try {
                    this.f3833d.mo32251b();
                } catch (RemoteException e2) {
                    Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f3834e);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$b */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$b.class */
        public class RunnableC0855b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3839d;

            RunnableC0855b(AbstractC0863o abstractC0863o) {
                C0853n.this = r4;
                this.f3839d = abstractC0863o;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f remove = MediaBrowserServiceCompat.this.f3788f.remove(this.f3839d.asBinder());
                if (remove != null) {
                    remove.f3808f.asBinder().unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$c */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$c.class */
        public class RunnableC0856c implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3841d;

            /* renamed from: e */
            final /* synthetic */ String f3842e;

            /* renamed from: f */
            final /* synthetic */ IBinder f3843f;

            /* renamed from: g */
            final /* synthetic */ Bundle f3844g;

            RunnableC0856c(AbstractC0863o abstractC0863o, String str, IBinder iBinder, Bundle bundle) {
                C0853n.this = r4;
                this.f3841d = abstractC0863o;
                this.f3842e = str;
                this.f3843f = iBinder;
                this.f3844g = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = MediaBrowserServiceCompat.this.f3788f.get(this.f3841d.asBinder());
                if (c0841f != null) {
                    MediaBrowserServiceCompat.this.m32293a(this.f3842e, c0841f, this.f3843f, this.f3844g);
                    return;
                }
                Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.f3842e);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$d */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$d.class */
        public class RunnableC0857d implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3846d;

            /* renamed from: e */
            final /* synthetic */ String f3847e;

            /* renamed from: f */
            final /* synthetic */ IBinder f3848f;

            RunnableC0857d(AbstractC0863o abstractC0863o, String str, IBinder iBinder) {
                C0853n.this = r4;
                this.f3846d = abstractC0863o;
                this.f3847e = str;
                this.f3848f = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = MediaBrowserServiceCompat.this.f3788f.get(this.f3846d.asBinder());
                if (c0841f == null) {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.f3847e);
                } else if (MediaBrowserServiceCompat.this.m32278p(this.f3847e, c0841f, this.f3848f)) {
                } else {
                    Log.w("MBServiceCompat", "removeSubscription called for " + this.f3847e + " which is not subscribed");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$e */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$e.class */
        public class RunnableC0858e implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3850d;

            /* renamed from: e */
            final /* synthetic */ String f3851e;

            /* renamed from: f */
            final /* synthetic */ ResultReceiver f3852f;

            RunnableC0858e(AbstractC0863o abstractC0863o, String str, ResultReceiver resultReceiver) {
                C0853n.this = r4;
                this.f3850d = abstractC0863o;
                this.f3851e = str;
                this.f3852f = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = MediaBrowserServiceCompat.this.f3788f.get(this.f3850d.asBinder());
                if (c0841f != null) {
                    MediaBrowserServiceCompat.this.m32280n(this.f3851e, c0841f, this.f3852f);
                    return;
                }
                Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f3851e);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$f */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$f.class */
        public class RunnableC0859f implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3854d;

            /* renamed from: e */
            final /* synthetic */ String f3855e;

            /* renamed from: f */
            final /* synthetic */ int f3856f;

            /* renamed from: g */
            final /* synthetic */ int f3857g;

            /* renamed from: h */
            final /* synthetic */ Bundle f3858h;

            RunnableC0859f(AbstractC0863o abstractC0863o, String str, int i, int i2, Bundle bundle) {
                C0853n.this = r4;
                this.f3854d = abstractC0863o;
                this.f3855e = str;
                this.f3856f = i;
                this.f3857g = i2;
                this.f3858h = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f3854d.asBinder();
                MediaBrowserServiceCompat.this.f3788f.remove(asBinder);
                C0841f c0841f = new C0841f(this.f3855e, this.f3856f, this.f3857g, this.f3858h, this.f3854d);
                MediaBrowserServiceCompat.this.f3788f.put(asBinder, c0841f);
                try {
                    asBinder.linkToDeath(c0841f, 0);
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$g */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$g.class */
        public class RunnableC0860g implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3860d;

            RunnableC0860g(AbstractC0863o abstractC0863o) {
                C0853n.this = r4;
                this.f3860d = abstractC0863o;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f3860d.asBinder();
                C0841f remove = MediaBrowserServiceCompat.this.f3788f.remove(asBinder);
                if (remove != null) {
                    asBinder.unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$h */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$h.class */
        public class RunnableC0861h implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3862d;

            /* renamed from: e */
            final /* synthetic */ String f3863e;

            /* renamed from: f */
            final /* synthetic */ Bundle f3864f;

            /* renamed from: g */
            final /* synthetic */ ResultReceiver f3865g;

            RunnableC0861h(AbstractC0863o abstractC0863o, String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0853n.this = r4;
                this.f3862d = abstractC0863o;
                this.f3863e = str;
                this.f3864f = bundle;
                this.f3865g = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = MediaBrowserServiceCompat.this.f3788f.get(this.f3862d.asBinder());
                if (c0841f != null) {
                    MediaBrowserServiceCompat.this.m32279o(this.f3863e, this.f3864f, c0841f, this.f3865g);
                    return;
                }
                Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f3863e);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$n$i */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$n$i.class */
        public class RunnableC0862i implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC0863o f3867d;

            /* renamed from: e */
            final /* synthetic */ String f3868e;

            /* renamed from: f */
            final /* synthetic */ Bundle f3869f;

            /* renamed from: g */
            final /* synthetic */ ResultReceiver f3870g;

            RunnableC0862i(AbstractC0863o abstractC0863o, String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0853n.this = r4;
                this.f3867d = abstractC0863o;
                this.f3868e = str;
                this.f3869f = bundle;
                this.f3870g = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0841f c0841f = MediaBrowserServiceCompat.this.f3788f.get(this.f3867d.asBinder());
                if (c0841f != null) {
                    MediaBrowserServiceCompat.this.m32282l(this.f3868e, this.f3869f, c0841f, this.f3870g);
                    return;
                }
                Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f3868e + ", extras=" + this.f3869f);
            }
        }

        C0853n() {
            MediaBrowserServiceCompat.this = r4;
        }

        /* renamed from: a */
        public void m32261a(String str, IBinder iBinder, Bundle bundle, AbstractC0863o abstractC0863o) {
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0856c(abstractC0863o, str, iBinder, bundle));
        }

        /* renamed from: b */
        public void m32260b(String str, int i, int i2, Bundle bundle, AbstractC0863o abstractC0863o) {
            if (MediaBrowserServiceCompat.this.m32291c(str, i2)) {
                MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0854a(abstractC0863o, str, i, i2, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }

        /* renamed from: c */
        public void m32259c(AbstractC0863o abstractC0863o) {
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0855b(abstractC0863o));
        }

        /* renamed from: d */
        public void m32258d(String str, ResultReceiver resultReceiver, AbstractC0863o abstractC0863o) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0858e(abstractC0863o, str, resultReceiver));
        }

        /* renamed from: e */
        public void m32257e(AbstractC0863o abstractC0863o, String str, int i, int i2, Bundle bundle) {
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0859f(abstractC0863o, str, i, i2, bundle));
        }

        /* renamed from: f */
        public void m32256f(String str, IBinder iBinder, AbstractC0863o abstractC0863o) {
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0857d(abstractC0863o, str, iBinder));
        }

        /* renamed from: g */
        public void m32255g(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0863o abstractC0863o) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0861h(abstractC0863o, str, bundle, resultReceiver));
        }

        /* renamed from: h */
        public void m32254h(String str, Bundle bundle, ResultReceiver resultReceiver, AbstractC0863o abstractC0863o) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0862i(abstractC0863o, str, bundle, resultReceiver));
        }

        /* renamed from: i */
        public void m32253i(AbstractC0863o abstractC0863o) {
            MediaBrowserServiceCompat.this.f3790h.m32249a(new RunnableC0860g(abstractC0863o));
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$o */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$o.class */
    public interface AbstractC0863o {
        /* renamed from: a */
        void mo32252a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);

        IBinder asBinder();

        /* renamed from: b */
        void mo32251b();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$p */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$p.class */
    private static class C0864p implements AbstractC0863o {

        /* renamed from: a */
        final Messenger f3872a;

        C0864p(Messenger messenger) {
            this.f3872a = messenger;
        }

        /* renamed from: c */
        private void m32250c(int i, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f3872a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0863o
        /* renamed from: a */
        public void mo32252a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            m32250c(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0863o
        public IBinder asBinder() {
            return this.f3872a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0863o
        /* renamed from: b */
        public void mo32251b() {
            m32250c(2, null);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$q */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$q.class */
    public final class HandlerC0865q extends Handler {

        /* renamed from: a */
        private final C0853n f3873a;

        HandlerC0865q() {
            MediaBrowserServiceCompat.this = r6;
            this.f3873a = new C0853n();
        }

        /* renamed from: a */
        public void m32249a(Runnable runnable) {
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
                    MediaSessionCompat.m35842a(bundle);
                    this.f3873a.m32260b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new C0864p(message.replyTo));
                    return;
                case 2:
                    this.f3873a.m32259c(new C0864p(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m35842a(bundle2);
                    this.f3873a.m32261a(data.getString("data_media_item_id"), C0561e.m33461a(data, "data_callback_token"), bundle2, new C0864p(message.replyTo));
                    return;
                case 4:
                    this.f3873a.m32256f(data.getString("data_media_item_id"), C0561e.m33461a(data, "data_callback_token"), new C0864p(message.replyTo));
                    return;
                case 5:
                    this.f3873a.m32258d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new C0864p(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m35842a(bundle3);
                    this.f3873a.m32257e(new C0864p(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f3873a.m32253i(new C0864p(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m35842a(bundle4);
                    this.f3873a.m32255g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new C0864p(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m35842a(bundle5);
                    this.f3873a.m32254h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new C0864p(message.replyTo));
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
    void m32293a(String str, C0841f c0841f, IBinder iBinder, Bundle bundle) {
        List<C1593d<IBinder, Bundle>> list = c0841f.f3809g.get(str);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        for (C1593d<IBinder, Bundle> c1593d : arrayList) {
            if (iBinder == c1593d.f6187a && C0866a.m32248a(bundle, c1593d.f6188b)) {
                return;
            }
        }
        arrayList.add(new C1593d<>(iBinder, bundle));
        c0841f.f3809g.put(str, arrayList);
        m32281m(str, c0841f, bundle, null);
        this.f3789g = c0841f;
        m32284j(str, bundle);
        this.f3789g = null;
    }

    /* renamed from: b */
    List<MediaBrowserCompat.MediaItem> m32292b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
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
    boolean m32291c(String str, int i) {
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
    public void m32290d(String str, Bundle bundle, C0852m<Bundle> c0852m) {
        c0852m.m32264e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: e */
    public abstract C0840e m32289e(String str, int i, Bundle bundle);

    /* renamed from: f */
    public abstract void m32288f(String str, C0852m<List<MediaBrowserCompat.MediaItem>> c0852m);

    /* renamed from: g */
    public void m32287g(String str, C0852m<List<MediaBrowserCompat.MediaItem>> c0852m, Bundle bundle) {
        c0852m.m32262g(1);
        m32288f(str, c0852m);
    }

    /* renamed from: h */
    public void m32286h(String str, C0852m<MediaBrowserCompat.MediaItem> c0852m) {
        c0852m.m32262g(2);
        c0852m.m32263f(null);
    }

    /* renamed from: i */
    public void m32285i(String str, Bundle bundle, C0852m<List<MediaBrowserCompat.MediaItem>> c0852m) {
        c0852m.m32262g(4);
        c0852m.m32263f(null);
    }

    /* renamed from: j */
    public void m32284j(String str, Bundle bundle) {
    }

    /* renamed from: k */
    public void m32283k(String str) {
    }

    /* renamed from: l */
    void m32282l(String str, Bundle bundle, C0841f c0841f, ResultReceiver resultReceiver) {
        C0839d c0839d = new C0839d(str, resultReceiver);
        this.f3789g = c0841f;
        m32290d(str, bundle, c0839d);
        this.f3789g = null;
        if (c0839d.m32267b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    /* renamed from: m */
    void m32281m(String str, C0841f c0841f, Bundle bundle, Bundle bundle2) {
        C0836a c0836a = new C0836a(str, c0841f, str, bundle, bundle2);
        this.f3789g = c0841f;
        if (bundle == null) {
            m32288f(str, c0836a);
        } else {
            m32287g(str, c0836a, bundle);
        }
        this.f3789g = null;
        if (c0836a.m32267b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + c0841f.f3803a + " id=" + str);
    }

    /* renamed from: n */
    void m32280n(String str, C0841f c0841f, ResultReceiver resultReceiver) {
        C0837b c0837b = new C0837b(str, resultReceiver);
        this.f3789g = c0841f;
        m32286h(str, c0837b);
        this.f3789g = null;
        if (c0837b.m32267b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    /* renamed from: o */
    void m32279o(String str, Bundle bundle, C0841f c0841f, ResultReceiver resultReceiver) {
        C0838c c0838c = new C0838c(str, resultReceiver);
        this.f3789g = c0841f;
        m32285i(str, bundle, c0838c);
        this.f3789g = null;
        if (c0838c.m32267b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3787e.mo32269c0(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f3787e = new C0850k();
        } else if (i >= 26) {
            this.f3787e = new C0848j();
        } else if (i >= 23) {
            this.f3787e = new C0846i();
        } else if (i >= 21) {
            this.f3787e = new C0844h();
        } else {
            this.f3787e = new C0851l();
        }
        this.f3787e.mo32270a();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: p */
    boolean m32278p(String str, C0841f c0841f, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                boolean z2 = c0841f.f3809g.remove(str) != null;
                this.f3789g = c0841f;
                m32283k(str);
                this.f3789g = null;
                return z2;
            }
            List<C1593d<IBinder, Bundle>> list = c0841f.f3809g.get(str);
            boolean z3 = false;
            if (list != null) {
                Iterator<C1593d<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f6187a) {
                        it.remove();
                        z = true;
                    }
                }
                z3 = z;
                if (list.size() == 0) {
                    c0841f.f3809g.remove(str);
                    z3 = z;
                }
            }
            this.f3789g = c0841f;
            m32283k(str);
            this.f3789g = null;
            return z3;
        } catch (Throwable th) {
            this.f3789g = c0841f;
            m32283k(str);
            this.f3789g = null;
            throw th;
        }
    }
}
