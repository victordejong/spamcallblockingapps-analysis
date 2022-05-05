package androidx.media2.session;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.Rating;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.MediaControllerCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media.AudioAttributesCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@VisibleForTesting(otherwise = 3)
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaUtils.class */
public class MediaUtils {
    public static final int CURRENT_VERSION = 0;
    public static final String TAG = "MediaUtils";
    public static final int TRANSACTION_SIZE_LIMIT_IN_BYTES = 262144;
    public static final int VERSION_0 = 0;
    public static final MediaBrowserServiceCompat.BrowserRoot sDefaultBrowserRoot = new MediaBrowserServiceCompat.BrowserRoot(MediaLibraryService.SERVICE_INTERFACE, null);
    public static final Executor DIRECT_EXECUTOR = new Executor() { // from class: androidx.media2.session.MediaUtils.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public static final Map<String, String> METADATA_COMPAT_KEY_TO_METADATA_KEY = new HashMap();
    public static final Map<String, String> METADATA_KEY_TO_METADATA_COMPAT_KEY = new HashMap();

    static {
        METADATA_COMPAT_KEY_TO_METADATA_KEY.put("android.media.metadata.ADVERTISEMENT", MediaMetadata.METADATA_KEY_ADVERTISEMENT);
        METADATA_COMPAT_KEY_TO_METADATA_KEY.put("android.media.metadata.BT_FOLDER_TYPE", MediaMetadata.METADATA_KEY_BROWSABLE);
        METADATA_COMPAT_KEY_TO_METADATA_KEY.put("android.media.metadata.DOWNLOAD_STATUS", MediaMetadata.METADATA_KEY_DOWNLOAD_STATUS);
        for (Map.Entry<String, String> entry : METADATA_COMPAT_KEY_TO_METADATA_KEY.entrySet()) {
            if (!METADATA_KEY_TO_METADATA_COMPAT_KEY.containsKey(entry.getValue())) {
                METADATA_KEY_TO_METADATA_COMPAT_KEY.put(entry.getValue(), entry.getKey());
            } else {
                throw new RuntimeException("Shouldn't map to the same value");
            }
        }
    }

    public static List<ParcelImpl> convertCommandButtonListToParcelImplList(List<MediaSession.CommandButton> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(MediaParcelUtils.toParcelable(list.get(i)));
        }
        return arrayList;
    }

    public static List<MediaItem> convertMediaItemListToMediaItemList(List<MediaBrowserCompat.MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(convertToMediaItem(list.get(i)));
        }
        return arrayList;
    }

    public static ParcelImplListSlice convertMediaItemListToParcelImplListSlice(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem != null) {
                arrayList.add(MediaParcelUtils.toParcelable(mediaItem));
            }
        }
        return new ParcelImplListSlice(arrayList);
    }

    public static List<MediaItem> convertParcelImplListSliceToMediaItemList(ParcelImplListSlice parcelImplListSlice) {
        if (parcelImplListSlice == null) {
            return null;
        }
        List<ParcelImpl> list = parcelImplListSlice.getList();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ParcelImpl parcelImpl = list.get(i);
            if (parcelImpl != null) {
                arrayList.add((MediaItem) MediaParcelUtils.fromParcelable(parcelImpl));
            }
        }
        return arrayList;
    }

    public static List<MediaItem> convertQueueItemListToMediaItemList(List<MediaSessionCompat.QueueItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem convertToMediaItem = convertToMediaItem(list.get(i));
            if (convertToMediaItem != null) {
                arrayList.add(convertToMediaItem);
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<MediaSession.CommandButton> convertToCustomLayout(@Nullable PlaybackStateCompat playbackStateCompat) {
        ArrayList arrayList = new ArrayList();
        if (playbackStateCompat == null) {
            return arrayList;
        }
        for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
            arrayList.add(new MediaSession.CommandButton.Builder().setCommand(new SessionCommand(customAction.getAction(), customAction.getExtras())).setDisplayName(customAction.getName()).setEnabled(true).setIconResId(customAction.getIcon()).build());
        }
        return arrayList;
    }

    public static MediaLibraryService.LibraryParams convertToLibraryParams(Context context, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        try {
            bundle.setClassLoader(context.getClassLoader());
            return new MediaLibraryService.LibraryParams.Builder().setExtras(bundle).setRecent(bundle.getBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_RECENT)).setOffline(bundle.getBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_OFFLINE)).setSuggested(bundle.getBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_SUGGESTED)).build();
        } catch (Exception e) {
            return new MediaLibraryService.LibraryParams.Builder().setExtras(bundle).build();
        }
    }

    public static MediaBrowserCompat.MediaItem convertToMediaItem(MediaItem mediaItem) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (mediaItem == null) {
            return null;
        }
        MediaMetadata metadata = mediaItem.getMetadata();
        int i = 0;
        int i2 = 0;
        if (metadata == null) {
            MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
            builder.setMediaId(mediaItem.getMediaId());
            mediaDescriptionCompat = builder.build();
        } else {
            MediaDescriptionCompat.Builder builder2 = new MediaDescriptionCompat.Builder();
            builder2.setMediaId(mediaItem.getMediaId());
            builder2.setSubtitle(metadata.getText(MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE));
            builder2.setDescription(metadata.getText(MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION));
            builder2.setIconBitmap(metadata.getBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON));
            builder2.setExtras(metadata.getExtras());
            String string = metadata.getString(MediaMetadata.METADATA_KEY_TITLE);
            if (string != null) {
                builder2.setTitle(string);
            } else {
                builder2.setTitle(metadata.getString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE));
            }
            String string2 = metadata.getString(MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI);
            if (string2 != null) {
                builder2.setIconUri(Uri.parse(string2));
            }
            String string3 = metadata.getString(MediaMetadata.METADATA_KEY_MEDIA_URI);
            if (string3 != null) {
                builder2.setMediaUri(Uri.parse(string3));
            }
            mediaDescriptionCompat = builder2.build();
            boolean z = true;
            int i3 = (!metadata.containsKey(MediaMetadata.METADATA_KEY_BROWSABLE) || metadata.getLong(MediaMetadata.METADATA_KEY_BROWSABLE) == -1) ? 0 : 1;
            if (metadata.getLong(MediaMetadata.METADATA_KEY_PLAYABLE) == 0) {
                z = false;
            }
            if (z) {
                i2 = 2;
            }
            i = i2 | i3;
        }
        return new MediaBrowserCompat.MediaItem(mediaDescriptionCompat, i);
    }

    public static MediaItem convertToMediaItem(MediaBrowserCompat.MediaItem mediaItem) {
        if (mediaItem == null) {
            return null;
        }
        return new MediaItem.Builder().setMetadata(convertToMediaMetadata(mediaItem.getDescription(), mediaItem.isBrowsable(), mediaItem.isPlayable())).build();
    }

    public static MediaItem convertToMediaItem(MediaDescriptionCompat mediaDescriptionCompat) {
        MediaMetadata convertToMediaMetadata = convertToMediaMetadata(mediaDescriptionCompat, false, true);
        if (convertToMediaMetadata == null) {
            return null;
        }
        return new MediaItem.Builder().setMetadata(convertToMediaMetadata).build();
    }

    public static MediaItem convertToMediaItem(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat == null) {
            return null;
        }
        MediaMetadata.Builder putLong = new MediaMetadata.Builder().putLong(MediaMetadata.METADATA_KEY_PLAYABLE, 1L);
        for (String str : mediaMetadataCompat.keySet()) {
            Object obj = mediaMetadataCompat.getBundle().get(str);
            String str2 = METADATA_COMPAT_KEY_TO_METADATA_KEY.containsKey(str) ? METADATA_COMPAT_KEY_TO_METADATA_KEY.get(str) : str;
            if (obj instanceof CharSequence) {
                putLong.putText(str2, (CharSequence) obj);
            } else if (obj instanceof Bitmap) {
                putLong.putBitmap(str2, (Bitmap) obj);
            } else if (obj instanceof Long) {
                putLong.putLong(str2, ((Long) obj).longValue());
            } else if ((obj instanceof RatingCompat) || (Build.VERSION.SDK_INT >= 19 && (obj instanceof Rating))) {
                try {
                    putLong.putRating(str2, convertToRating(mediaMetadataCompat.getRating(str)));
                } catch (Exception e) {
                }
            }
        }
        return new MediaItem.Builder().setMetadata(putLong.build()).build();
    }

    public static MediaItem convertToMediaItem(MediaSessionCompat.QueueItem queueItem) {
        if (queueItem == null) {
            return null;
        }
        return new MediaItem.Builder().setMetadata(convertToMediaMetadata(queueItem.getDescription(), false, true)).build();
    }

    public static List<MediaBrowserCompat.MediaItem> convertToMediaItemList(List<MediaItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(convertToMediaItem(list.get(i)));
        }
        return arrayList;
    }

    public static MediaMetadata convertToMediaMetadata(MediaDescriptionCompat mediaDescriptionCompat, boolean z, boolean z2) {
        if (mediaDescriptionCompat == null) {
            return null;
        }
        MediaMetadata.Builder builder = new MediaMetadata.Builder();
        builder.putString(MediaMetadata.METADATA_KEY_MEDIA_ID, mediaDescriptionCompat.getMediaId());
        CharSequence title = mediaDescriptionCompat.getTitle();
        if (title != null) {
            builder.putText(MediaMetadata.METADATA_KEY_DISPLAY_TITLE, title);
        }
        if (mediaDescriptionCompat.getDescription() != null) {
            builder.putText(MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION, mediaDescriptionCompat.getDescription());
        }
        CharSequence subtitle = mediaDescriptionCompat.getSubtitle();
        if (subtitle != null) {
            builder.putText(MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE, subtitle);
        }
        Bitmap iconBitmap = mediaDescriptionCompat.getIconBitmap();
        if (iconBitmap != null) {
            builder.putBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON, iconBitmap);
        }
        Uri iconUri = mediaDescriptionCompat.getIconUri();
        if (iconUri != null) {
            builder.putText(MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI, iconUri.toString());
        }
        Bundle extras = mediaDescriptionCompat.getExtras();
        if (extras != null) {
            builder.setExtras(extras);
        }
        Uri mediaUri = mediaDescriptionCompat.getMediaUri();
        if (mediaUri != null) {
            builder.putText(MediaMetadata.METADATA_KEY_MEDIA_URI, mediaUri.toString());
        }
        long j = 0;
        if (extras != null && extras.containsKey("android.media.extra.BT_FOLDER_TYPE")) {
            builder.putLong(MediaMetadata.METADATA_KEY_BROWSABLE, extras.getLong("android.media.extra.BT_FOLDER_TYPE"));
        } else if (z) {
            builder.putLong(MediaMetadata.METADATA_KEY_BROWSABLE, 0L);
        } else {
            builder.putLong(MediaMetadata.METADATA_KEY_BROWSABLE, -1L);
        }
        if (z2) {
            j = 1;
        }
        builder.putLong(MediaMetadata.METADATA_KEY_PLAYABLE, j);
        return builder.build();
    }

    public static MediaMetadata convertToMediaMetadata(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_TITLE, charSequence.toString()).putLong(MediaMetadata.METADATA_KEY_BROWSABLE, 0L).putLong(MediaMetadata.METADATA_KEY_PLAYABLE, 1L).build();
    }

    public static MediaMetadataCompat convertToMediaMetadataCompat(MediaMetadata mediaMetadata) {
        if (mediaMetadata == null) {
            return null;
        }
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        for (String str : mediaMetadata.keySet()) {
            String str2 = METADATA_KEY_TO_METADATA_COMPAT_KEY.containsKey(str) ? METADATA_KEY_TO_METADATA_COMPAT_KEY.get(str) : str;
            Object object = mediaMetadata.getObject(str);
            if (object instanceof CharSequence) {
                builder.putText(str2, (CharSequence) object);
            } else if (object instanceof Bitmap) {
                builder.putBitmap(str2, (Bitmap) object);
            } else if (object instanceof Long) {
                builder.putLong(str2, ((Long) object).longValue());
            } else if ((object instanceof Bundle) && !TextUtils.equals(str, MediaMetadata.METADATA_KEY_EXTRAS)) {
                try {
                    builder.putRating(str2, convertToRatingCompat(mediaMetadata.getRating(str)));
                } catch (Exception e) {
                }
            }
        }
        return builder.build();
    }

    public static int convertToPlaybackStateCompatState(int i, int i2) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return i2 != 2 ? 3 : 6;
        }
        if (i != 3) {
        }
        return 7;
    }

    public static int convertToPlayerState(PlaybackStateCompat playbackStateCompat) {
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

    public static List<MediaSessionCompat.QueueItem> convertToQueueItemList(List<MediaItem> list) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            MediaItem mediaItem = list.get(i);
            if (mediaItem.getMetadata() == null) {
                MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
                builder.setMediaId(mediaItem.getMediaId());
                mediaDescriptionCompat = builder.build();
            } else {
                mediaDescriptionCompat = convertToMediaMetadataCompat(mediaItem.getMetadata()).getDescription();
            }
            arrayList.add(new MediaSessionCompat.QueueItem(mediaDescriptionCompat, i));
        }
        return arrayList;
    }

    public static androidx.media2.common.Rating convertToRating(RatingCompat ratingCompat) {
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

    @SuppressLint({"WrongConstant"})
    public static RatingCompat convertToRatingCompat(androidx.media2.common.Rating rating) {
        if (rating == null) {
            return null;
        }
        int ratingCompatStyle = getRatingCompatStyle(rating);
        if (!rating.isRated()) {
            return RatingCompat.newUnratedRating(ratingCompatStyle);
        }
        switch (ratingCompatStyle) {
            case 1:
                return RatingCompat.newHeartRating(((HeartRating) rating).hasHeart());
            case 2:
                return RatingCompat.newThumbRating(((ThumbRating) rating).isThumbUp());
            case 3:
            case 4:
            case 5:
                return RatingCompat.newStarRating(ratingCompatStyle, ((StarRating) rating).getStarRating());
            case 6:
                return RatingCompat.newPercentageRating(((PercentageRating) rating).getPercentRating());
            default:
                return null;
        }
    }

    public static Bundle convertToRootHints(MediaLibraryService.LibraryParams libraryParams) {
        if (libraryParams == null) {
            return null;
        }
        Bundle bundle = libraryParams.getExtras() == null ? new Bundle() : new Bundle(libraryParams.getExtras());
        bundle.putBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_RECENT, libraryParams.isRecent());
        bundle.putBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_OFFLINE, libraryParams.isOffline());
        bundle.putBoolean(MediaBrowserServiceCompat.BrowserRoot.EXTRA_SUGGESTED, libraryParams.isSuggested());
        return bundle;
    }

    @NonNull
    public static SessionCommandGroup convertToSessionCommandGroup(long j, @Nullable PlaybackStateCompat playbackStateCompat) {
        SessionCommandGroup.Builder builder = new SessionCommandGroup.Builder();
        builder.addAllPlayerBasicCommands(1);
        if ((j & 4) != 0) {
            builder.addAllPlayerPlaylistCommands(1);
        }
        builder.addAllVolumeCommands(1);
        builder.addAllSessionCommands(1);
        builder.removeCommand(new SessionCommand(SessionCommand.COMMAND_CODE_PLAYER_SET_SPEED));
        if (!(playbackStateCompat == null || playbackStateCompat.getCustomActions() == null)) {
            for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.getCustomActions()) {
                builder.addCommand(new SessionCommand(customAction.getAction(), customAction.getExtras()));
            }
        }
        return builder.build();
    }

    public static MediaDescriptionCompat createMediaDescriptionCompat(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.setMediaId(str);
        return builder.build();
    }

    public static int getRatingCompatStyle(androidx.media2.common.Rating rating) {
        if (rating instanceof HeartRating) {
            return 1;
        }
        if (rating instanceof ThumbRating) {
            return 2;
        }
        if (!(rating instanceof StarRating)) {
            return rating instanceof PercentageRating ? 6 : 0;
        }
        int maxStars = ((StarRating) rating).getMaxStars();
        int i = 3;
        if (maxStars != 3) {
            i = 4;
            if (maxStars != 4) {
                i = 5;
                if (maxStars != 5) {
                    return 0;
                }
            }
        }
        return i;
    }

    public static boolean isUnparcelableBundle(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        bundle.setClassLoader(MediaUtils.class.getClassLoader());
        try {
            bundle.size();
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public static void keepUnparcelableBundlesOnly(List<Bundle> list) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (isUnparcelableBundle(list.get(size))) {
                    list.remove(size);
                }
            }
        }
    }

    public static <T> List<T> removeNullElements(@Nullable List<T> list) {
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

    public static int toBufferingState(int i) {
        if (i != 3) {
            return i != 6 ? 0 : 2;
        }
        return 3;
    }

    public static MediaController.PlaybackInfo toPlaybackInfo2(MediaControllerCompat.PlaybackInfo playbackInfo) {
        return MediaController.PlaybackInfo.createPlaybackInfo(playbackInfo.getPlaybackType(), new AudioAttributesCompat.Builder().setLegacyStreamType(playbackInfo.getAudioStream()).build(), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
    }

    public static <T extends Parcelable> List<T> truncateListBySize(List<T> list, int i) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Parcel obtain = Parcel.obtain();
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            obtain.writeParcelable(t, 0);
            if (obtain.dataSize() >= i) {
                break;
            }
            arrayList.add(t);
        }
        obtain.recycle();
        return arrayList;
    }

    public static MediaItem upcastForPreparceling(MediaItem mediaItem) {
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem != null) {
            mediaItem2 = mediaItem.getClass() == MediaItem.class ? mediaItem : new MediaItem.Builder().setStartPosition(mediaItem.getStartPosition()).setEndPosition(mediaItem.getEndPosition()).setMetadata(mediaItem.getMetadata()).build();
        }
        return mediaItem2;
    }
}
