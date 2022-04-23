package androidx.media2.session;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.Rating;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.ParcelImpl;
import androidx.versionedparcelable.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/s.class */
public final class s {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f5099c;

    /* renamed from: a  reason: collision with root package name */
    public static final MediaBrowserServiceCompat.a f5097a = new MediaBrowserServiceCompat.a("androidx.media2.session.MediaLibraryService", null);

    /* renamed from: b  reason: collision with root package name */
    public static final Executor f5098b = new Executor() { // from class: androidx.media2.session.s.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, String> f5100d = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        f5099c = hashMap;
        hashMap.put(MediaMetadataCompat.METADATA_KEY_ADVERTISEMENT, "androidx.media2.metadata.ADVERTISEMENT");
        hashMap.put(MediaMetadataCompat.METADATA_KEY_BT_FOLDER_TYPE, "androidx.media2.metadata.BROWSABLE");
        hashMap.put(MediaMetadataCompat.METADATA_KEY_DOWNLOAD_STATUS, "androidx.media2.metadata.DOWNLOAD_STATUS");
        for (Map.Entry entry : hashMap.entrySet()) {
            Map<String, String> map = f5100d;
            if (!map.containsKey(entry.getValue())) {
                map.put((String) entry.getValue(), (String) entry.getKey());
            } else {
                throw new RuntimeException("Shouldn't map to the same value");
            }
        }
    }

    private s() {
    }

    public static int a(int i, int i2) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return 7;
        }
        return i2 != 2 ? 3 : 6;
    }

    public static int a(PlaybackStateCompat playbackStateCompat) {
        if (playbackStateCompat == null) {
            return 0;
        }
        switch (playbackStateCompat.getState()) {
            case 0:
                return 0;
            case 1:
            case 2:
            case 6:
                return 1;
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
            case 11:
                return 2;
            case 7:
            default:
                return 3;
        }
    }

    public static long a(int i) {
        if (i == -1) {
            return -1L;
        }
        return i;
    }

    public static Bundle a(MediaLibraryService.LibraryParams libraryParams) {
        if (libraryParams == null) {
            return null;
        }
        Bundle bundle = libraryParams.f4515a == null ? new Bundle() : new Bundle(libraryParams.f4515a);
        bundle.putBoolean("android.service.media.extra.RECENT", MediaLibraryService.LibraryParams.a(libraryParams.f4516b));
        bundle.putBoolean("android.service.media.extra.OFFLINE", MediaLibraryService.LibraryParams.a(libraryParams.f4517c));
        bundle.putBoolean("android.service.media.extra.SUGGESTED", MediaLibraryService.LibraryParams.a(libraryParams.f4518d));
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x029e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x028b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaMetadataCompat a(androidx.media2.common.MediaMetadata r5) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.s.a(androidx.media2.common.MediaMetadata):android.support.v4.media.MediaMetadataCompat");
    }

    public static MediaItem a(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat == null) {
            return null;
        }
        MediaMetadata.a a2 = new MediaMetadata.a().a("androidx.media2.metadata.PLAYABLE", 1L);
        for (String str : mediaMetadataCompat.keySet()) {
            Object obj = mediaMetadataCompat.getBundle().get(str);
            Map<String, String> map = f5099c;
            String str2 = map.containsKey(str) ? map.get(str) : str;
            if (obj instanceof CharSequence) {
                a2.a(str2, (CharSequence) obj);
            } else if (obj instanceof Bitmap) {
                a2.a(str2, (Bitmap) obj);
            } else if (obj instanceof Long) {
                a2.a(str2, ((Long) obj).longValue());
            } else if ((obj instanceof RatingCompat) || (Build.VERSION.SDK_INT >= 19 && (obj instanceof Rating))) {
                try {
                    androidx.media2.common.Rating a3 = a(mediaMetadataCompat.getRating(str));
                    if (str2 != null) {
                        if (MediaMetadata.f2743a.containsKey(str2) && MediaMetadata.f2743a.get(str2).intValue() != 3) {
                            throw new IllegalArgumentException("The " + str2 + " key cannot be used to put a Rating");
                        }
                        a.a(a2.f2749a, str2, a3);
                    } else {
                        throw new NullPointerException("key shouldn't be null");
                    }
                } catch (Exception e) {
                }
            }
        }
        return new MediaItem.a().a(a2.a()).a();
    }

    public static MediaItem a(MediaItem mediaItem) {
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem != null) {
            mediaItem2 = mediaItem.getClass() == MediaItem.class ? mediaItem : new MediaItem.a().b(mediaItem.e).a(mediaItem.f).a(mediaItem.d()).a();
        }
        return mediaItem2;
    }

    public static MediaMetadata a(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return new MediaMetadata.a().a(MediaMetadataCompat.METADATA_KEY_TITLE, charSequence.toString()).a("androidx.media2.metadata.BROWSABLE", 0L).a("androidx.media2.metadata.PLAYABLE", 1L).a();
    }

    public static androidx.media2.common.Rating a(RatingCompat ratingCompat) {
        if (ratingCompat == null) {
            return null;
        }
        switch (ratingCompat.getRatingStyle()) {
            case 1:
                return ratingCompat.isRated() ? new HeartRating(ratingCompat.hasHeart()) : new HeartRating();
            case 2:
                return ratingCompat.isRated() ? new ThumbRating(ratingCompat.isThumbUp()) : new ThumbRating();
            case 3:
                return ratingCompat.isRated() ? new StarRating(3, ratingCompat.getStarRating()) : new StarRating(3);
            case 4:
                return ratingCompat.isRated() ? new StarRating(4, ratingCompat.getStarRating()) : new StarRating(4);
            case 5:
                return ratingCompat.isRated() ? new StarRating(5, ratingCompat.getStarRating()) : new StarRating(5);
            case 6:
                return ratingCompat.isRated() ? new PercentageRating(ratingCompat.getPercentRating()) : new PercentageRating();
            default:
                return null;
        }
    }

    public static SessionPlayer.TrackInfo a(SessionPlayer.TrackInfo trackInfo) {
        return (trackInfo == null || trackInfo.getClass() == SessionPlayer.TrackInfo.class) ? trackInfo : new SessionPlayer.TrackInfo(trackInfo.f2754a, trackInfo.f2755b, trackInfo.a(), trackInfo.f2757d);
    }

    public static VideoSize a(VideoSize videoSize) {
        return (videoSize == null || videoSize.getClass() == VideoSize.class) ? videoSize : new VideoSize(videoSize.f2770a, videoSize.f2771b);
    }

    public static MediaController.PlaybackInfo a(MediaControllerCompat.d dVar) {
        return MediaController.PlaybackInfo.a(dVar.f440a, new AudioAttributesCompat.a().c(dVar.f441b.b()).a(), dVar.f442c, dVar.f443d, dVar.e);
    }

    public static MediaLibraryService.LibraryParams a(Context context, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        try {
            bundle.setClassLoader(context.getClassLoader());
            MediaLibraryService.LibraryParams.a aVar = new MediaLibraryService.LibraryParams.a();
            aVar.f4522d = bundle;
            aVar.f4519a = bundle.getBoolean("android.service.media.extra.RECENT");
            aVar.f4520b = bundle.getBoolean("android.service.media.extra.OFFLINE");
            aVar.f4521c = bundle.getBoolean("android.service.media.extra.SUGGESTED");
            return aVar.a();
        } catch (Exception e) {
            MediaLibraryService.LibraryParams.a aVar2 = new MediaLibraryService.LibraryParams.a();
            aVar2.f4522d = bundle;
            return aVar2.a();
        }
    }

    public static SessionCommandGroup a(long j, PlaybackStateCompat playbackStateCompat) {
        SessionCommandGroup.a aVar = new SessionCommandGroup.a();
        aVar.c(1);
        if ((j & 4) != 0) {
            aVar.d(1);
        }
        aVar.e(1);
        aVar.f(1);
        aVar.b(new SessionCommand(10004));
        aVar.b(new SessionCommand(11000));
        aVar.b(new SessionCommand(11001));
        aVar.b(new SessionCommand(11002));
        if (!(playbackStateCompat == null || playbackStateCompat.getCustomActions() == null)) {
            for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
                aVar.a(new SessionCommand(customAction.getAction(), customAction.getExtras()));
            }
        }
        return aVar.a();
    }

    public static List<MediaItem> a(ParcelImplListSlice parcelImplListSlice) {
        if (parcelImplListSlice == null) {
            return null;
        }
        List<ParcelImpl> list = parcelImplListSlice.getList();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ParcelImpl parcelImpl = list.get(i);
            if (parcelImpl != null) {
                arrayList.add((MediaItem) a.a(parcelImpl));
            }
        }
        return arrayList;
    }

    public static List<SessionPlayer.TrackInfo> a(List<SessionPlayer.TrackInfo> list) {
        if (list == null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(a(list.get(i)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeBundle(bundle);
            obtain.setDataPosition(0);
            Bundle readBundle = obtain.readBundle(null);
            if (readBundle != null) {
                readBundle.isEmpty();
            }
            obtain.recycle();
            return false;
        } catch (BadParcelableException e) {
            obtain.recycle();
            return true;
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    public static int b(int i) {
        if (i != 3) {
            return i != 6 ? 0 : 2;
        }
        return 3;
    }

    public static MediaBrowserCompat.MediaItem b(MediaItem mediaItem) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (mediaItem == null) {
            return null;
        }
        MediaMetadata d2 = mediaItem.d();
        int i = 0;
        int i2 = 0;
        if (d2 == null) {
            MediaDescriptionCompat.a aVar = new MediaDescriptionCompat.a();
            aVar.f418a = mediaItem.f();
            mediaDescriptionCompat = aVar.a();
        } else {
            MediaDescriptionCompat.a aVar2 = new MediaDescriptionCompat.a();
            aVar2.f418a = mediaItem.f();
            aVar2.f420c = d2.b(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE);
            aVar2.f421d = d2.b(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION);
            aVar2.e = d2.f(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON);
            aVar2.g = d2.a();
            String c2 = d2.c(MediaMetadataCompat.METADATA_KEY_TITLE);
            if (c2 != null) {
                aVar2.f419b = c2;
            } else {
                aVar2.f419b = d2.c(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
            }
            String c3 = d2.c(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
            if (c3 != null) {
                aVar2.f = Uri.parse(c3);
            }
            String c4 = d2.c(MediaMetadataCompat.METADATA_KEY_MEDIA_URI);
            if (c4 != null) {
                aVar2.h = Uri.parse(c4);
            }
            mediaDescriptionCompat = aVar2.a();
            boolean z = true;
            int i3 = (!d2.a("androidx.media2.metadata.BROWSABLE") || d2.d("androidx.media2.metadata.BROWSABLE") == -1) ? 0 : 1;
            if (d2.d("androidx.media2.metadata.PLAYABLE") == 0) {
                z = false;
            }
            if (z) {
                i2 = 2;
            }
            i = i2 | i3;
        }
        return new MediaBrowserCompat.MediaItem(mediaDescriptionCompat, i);
    }

    public static List<MediaSession.CommandButton> b(PlaybackStateCompat playbackStateCompat) {
        ArrayList arrayList = new ArrayList();
        if (playbackStateCompat == null) {
            return arrayList;
        }
        for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
            MediaSession.CommandButton.a aVar = new MediaSession.CommandButton.a();
            aVar.f4530a = new SessionCommand(customAction.getAction(), customAction.getExtras());
            aVar.f4532c = customAction.getName();
            aVar.e = true;
            aVar.f4531b = customAction.getIcon();
            arrayList.add(new MediaSession.CommandButton(aVar.f4530a, aVar.f4531b, aVar.f4532c, aVar.f4533d, aVar.e));
        }
        return arrayList;
    }

    public static List<MediaBrowserCompat.MediaItem> b(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(b(list.get(i)));
        }
        return arrayList;
    }

    public static List<MediaItem> c(List<MediaSessionCompat.QueueItem> list) {
        MediaItem mediaItem;
        MediaMetadata mediaMetadata;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaSessionCompat.QueueItem queueItem = list.get(i);
            if (queueItem == null) {
                mediaItem = null;
            } else {
                MediaDescriptionCompat description = queueItem.getDescription();
                if (description == null) {
                    mediaMetadata = null;
                } else {
                    MediaMetadata.a aVar = new MediaMetadata.a();
                    aVar.a(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, description.getMediaId());
                    CharSequence title = description.getTitle();
                    if (title != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, title);
                    }
                    if (description.getDescription() != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION, description.getDescription());
                    }
                    CharSequence subtitle = description.getSubtitle();
                    if (subtitle != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, subtitle);
                    }
                    Bitmap iconBitmap = description.getIconBitmap();
                    if (iconBitmap != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, iconBitmap);
                    }
                    Uri iconUri = description.getIconUri();
                    if (iconUri != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI, (CharSequence) iconUri.toString());
                    }
                    Bundle extras = description.getExtras();
                    if (extras != null) {
                        aVar.f2749a.putBundle("androidx.media2.metadata.EXTRAS", extras);
                    }
                    Uri mediaUri = description.getMediaUri();
                    if (mediaUri != null) {
                        aVar.a(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, (CharSequence) mediaUri.toString());
                    }
                    if (extras == null || !extras.containsKey(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE)) {
                        aVar.a("androidx.media2.metadata.BROWSABLE", -1L);
                    } else {
                        aVar.a("androidx.media2.metadata.BROWSABLE", extras.getLong(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE));
                    }
                    aVar.a("androidx.media2.metadata.PLAYABLE", 1L);
                    mediaMetadata = aVar.a();
                }
                mediaItem = new MediaItem.a().a(mediaMetadata).a();
            }
            if (mediaItem != null) {
                arrayList.add(mediaItem);
            }
        }
        return arrayList;
    }

    public static List<MediaSessionCompat.QueueItem> d(List<MediaItem> list) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem.d() == null) {
                MediaDescriptionCompat.a aVar = new MediaDescriptionCompat.a();
                aVar.f418a = mediaItem.f();
                mediaDescriptionCompat = aVar.a();
            } else {
                mediaDescriptionCompat = a(mediaItem.d()).getDescription();
            }
            arrayList.add(new MediaSessionCompat.QueueItem(mediaDescriptionCompat, a(i)));
        }
        return arrayList;
    }

    public static <T extends Parcelable> List<T> e(List<T> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Parcel obtain = Parcel.obtain();
        for (int i = 0; i < list.size(); i++) {
            try {
                T t = list.get(i);
                obtain.writeParcelable(t, 0);
                if (obtain.dataSize() >= 262144) {
                    break;
                }
                arrayList.add(t);
            } finally {
                obtain.recycle();
            }
        }
        return arrayList;
    }

    public static ParcelImplListSlice f(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem != null) {
                arrayList.add(MediaParcelUtils.a(mediaItem));
            }
        }
        return new ParcelImplListSlice(arrayList);
    }

    public static <T> List<T> g(List<T> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }
}
