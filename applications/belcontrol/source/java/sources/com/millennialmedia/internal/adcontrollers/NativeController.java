package com.millennialmedia.internal.adcontrollers;

import com.google.android.gms.common.internal.ImagesContract;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController.class */
public class NativeController extends AdController {
    private static final String TAG = "NativeController";
    public List<Asset> assets;
    public List<String> impTrackers;
    public String jsTracker;
    public Link link;
    private NativeControllerListener nativeControllerListener;
    public int version = 1;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset.class */
    public static class Asset {
        public Data data;

        /* renamed from: id */
        public int f4124id;
        public Image image;
        public Link link;
        public boolean required;
        public Title title;
        public Type type;
        public Video video;

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset$Data.class */
        public static class Data {
            public String label;
            public String value;
        }

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset$Image.class */
        public static class Image {
            public Integer height;
            public String url;
            public Integer width;
        }

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset$Title.class */
        public static class Title {
            public String value;
        }

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset$Type.class */
        public enum Type {
            TITLE,
            IMAGE,
            VIDEO,
            DATA,
            UNKNOWN
        }

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Asset$Video.class */
        public static class Video {
            public String vastTag;
        }

        public Asset(Type type, int i, boolean z) {
            this.required = false;
            this.type = type;
            this.f4124id = i;
            this.required = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$Link.class */
    public static class Link {
        public List<String> clickTrackerUrls;
        public String fallback;
        public String url;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener.class */
    public interface NativeControllerListener {
        void initFailed(Throwable th);

        void initSucceeded();
    }

    public NativeController() {
    }

    public NativeController(NativeControllerListener nativeControllerListener) {
        this.nativeControllerListener = nativeControllerListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0192 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAssets(org.json.JSONArray r6) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.adcontrollers.NativeController.loadAssets(org.json.JSONArray):void");
    }

    private Link loadLink(JSONObject jSONObject) {
        Link link = new Link();
        link.url = jSONObject.getString(ImagesContract.URL);
        if (jSONObject.has("clicktrackers")) {
            try {
                link.clickTrackerUrls = new CopyOnWriteArrayList(JSONUtils.convertToStringArray(jSONObject.getJSONArray("clicktrackers")));
            } catch (JSONException e) {
            }
        }
        link.fallback = jSONObject.optString("fallback", null);
        return link;
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        try {
            new JSONObject(str).getJSONObject("native");
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void close() {
    }

    public void init(String str) {
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Loading native assets " + hashCode());
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("native");
            this.version = jSONObject.optInt("ver", this.version);
            loadAssets(jSONObject.getJSONArray("assets"));
            this.link = loadLink(jSONObject.getJSONObject("link"));
            JSONArray optJSONArray = jSONObject.optJSONArray("imptrackers");
            if (optJSONArray != null) {
                this.impTrackers = new CopyOnWriteArrayList(JSONUtils.convertToStringArray(optJSONArray));
            }
            this.jsTracker = jSONObject.optString("jstracker", null);
            this.nativeControllerListener.initSucceeded();
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Initialization of the native controller instance failed", e);
            this.nativeControllerListener.initFailed(e);
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void release() {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Releasing native assets " + hashCode());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.NativeController.1
            @Override // java.lang.Runnable
            public void run() {
                List<Asset> list = NativeController.this.assets;
                if (list != null) {
                    list.clear();
                }
                List<String> list2 = NativeController.this.impTrackers;
                if (list2 != null) {
                    list2.clear();
                }
            }
        });
    }
}
