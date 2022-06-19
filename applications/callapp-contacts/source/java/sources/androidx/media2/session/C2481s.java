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
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.MediaDescriptionCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.RatingCompat;
import android.support.p008v4.media.session.MediaControllerCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.media.session.PlaybackStateCompat;
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
import androidx.versionedparcelable.C2920a;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: androidx.media2.session.s */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/s.class */
public final class C2481s {

    /* renamed from: c */
    private static final Map<String, String> f9445c;

    /* renamed from: a */
    public static final MediaBrowserServiceCompat.C1296a f9443a = new MediaBrowserServiceCompat.C1296a("androidx.media2.session.MediaLibraryService", null);

    /* renamed from: b */
    public static final Executor f9444b = new Executor() { // from class: androidx.media2.session.s.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: d */
    private static final Map<String, String> f9446d = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        f9445c = hashMap;
        hashMap.put(MediaMetadataCompat.METADATA_KEY_ADVERTISEMENT, "androidx.media2.metadata.ADVERTISEMENT");
        hashMap.put(MediaMetadataCompat.METADATA_KEY_BT_FOLDER_TYPE, "androidx.media2.metadata.BROWSABLE");
        hashMap.put(MediaMetadataCompat.METADATA_KEY_DOWNLOAD_STATUS, "androidx.media2.metadata.DOWNLOAD_STATUS");
        for (Map.Entry entry : hashMap.entrySet()) {
            Map<String, String> map = f9446d;
            if (map.containsKey(entry.getValue())) {
                throw new RuntimeException("Shouldn't map to the same value");
            }
            map.put((String) entry.getValue(), (String) entry.getKey());
        }
    }

    private C2481s() {
    }

    /* renamed from: a */
    public static int m40806a(int i, int i2) {
        if (i != 0) {
            if (i == 1) {
                return 2;
            }
            if (i != 2) {
                return 7;
            }
            return i2 != 2 ? 3 : 6;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m40799a(PlaybackStateCompat playbackStateCompat) {
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

    /* renamed from: a */
    public static long m40807a(int i) {
        if (i == -1) {
            return -1L;
        }
        return i;
    }

    /* renamed from: a */
    public static Bundle m40793a(MediaLibraryService.LibraryParams libraryParams) {
        if (libraryParams == null) {
            return null;
        }
        Bundle bundle = libraryParams.f8720a == null ? new Bundle() : new Bundle(libraryParams.f8720a);
        bundle.putBoolean("android.service.media.extra.RECENT", MediaLibraryService.LibraryParams.m41139a(libraryParams.f8721b));
        bundle.putBoolean("android.service.media.extra.OFFLINE", MediaLibraryService.LibraryParams.m41139a(libraryParams.f8722c));
        bundle.putBoolean("android.service.media.extra.SUGGESTED", MediaLibraryService.LibraryParams.m41139a(libraryParams.f8723d));
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x029e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x028b A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.p008v4.media.MediaMetadataCompat m40797a(androidx.media2.common.MediaMetadata r5) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.C2481s.m40797a(androidx.media2.common.MediaMetadata):android.support.v4.media.MediaMetadataCompat");
    }

    /* renamed from: a */
    public static MediaItem m40802a(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat == null) {
            return null;
        }
        MediaMetadata.C1348a m43190a = new MediaMetadata.C1348a().m43190a("androidx.media2.metadata.PLAYABLE", 1L);
        for (String str : mediaMetadataCompat.keySet()) {
            Object obj = mediaMetadataCompat.getBundle().get(str);
            Map<String, String> map = f9445c;
            String str2 = map.containsKey(str) ? map.get(str) : str;
            if (obj instanceof CharSequence) {
                m43190a.m43188a(str2, (CharSequence) obj);
            } else if (obj instanceof Bitmap) {
                m43190a.m43189a(str2, (Bitmap) obj);
            } else if (obj instanceof Long) {
                m43190a.m43190a(str2, ((Long) obj).longValue());
            } else if ((obj instanceof RatingCompat) || (Build.VERSION.SDK_INT >= 19 && (obj instanceof Rating))) {
                try {
                    androidx.media2.common.Rating m40801a = m40801a(mediaMetadataCompat.getRating(str));
                    if (str2 == null) {
                        throw new NullPointerException("key shouldn't be null");
                    }
                    if (MediaMetadata.f5037a.containsKey(str2) && MediaMetadata.f5037a.get(str2).intValue() != 3) {
                        throw new IllegalArgumentException("The " + str2 + " key cannot be used to put a Rating");
                    }
                    C2920a.m39629a(m43190a.f5043a, str2, m40801a);
                } catch (Exception e) {
                }
            }
        }
        return new MediaItem.C1346a().mo43175a(m43190a.m43191a()).mo43177a();
    }

    /* renamed from: a */
    public static MediaItem m40798a(MediaItem mediaItem) {
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem != null) {
            mediaItem2 = mediaItem.getClass() == MediaItem.class ? mediaItem : new MediaItem.C1346a().mo43173b(mediaItem.f5029e).mo43176a(mediaItem.f5030f).mo43175a(mediaItem.m43200d()).mo43177a();
        }
        return mediaItem2;
    }

    /* renamed from: a */
    public static MediaMetadata m40792a(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return new MediaMetadata.C1348a().m43187a(MediaMetadataCompat.METADATA_KEY_TITLE, charSequence.toString()).m43190a("androidx.media2.metadata.BROWSABLE", 0L).m43190a("androidx.media2.metadata.PLAYABLE", 1L).m43191a();
    }

    /* renamed from: a */
    public static androidx.media2.common.Rating m40801a(RatingCompat ratingCompat) {
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

    /* renamed from: a */
    public static SessionPlayer.TrackInfo m40795a(SessionPlayer.TrackInfo trackInfo) {
        return (trackInfo == null || trackInfo.getClass() == SessionPlayer.TrackInfo.class) ? trackInfo : new SessionPlayer.TrackInfo(trackInfo.f5048a, trackInfo.f5049b, trackInfo.mo41325a(), trackInfo.f5051d);
    }

    /* renamed from: a */
    public static VideoSize m40794a(VideoSize videoSize) {
        return (videoSize == null || videoSize.getClass() == VideoSize.class) ? videoSize : new VideoSize(videoSize.f5066a, videoSize.f5067b);
    }

    /* renamed from: a */
    public static MediaController.PlaybackInfo m40800a(MediaControllerCompat.C0056d c0056d) {
        return MediaController.PlaybackInfo.m41141a(c0056d.f97a, new AudioAttributesCompat.C1287a().m43259c(c0056d.f98b.m43266b()).m43262a(), c0056d.f99c, c0056d.f100d, c0056d.f101e);
    }

    /* renamed from: a */
    public static MediaLibraryService.LibraryParams m40804a(Context context, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        try {
            bundle.setClassLoader(context.getClassLoader());
            MediaLibraryService.LibraryParams.C2203a c2203a = new MediaLibraryService.LibraryParams.C2203a();
            c2203a.f8727d = bundle;
            c2203a.f8724a = bundle.getBoolean("android.service.media.extra.RECENT");
            c2203a.f8725b = bundle.getBoolean("android.service.media.extra.OFFLINE");
            c2203a.f8726c = bundle.getBoolean("android.service.media.extra.SUGGESTED");
            return c2203a.m41138a();
        } catch (Exception e) {
            MediaLibraryService.LibraryParams.C2203a c2203a2 = new MediaLibraryService.LibraryParams.C2203a();
            c2203a2.f8727d = bundle;
            return c2203a2.m41138a();
        }
    }

    /* renamed from: a */
    public static SessionCommandGroup m40805a(long j, PlaybackStateCompat playbackStateCompat) {
        SessionCommandGroup.C2213a c2213a = new SessionCommandGroup.C2213a();
        c2213a.m41123c(1);
        if ((j & 4) != 0) {
            c2213a.m41122d(1);
        }
        c2213a.m41121e(1);
        c2213a.m41120f(1);
        c2213a.m41124b(new SessionCommand(10004));
        c2213a.m41124b(new SessionCommand(11000));
        c2213a.m41124b(new SessionCommand(11001));
        c2213a.m41124b(new SessionCommand(11002));
        if (playbackStateCompat != null && playbackStateCompat.getCustomActions() != null) {
            for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
                c2213a.m41126a(new SessionCommand(customAction.getAction(), customAction.getExtras()));
            }
        }
        return c2213a.m41129a();
    }

    /* renamed from: a */
    public static List<MediaItem> m40796a(ParcelImplListSlice parcelImplListSlice) {
        if (parcelImplListSlice == null) {
            return null;
        }
        List<ParcelImpl> list = parcelImplListSlice.getList();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ParcelImpl parcelImpl = list.get(i);
            if (parcelImpl != null) {
                arrayList.add((MediaItem) C2920a.m39628a(parcelImpl));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<SessionPlayer.TrackInfo> m40791a(List<SessionPlayer.TrackInfo> list) {
        if (list == null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(m40795a(list.get(i)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m40803a(Bundle bundle) {
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

    /* renamed from: b */
    public static int m40790b(int i) {
        if (i != 3) {
            return i != 6 ? 0 : 2;
        }
        return 3;
    }

    /* renamed from: b */
    public static MediaBrowserCompat.MediaItem m40788b(MediaItem mediaItem) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (mediaItem == null) {
            return null;
        }
        MediaMetadata m43200d = mediaItem.m43200d();
        int i = 0;
        int i2 = 0;
        if (m43200d == null) {
            MediaDescriptionCompat.C0045a c0045a = new MediaDescriptionCompat.C0045a();
            c0045a.f69a = mediaItem.m43199f();
            mediaDescriptionCompat = c0045a.m46576a();
        } else {
            MediaDescriptionCompat.C0045a c0045a2 = new MediaDescriptionCompat.C0045a();
            c0045a2.f69a = mediaItem.m43199f();
            c0045a2.f71c = m43200d.m43196b(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE);
            c0045a2.f72d = m43200d.m43196b(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION);
            c0045a2.f73e = m43200d.m43192f(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON);
            c0045a2.f75g = m43200d.m43198a();
            String m43195c = m43200d.m43195c(MediaMetadataCompat.METADATA_KEY_TITLE);
            if (m43195c != null) {
                c0045a2.f70b = m43195c;
            } else {
                c0045a2.f70b = m43200d.m43195c(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
            }
            String m43195c2 = m43200d.m43195c(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
            if (m43195c2 != null) {
                c0045a2.f74f = Uri.parse(m43195c2);
            }
            String m43195c3 = m43200d.m43195c(MediaMetadataCompat.METADATA_KEY_MEDIA_URI);
            if (m43195c3 != null) {
                c0045a2.f76h = Uri.parse(m43195c3);
            }
            mediaDescriptionCompat = c0045a2.m46576a();
            boolean z = true;
            int i3 = (!m43200d.m43197a("androidx.media2.metadata.BROWSABLE") || m43200d.m43194d("androidx.media2.metadata.BROWSABLE") == -1) ? 0 : 1;
            if (m43200d.m43194d("androidx.media2.metadata.PLAYABLE") == 0) {
                z = false;
            }
            if (z) {
                i2 = 2;
            }
            i = i2 | i3;
        }
        return new MediaBrowserCompat.MediaItem(mediaDescriptionCompat, i);
    }

    /* renamed from: b */
    public static List<MediaSession.CommandButton> m40789b(PlaybackStateCompat playbackStateCompat) {
        ArrayList arrayList = new ArrayList();
        if (playbackStateCompat == null) {
            return arrayList;
        }
        for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
            MediaSession.CommandButton.C2207a c2207a = new MediaSession.CommandButton.C2207a();
            c2207a.f8736a = new SessionCommand(customAction.getAction(), customAction.getExtras());
            c2207a.f8738c = customAction.getName();
            c2207a.f8740e = true;
            c2207a.f8737b = customAction.getIcon();
            arrayList.add(new MediaSession.CommandButton(c2207a.f8736a, c2207a.f8737b, c2207a.f8738c, c2207a.f8739d, c2207a.f8740e));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static List<MediaBrowserCompat.MediaItem> m40787b(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(m40788b(list.get(i)));
        }
        return arrayList;
    }

    /* renamed from: c */
    public static List<MediaItem> m40786c(List<MediaSessionCompat.QueueItem> list) {
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
                    MediaMetadata.C1348a c1348a = new MediaMetadata.C1348a();
                    c1348a.m43187a(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, description.getMediaId());
                    CharSequence title = description.getTitle();
                    if (title != null) {
                        c1348a.m43188a(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, title);
                    }
                    if (description.getDescription() != null) {
                        c1348a.m43188a(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION, description.getDescription());
                    }
                    CharSequence subtitle = description.getSubtitle();
                    if (subtitle != null) {
                        c1348a.m43188a(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, subtitle);
                    }
                    Bitmap iconBitmap = description.getIconBitmap();
                    if (iconBitmap != null) {
                        c1348a.m43189a(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, iconBitmap);
                    }
                    Uri iconUri = description.getIconUri();
                    if (iconUri != null) {
                        c1348a.m43188a(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI, (CharSequence) iconUri.toString());
                    }
                    Bundle extras = description.getExtras();
                    if (extras != null) {
                        c1348a.f5043a.putBundle("androidx.media2.metadata.EXTRAS", extras);
                    }
                    Uri mediaUri = description.getMediaUri();
                    if (mediaUri != null) {
                        c1348a.m43188a(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, (CharSequence) mediaUri.toString());
                    }
                    if (extras == null || !extras.containsKey(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE)) {
                        c1348a.m43190a("androidx.media2.metadata.BROWSABLE", -1L);
                    } else {
                        c1348a.m43190a("androidx.media2.metadata.BROWSABLE", extras.getLong(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE));
                    }
                    c1348a.m43190a("androidx.media2.metadata.PLAYABLE", 1L);
                    mediaMetadata = c1348a.m43191a();
                }
                mediaItem = new MediaItem.C1346a().mo43175a(mediaMetadata).mo43177a();
            }
            if (mediaItem != null) {
                arrayList.add(mediaItem);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static List<MediaSessionCompat.QueueItem> m40785d(List<MediaItem> list) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem.m43200d() == null) {
                MediaDescriptionCompat.C0045a c0045a = new MediaDescriptionCompat.C0045a();
                c0045a.f69a = mediaItem.m43199f();
                mediaDescriptionCompat = c0045a.m46576a();
            } else {
                mediaDescriptionCompat = m40797a(mediaItem.m43200d()).getDescription();
            }
            arrayList.add(new MediaSessionCompat.QueueItem(mediaDescriptionCompat, m40807a(i)));
        }
        return arrayList;
    }

    /* renamed from: e */
    public static <T extends Parcelable> List<T> m40784e(List<T> list) {
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

    /* renamed from: f */
    public static ParcelImplListSlice m40783f(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem != null) {
                arrayList.add(MediaParcelUtils.m43186a(mediaItem));
            }
        }
        return new ParcelImplListSlice(arrayList);
    }

    /* renamed from: g */
    public static <T> List<T> m40782g(List<T> list) {
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
