package android.support.p001v4.media;

import android.content.ComponentName;
import android.content.Context;
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
import android.support.p001v4.media.C0030a;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0247e;
import androidx.media.C0391d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: b */
    static final boolean f35b = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: a */
    private final AbstractC0018e f36a;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new C0012a();

        /* renamed from: b */
        private final int f37b;

        /* renamed from: c */
        private final MediaDescriptionCompat f38c;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem$a.class */
        static final class C0012a implements Parcelable.Creator<MediaItem> {
            C0012a() {
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
            this.f37b = parcel.readInt();
            this.f38c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.m15150c())) {
                this.f37b = i;
                this.f38c = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        /* renamed from: a */
        public static MediaItem m15190a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new MediaItem(MediaDescriptionCompat.m15152a(C0030a.C0033c.m15123a(obj)), C0030a.C0033c.m15122b(obj));
        }

        /* renamed from: b */
        public static List<MediaItem> m15189b(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m15190a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f37b + ", mDescription=" + this.f38c + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f37b);
            this.f38c.writeToParcel(parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static class HandlerC0013a extends Handler {

        /* renamed from: a */
        private final WeakReference<AbstractC0019j> f39a;

        /* renamed from: b */
        private WeakReference<Messenger> f40b;

        HandlerC0013a(AbstractC0019j jVar) {
            this.f39a = new WeakReference<>(jVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void m15186a(Messenger messenger) {
            this.f40b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f40b;
            if (weakReference != null && weakReference.get() != null && this.f39a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.m15086a(data);
                AbstractC0019j jVar = this.f39a.get();
                Messenger messenger = this.f40b.get();
                try {
                    int i = message.what;
                    if (i == 1) {
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.m15086a(bundle);
                        jVar.m15169f(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                    } else if (i == 2) {
                        jVar.m15170d(messenger);
                    } else if (i != 3) {
                        Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.m15086a(bundle2);
                        Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                        MediaSessionCompat.m15086a(bundle3);
                        jVar.m15168g(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        jVar.m15170d(messenger);
                    }
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class C0014b {

        /* renamed from: a */
        final Object f41a;

        /* renamed from: b */
        AbstractC0015a f42b;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        interface AbstractC0015a {
            /* renamed from: a */
            void m15181a();

            /* renamed from: b */
            void m15180b();

            /* renamed from: c */
            void m15179c();
        }

        public C0014b() {
            this.f41a = Build.VERSION.SDK_INT >= 21 ? C0030a.m15131c(new b(this)) : null;
        }

        /* renamed from: a */
        public void m15185a() {
            throw null;
        }

        /* renamed from: b */
        public void m15184b() {
            throw null;
        }

        /* renamed from: c */
        public void m15183c() {
            throw null;
        }

        /* renamed from: d */
        void m15182d(AbstractC0015a aVar) {
            this.f42b = aVar;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0016c {
        /* renamed from: a */
        public abstract void m15178a(String str, Bundle bundle, Bundle bundle2);

        /* renamed from: b */
        public abstract void m15177b(String str, Bundle bundle, Bundle bundle2);

        /* renamed from: c */
        public abstract void m15176c(String str, Bundle bundle, Bundle bundle2);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    public static abstract class AbstractC0017d {
        /* renamed from: a */
        public abstract void m15175a(String str);

        /* renamed from: b */
        public abstract void m15174b(MediaItem mediaItem);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    interface AbstractC0018e {
        /* renamed from: e */
        MediaSessionCompat.Token m15173e();

        /* renamed from: h */
        void m15172h();

        /* renamed from: i */
        void m15171i();
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    interface AbstractC0019j {
        /* renamed from: d */
        void m15170d(Messenger messenger);

        /* renamed from: f */
        void m15169f(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: g */
        void m15168g(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$k */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    public static abstract class AbstractC0020k {
        /* renamed from: a */
        public abstract void m15167a(String str, Bundle bundle);

        /* renamed from: b */
        public abstract void m15166b(String str, Bundle bundle, List<MediaItem> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$l */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static class C0021l {

        /* renamed from: a */
        private Messenger f43a;

        /* renamed from: b */
        private Bundle f44b;

        public C0021l(IBinder iBinder, Bundle bundle) {
            this.f43a = new Messenger(iBinder);
            this.f44b = bundle;
        }

        /* renamed from: e */
        private void m15161e(int i, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f43a.send(obtain);
        }

        /* renamed from: a */
        void m15165a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            C0247e.m13652b(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            m15161e(3, bundle2, messenger);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public void m15164b(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f44b);
            m15161e(1, bundle, messenger);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public void m15163c(Messenger messenger) {
            m15161e(2, null, messenger);
        }

        /* renamed from: d */
        void m15162d(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f44b);
            m15161e(6, bundle, messenger);
        }

        /* renamed from: f */
        void m15160f(Messenger messenger) {
            m15161e(7, null, messenger);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$m */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$m.class */
    private static class C0022m {

        /* renamed from: a */
        private final List<AbstractC0023n> f45a = new ArrayList();

        /* renamed from: b */
        private final List<Bundle> f46b = new ArrayList();

        /* renamed from: a */
        public AbstractC0023n m15159a(Bundle bundle) {
            for (int i = 0; i < this.f46b.size(); i++) {
                if (C0391d.m12914a(this.f46b.get(i), bundle)) {
                    return this.f45a.get(i);
                }
            }
            return null;
        }

        /* renamed from: b */
        public List<AbstractC0023n> m15158b() {
            return this.f45a;
        }

        /* renamed from: c */
        public List<Bundle> m15157c() {
            return this.f46b;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$n */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n.class */
    public static abstract class AbstractC0023n {

        /* renamed from: a */
        final Object f47a;

        /* renamed from: b */
        final IBinder f48b = new Binder();

        /* renamed from: c */
        WeakReference<C0022m> f49c;

        public AbstractC0023n() {
            Object d;
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                d = C0036b.m15119a(new b(this));
            } else if (i >= 21) {
                d = C0030a.m15130d(new a(this));
            } else {
                return;
            }
            this.f47a = d;
        }

        /* renamed from: a */
        public void m15156a(String str, List<MediaItem> list) {
        }

        /* renamed from: b */
        public void m15155b(String str, List<MediaItem> list, Bundle bundle) {
        }

        /* renamed from: c */
        public void m15154c(String str) {
        }

        /* renamed from: d */
        public void m15153d(String str, Bundle bundle) {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, C0014b bVar, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        this.f36a = i >= 26 ? new h(context, componentName, bVar, bundle) : i >= 23 ? new g(context, componentName, bVar, bundle) : i >= 21 ? new f(context, componentName, bVar, bundle) : new i(context, componentName, bVar, bundle);
    }

    /* renamed from: a */
    public void m15195a() {
        this.f36a.m15171i();
    }

    /* renamed from: b */
    public void m15194b() {
        this.f36a.m15172h();
    }

    /* renamed from: c */
    public MediaSessionCompat.Token m15193c() {
        return this.f36a.m15173e();
    }
}
