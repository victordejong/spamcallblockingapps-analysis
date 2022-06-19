package android.support.p001v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.session.C0059d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0047a();

        /* renamed from: b */
        private final MediaDescriptionCompat f87b;

        /* renamed from: c */
        private final long f88c;

        /* renamed from: d */
        private Object f89d;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem$a.class */
        static final class C0047a implements Parcelable.Creator<QueueItem> {
            C0047a() {
            }

            /* renamed from: a */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* renamed from: b */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        QueueItem(Parcel parcel) {
            this.f87b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f88c = parcel.readLong();
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat != null) {
                if (j == -1) {
                    throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
                }
                this.f87b = mediaDescriptionCompat;
                this.f88c = j;
                this.f89d = obj;
                return;
            }
            throw new IllegalArgumentException("Description cannot be null.");
        }

        /* renamed from: a */
        public static QueueItem m15085a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.m15152a(C0059d.C0060a.m15032a(obj)), C0059d.C0060a.m15031b(obj));
        }

        /* renamed from: b */
        public static List<QueueItem> m15084b(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m15085a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f87b + ", Id=" + this.f88c + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f87b.writeToParcel(parcel, i);
            parcel.writeLong(this.f88c);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0048a();

        /* renamed from: b */
        ResultReceiver f90b;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$a.class */
        static final class C0048a implements Parcelable.Creator<ResultReceiverWrapper> {
            C0048a() {
            }

            /* renamed from: a */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* renamed from: b */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f90b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f90b.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0049a();

        /* renamed from: b */
        private final Object f91b;

        /* renamed from: c */
        private AbstractC0054b f92c;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token$a.class */
        static final class C0049a implements Parcelable.Creator<Token> {
            C0049a() {
            }

            /* renamed from: a */
            public Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            /* renamed from: b */
            public Token[] newArray(int i) {
                return new Token[i];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, AbstractC0054b abstractC0054b) {
            this(obj, abstractC0054b, null);
        }

        Token(Object obj, AbstractC0054b abstractC0054b, Bundle bundle) {
            this.f91b = obj;
            this.f92c = abstractC0054b;
        }

        /* renamed from: a */
        public static Token m15079a(Object obj) {
            return m15078b(obj, null);
        }

        /* renamed from: b */
        public static Token m15078b(Object obj, AbstractC0054b abstractC0054b) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            C0059d.m15033a(obj);
            return new Token(obj, abstractC0054b);
        }

        /* renamed from: c */
        public AbstractC0054b m15077c() {
            return this.f92c;
        }

        /* renamed from: d */
        public Object m15076d() {
            return this.f91b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public void m15075e(AbstractC0054b abstractC0054b) {
            this.f92c = abstractC0054b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Object obj2 = this.f91b;
            Object obj3 = ((Token) obj).f91b;
            if (obj2 == null) {
                if (obj3 != null) {
                    z = false;
                }
                return z;
            } else if (obj3 != null) {
                return obj2.equals(obj3);
            } else {
                return false;
            }
        }

        /* renamed from: f */
        public void m15074f(Bundle bundle) {
        }

        public int hashCode() {
            Object obj = this.f91b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f91b, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f91b);
            }
        }
    }

    /* renamed from: a */
    public static void m15086a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }
}
