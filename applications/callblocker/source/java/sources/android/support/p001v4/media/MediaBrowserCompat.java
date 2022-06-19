package android.support.p001v4.media;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002a.C0031b;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: a */
    static final boolean f68a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: android.support.v4.media.MediaBrowserCompat$CustomActionResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    private static class CustomActionResultReceiver extends C0031b {

        /* renamed from: d */
        private final String f69d;

        /* renamed from: e */
        private final Bundle f70e;

        /* renamed from: f */
        private final AbstractC0036a f71f;

        @Override // android.support.p001v4.p002a.C0031b
        /* renamed from: a */
        protected void mo22439a(int i, Bundle bundle) {
            if (this.f71f == null) {
                return;
            }
            MediaSessionCompat.m22399a(bundle);
            switch (i) {
                case -1:
                    this.f71f.m22436c(this.f69d, this.f70e, bundle);
                    return;
                case 0:
                    this.f71f.m22437b(this.f69d, this.f70e, bundle);
                    return;
                case 1:
                    this.f71f.m22438a(this.f69d, this.f70e, bundle);
                    return;
                default:
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.f70e + ", resultData=" + bundle + ")");
                    return;
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    private static class ItemReceiver extends C0031b {

        /* renamed from: d */
        private final String f72d;

        /* renamed from: e */
        private final AbstractC0037b f73e;

        @Override // android.support.p001v4.p002a.C0031b
        /* renamed from: a */
        protected void mo22439a(int i, Bundle bundle) {
            MediaSessionCompat.m22399a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.f73e.m22434a(this.f72d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.f73e.m22435a((MediaItem) parcelable);
            } else {
                this.f73e.m22434a(this.f72d);
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            /* renamed from: a */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };

        /* renamed from: a */
        private final int f74a;

        /* renamed from: b */
        private final MediaDescriptionCompat f75b;

        MediaItem(Parcel parcel) {
            this.f74a = parcel.readInt();
            this.f75b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MediaItem{");
            sb.append("mFlags=").append(this.f74a);
            sb.append(", mDescription=").append(this.f75b);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f74a);
            this.f75b.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    private static class SearchResultReceiver extends C0031b {

        /* renamed from: d */
        private final String f76d;

        /* renamed from: e */
        private final Bundle f77e;

        /* renamed from: f */
        private final AbstractC0038c f78f;

        @Override // android.support.p001v4.p002a.C0031b
        /* renamed from: a */
        protected void mo22439a(int i, Bundle bundle) {
            MediaSessionCompat.m22399a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f78f.m22433a(this.f76d, this.f77e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            this.f78f.m22432a(this.f76d, this.f77e, arrayList);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static abstract class AbstractC0036a {
        /* renamed from: a */
        public void m22438a(String str, Bundle bundle, Bundle bundle2) {
        }

        /* renamed from: b */
        public void m22437b(String str, Bundle bundle, Bundle bundle2) {
        }

        /* renamed from: c */
        public void m22436c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static abstract class AbstractC0037b {
        /* renamed from: a */
        public void m22435a(MediaItem mediaItem) {
        }

        /* renamed from: a */
        public void m22434a(String str) {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0038c {
        /* renamed from: a */
        public void m22433a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void m22432a(String str, Bundle bundle, List<MediaItem> list) {
        }
    }
}
