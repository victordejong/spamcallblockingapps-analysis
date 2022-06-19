package com.millennialmedia.internal.playlistserver;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adwrapper.AdWrapperType;
import com.millennialmedia.internal.adwrapper.ClientMediationAdWrapperType;
import com.millennialmedia.internal.adwrapper.ContentAdWrapperType;
import com.millennialmedia.internal.adwrapper.ExchangeAdWrapperType;
import com.millennialmedia.internal.adwrapper.ServerMediationAdWrapperType;
import com.millennialmedia.internal.adwrapper.SuperAuctionAdWrapperType;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServerAdapter.class */
public abstract class PlayListServerAdapter {
    private static final String TAG = "PlayListServerAdapter";
    private static Map<Class<? extends PlayListServerAdapter>, PlayListServerAdapter> registeredAdapters = new HashMap();
    private static Map<String, AdWrapperType> registeredPlayListItemTypes = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener.class */
    public interface AdapterLoadListener {
        void loadFailed(Throwable th);

        void loadSucceeded(PlayList playList);
    }

    public static PlayListServerAdapter getAdapter(Class<? extends PlayListServerAdapter> cls) {
        PlayListServerAdapter playListServerAdapter = registeredAdapters.get(cls);
        if (playListServerAdapter != null) {
            return playListServerAdapter;
        }
        throw new Exception("Unable to find specified PlayListServerAdapter for class " + cls);
    }

    public static AdWrapperType getPlayListItemType(String str) {
        AdWrapperType adWrapperType = registeredPlayListItemTypes.get(str);
        if (adWrapperType != null) {
            return adWrapperType;
        }
        throw new Exception("Unable to find specified PlayListType for type ID " + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void registerAdapter(PlayListServerAdapter playListServerAdapter) {
        if (playListServerAdapter != null) {
            Class<?> cls = playListServerAdapter.getClass();
            if (registeredAdapters.containsKey(cls)) {
                String str = TAG;
                MMLog.m4062w(str, "PlayListServerAdapter <" + cls + "> already registered");
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str2 = TAG;
                MMLog.m4070d(str2, "Registering PlayListServerAdapter <" + cls + ">");
            }
            registeredAdapters.put(cls, playListServerAdapter);
            return;
        }
        throw new IllegalArgumentException("PlayListServerAdapter cannot be null");
    }

    public static void registerPackagedAdapters() {
        registerAdapter(new GreenServerAdapter());
        registerAdapter(new OrangeServerAdapter());
    }

    public static void registerPackagedPlayListItemTypes() {
        registerPlayListItemType("client_mediation", new ClientMediationAdWrapperType());
        registerPlayListItemType("server_mediation", new ServerMediationAdWrapperType());
        registerPlayListItemType("ad_content", new ContentAdWrapperType());
        registerPlayListItemType("exchange", new ExchangeAdWrapperType());
        registerPlayListItemType("smart_yield", new SuperAuctionAdWrapperType());
        registerPlayListItemType("super_auction", new SuperAuctionAdWrapperType());
    }

    public static void registerPlayListItemType(String str, AdWrapperType adWrapperType) {
        if (adWrapperType != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("PlayListItemTypeId cannot be null");
            }
            if (registeredPlayListItemTypes.containsKey(str)) {
                String str2 = TAG;
                MMLog.m4062w(str2, "PlayListItemTypeId <" + str + "> already registered");
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str3 = TAG;
                MMLog.m4070d(str3, "Registering PlayListItemTypeId <" + str + ">");
            }
            registeredPlayListItemTypes.put(str, adWrapperType);
            return;
        }
        throw new IllegalArgumentException("AdWrapperType cannot be null");
    }

    public abstract void loadPlayList(Map<String, Object> map, AdapterLoadListener adapterLoadListener, int i);
}
