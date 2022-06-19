package android.support.p001v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.p001v4.media.MediaDescriptionCompat;
import androidx.versionedparcelable.AbstractC1083c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            /* renamed from: a */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* renamed from: a */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };

        /* renamed from: a */
        private final MediaDescriptionCompat f121a;

        /* renamed from: b */
        private final long f122b;

        /* renamed from: c */
        private MediaSession.QueueItem f123c;

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.f121a = mediaDescriptionCompat;
            this.f122b = j;
            this.f123c = queueItem;
        }

        QueueItem(Parcel parcel) {
            this.f121a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f122b = parcel.readLong();
        }

        /* renamed from: a */
        public static QueueItem m22398a(Object obj) {
            QueueItem queueItem;
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                queueItem = null;
            } else {
                MediaSession.QueueItem queueItem2 = (MediaSession.QueueItem) obj;
                queueItem = new QueueItem(queueItem2, MediaDescriptionCompat.m22430a(queueItem2.getDescription()), queueItem2.getQueueId());
            }
            return queueItem;
        }

        /* renamed from: a */
        public static List<QueueItem> m22397a(List<?> list) {
            ArrayList arrayList;
            if (list != null && Build.VERSION.SDK_INT >= 21) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<?> it = list.iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    arrayList2.add(m22398a(it.next()));
                }
            } else {
                arrayList = null;
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f121a + ", Id=" + this.f122b + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f121a.writeToParcel(parcel, i);
            parcel.writeLong(this.f122b);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            /* renamed from: a */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* renamed from: a */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };

        /* renamed from: a */
        ResultReceiver f124a;

        ResultReceiverWrapper(Parcel parcel) {
            this.f124a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f124a.writeToParcel(parcel, i);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            /* renamed from: a */
            public Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            /* renamed from: a */
            public Token[] newArray(int i) {
                return new Token[i];
            }
        };

        /* renamed from: a */
        private final Object f125a;

        /* renamed from: b */
        private AbstractC0058b f126b;

        /* renamed from: c */
        private AbstractC1083c f127c;

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, AbstractC0058b abstractC0058b, AbstractC1083c abstractC1083c) {
            this.f125a = obj;
            this.f126b = abstractC0058b;
            this.f127c = abstractC1083c;
        }

        /* renamed from: a */
        public AbstractC0058b m22392a() {
            return this.f126b;
        }

        /* renamed from: a */
        public void m22391a(AbstractC0058b abstractC0058b) {
            this.f126b = abstractC0058b;
        }

        /* renamed from: a */
        public void m22390a(AbstractC1083c abstractC1083c) {
            this.f127c = abstractC1083c;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof Token)) {
                    z = false;
                } else {
                    Token token = (Token) obj;
                    if (this.f125a != null) {
                        z = token.f125a == null ? false : this.f125a.equals(token.f125a);
                    } else if (token.f125a != null) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return this.f125a == null ? 0 : this.f125a.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f125a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f125a);
            }
        }
    }

    /* renamed from: a */
    public static void m22399a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }
}
