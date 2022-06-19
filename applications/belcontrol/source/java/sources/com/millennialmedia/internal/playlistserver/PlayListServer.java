package com.millennialmedia.internal.playlistserver;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adwrapper.SuperAuctionAdWrapperType;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.TimedMemoryCache;
import com.millennialmedia.internal.utils.Utils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServer.class */
public class PlayListServer {
    private static final String TAG = "PlayListServer";
    private static Class<? extends PlayListServerAdapter> activePlayListServerAdapterClass;
    public static final PlayListTimedMemoryCache playListCache = new PlayListTimedMemoryCache();
    public static final List<String> supportedAdFormats = Arrays.asList("web", "native");

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem.class */
    public static class PlayListCacheItem {
        public String impressionGroup;
        public PlayList playList;

        public PlayListCacheItem(PlayList playList, String str) {
            this.playList = playList;
            this.impressionGroup = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener.class */
    public interface PlayListLoadListener {
        void onLoadFailed(Throwable th);

        void onLoaded(PlayList playList);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache.class */
    public static class PlayListTimedMemoryCache extends TimedMemoryCache<PlayListCacheItem> {
        public void onExpired(String str, PlayListCacheItem playListCacheItem) {
            SuperAuctionAdWrapperType.reportBidFailed(playListCacheItem.playList, playListCacheItem.impressionGroup, 113);
        }

        public void onOverwritten(String str, PlayListCacheItem playListCacheItem) {
            SuperAuctionAdWrapperType.reportBidFailed(playListCacheItem.playList, playListCacheItem.impressionGroup, 114);
        }
    }

    public static void addPlaylistToCache(String str, PlayList playList, String str2, long j) {
        playListCache.add(str, new PlayListCacheItem(playList, str2), Long.valueOf(j));
    }

    public static void clearPlaylistCache() {
        playListCache.expireAll();
    }

    private static PlayListServerAdapter getActivePlayListServerAdapter() {
        Class<? extends PlayListServerAdapter> cls = activePlayListServerAdapterClass;
        Class<? extends PlayListServerAdapter> cls2 = cls;
        if (cls == null) {
            cls2 = Handshake.getActivePlayListServerAdapterClass();
        }
        return PlayListServerAdapter.getAdapter(cls2);
    }

    private static PlayList getCachedPlaylist(String str) {
        PlayListCacheItem playListCacheItem;
        if (!Utils.isEmpty(str) && (playListCacheItem = playListCache.get(str)) != null) {
            return playListCacheItem.playList;
        }
        return null;
    }

    public static void loadPlayList(Map<String, Object> map, PlayListLoadListener playListLoadListener, int i) {
        loadPlayList(map, playListLoadListener, i, true);
    }

    public static void loadPlayList(Map<String, Object> map, final PlayListLoadListener playListLoadListener, int i, boolean z) {
        String str;
        PlayList cachedPlaylist;
        if (!Handshake.isSdkEnabled()) {
            MMLog.m4068e(TAG, "Unable to request ad, SDK is disabled.  Please contact Millennial Media.");
            playListLoadListener.onLoadFailed(new RuntimeException("SDK disabled"));
        } else if (!EnvironmentUtils.isNetworkAvailable()) {
            MMLog.m4068e(TAG, "Unable to request ad, no network connection found");
            playListLoadListener.onLoadFailed(new RuntimeException("Network not available"));
        } else {
            try {
                PlayListServerAdapter activePlayListServerAdapter = getActivePlayListServerAdapter();
                if (!z || (cachedPlaylist = getCachedPlaylist((str = (String) map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_ID)))) == null) {
                    activePlayListServerAdapter.loadPlayList(map, new PlayListServerAdapter.AdapterLoadListener() { // from class: com.millennialmedia.internal.playlistserver.PlayListServer.1
                        @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter.AdapterLoadListener
                        public void loadFailed(Throwable th) {
                            playListLoadListener.onLoadFailed(th);
                        }

                        @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter.AdapterLoadListener
                        public void loadSucceeded(PlayList playList) {
                            if (playList != null) {
                                playListLoadListener.onLoaded(playList);
                            } else {
                                playListLoadListener.onLoadFailed(new RuntimeException("Playlist provided by adapter is null"));
                            }
                        }
                    }, i);
                    return;
                }
                if (MMLog.isDebugEnabled()) {
                    String str2 = TAG;
                    MMLog.m4070d(str2, "Using playlist from cache for id <" + str + ">");
                }
                playListLoadListener.onLoaded(cachedPlaylist);
            } catch (Exception e) {
                playListLoadListener.onLoadFailed(e);
            }
        }
    }

    public static void setActivePlayListServerAdapter(Class<? extends PlayListServerAdapter> cls) {
        activePlayListServerAdapterClass = cls;
    }
}
