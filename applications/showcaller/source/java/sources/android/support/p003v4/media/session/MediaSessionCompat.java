package android.support.p003v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.p003v4.media.MediaDescriptionCompat;
import android.support.p003v4.media.session.C0066d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0051a();

        /* renamed from: d */
        private final MediaDescriptionCompat f99d;

        /* renamed from: e */
        private final long f100e;

        /* renamed from: f */
        private Object f101f;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem$a.class */
        static final class C0051a implements Parcelable.Creator<QueueItem> {
            C0051a() {
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
            this.f99d = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f100e = parcel.readLong();
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat != null) {
                if (j == -1) {
                    throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
                }
                this.f99d = mediaDescriptionCompat;
                this.f100e = j;
                this.f101f = obj;
                return;
            }
            throw new IllegalArgumentException("Description cannot be null.");
        }

        /* renamed from: a */
        public static QueueItem m35841a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.m35896a(C0066d.C0067a.m35788a(obj)), C0066d.C0067a.m35787b(obj));
        }

        /* renamed from: b */
        public static List<QueueItem> m35840b(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m35841a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f99d + ", Id=" + this.f100e + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f99d.writeToParcel(parcel, i);
            parcel.writeLong(this.f100e);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0052a();

        /* renamed from: d */
        ResultReceiver f102d;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$a.class */
        static final class C0052a implements Parcelable.Creator<ResultReceiverWrapper> {
            C0052a() {
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
            this.f102d = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f102d.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0053a();

        /* renamed from: d */
        private final Object f103d;

        /* renamed from: e */
        private AbstractC0059b f104e;

        /* renamed from: f */
        private Bundle f105f;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token$a.class */
        static final class C0053a implements Parcelable.Creator<Token> {
            C0053a() {
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

        Token(Object obj, AbstractC0059b abstractC0059b) {
            this(obj, abstractC0059b, null);
        }

        Token(Object obj, AbstractC0059b abstractC0059b, Bundle bundle) {
            this.f103d = obj;
            this.f104e = abstractC0059b;
            this.f105f = bundle;
        }

        /* renamed from: a */
        public static Token m35835a(Object obj) {
            return m35834b(obj, null);
        }

        /* renamed from: b */
        public static Token m35834b(Object obj, AbstractC0059b abstractC0059b) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(C0066d.m35789a(obj), abstractC0059b);
        }

        /* renamed from: c */
        public AbstractC0059b m35833c() {
            return this.f104e;
        }

        /* renamed from: d */
        public Object m35832d() {
            return this.f103d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public void m35831e(AbstractC0059b abstractC0059b) {
            this.f104e = abstractC0059b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f103d;
            if (obj2 == null) {
                if (token.f103d != null) {
                    z = false;
                }
                return z;
            }
            Object obj3 = token.f103d;
            if (obj3 != null) {
                return obj2.equals(obj3);
            }
            return false;
        }

        /* renamed from: f */
        public void m35830f(Bundle bundle) {
            this.f105f = bundle;
        }

        public int hashCode() {
            Object obj = this.f103d;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f103d, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f103d);
            }
        }
    }

    /* renamed from: a */
    public static void m35842a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }
}
