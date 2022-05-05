package com.mixpanel.android.viewcrawler;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64OutputStream;
import android.util.DisplayMetrics;
import android.util.JsonWriter;
import android.util.LruCache;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mixpanel.android.mpmetrics.MPConfig;
import com.mixpanel.android.mpmetrics.ResourceIds;
import com.mixpanel.android.util.MPLog;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewSnapshot.class */
class ViewSnapshot {
    private static final String LOGTAG = "MixpanelAPI.Snapshot";
    private static final int MAX_CLASS_NAME_CACHE_SIZE = 255;
    private final MPConfig mConfig;
    private final List<PropertyDescription> mProperties;
    private final ResourceIds mResourceIds;
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final RootViewFinder mRootViewFinder = new RootViewFinder();
    private final ClassNameCache mClassnameCache = new ClassNameCache(255);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewSnapshot$CachedBitmap.class */
    public static class CachedBitmap {
        private final Paint mPaint = new Paint(2);
        private Bitmap mCached = null;

        public void recreate(int i, int i2, int i3, Bitmap bitmap) {
            synchronized (this) {
                if (!(this.mCached != null && this.mCached.getWidth() == i && this.mCached.getHeight() == i2)) {
                    try {
                        this.mCached = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                    } catch (OutOfMemoryError e) {
                        this.mCached = null;
                    }
                    if (this.mCached != null) {
                        this.mCached.setDensity(i3);
                    }
                }
                if (this.mCached != null) {
                    new Canvas(this.mCached).drawBitmap(bitmap, 0.0f, 0.0f, this.mPaint);
                }
            }
        }

        public void writeBitmapJSON(Bitmap.CompressFormat compressFormat, int i, OutputStream outputStream) throws IOException {
            synchronized (this) {
                if (!(this.mCached == null || this.mCached.getWidth() == 0 || this.mCached.getHeight() == 0)) {
                    outputStream.write(34);
                    Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 2);
                    this.mCached.compress(Bitmap.CompressFormat.PNG, 100, base64OutputStream);
                    base64OutputStream.flush();
                    outputStream.write(34);
                }
                outputStream.write("null".getBytes());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewSnapshot$ClassNameCache.class */
    public static class ClassNameCache extends LruCache<Class<?>, String> {
        public ClassNameCache(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public String create(Class<?> cls) {
            return cls.getCanonicalName();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewSnapshot$RootViewFinder.class */
    private static class RootViewFinder implements Callable<List<RootViewInfo>> {
        private UIThreadSet<Activity> mLiveActivities;
        private final int mClientDensity = 160;
        private final DisplayMetrics mDisplayMetrics = new DisplayMetrics();
        private final List<RootViewInfo> mRootViews = new ArrayList();
        private final CachedBitmap mCachedBitmap = new CachedBitmap();

        /* JADX WARN: Removed duplicated region for block: B:25:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00f0  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x016b  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void takeScreenshot(com.mixpanel.android.viewcrawler.ViewSnapshot.RootViewInfo r8) {
            /*
                Method dump skipped, instructions count: 391
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.viewcrawler.ViewSnapshot.RootViewFinder.takeScreenshot(com.mixpanel.android.viewcrawler.ViewSnapshot$RootViewInfo):void");
        }

        @Override // java.util.concurrent.Callable
        public List<RootViewInfo> call() throws Exception {
            this.mRootViews.clear();
            for (Activity activity : this.mLiveActivities.getAll()) {
                String canonicalName = activity.getClass().getCanonicalName();
                View rootView = activity.getWindow().getDecorView().getRootView();
                activity.getWindowManager().getDefaultDisplay().getMetrics(this.mDisplayMetrics);
                this.mRootViews.add(new RootViewInfo(canonicalName, rootView));
            }
            int size = this.mRootViews.size();
            for (int i = 0; i < size; i++) {
                takeScreenshot(this.mRootViews.get(i));
            }
            return this.mRootViews;
        }

        public void findInActivities(UIThreadSet<Activity> uIThreadSet) {
            this.mLiveActivities = uIThreadSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewSnapshot$RootViewInfo.class */
    public static class RootViewInfo {
        public final String activityName;
        public final View rootView;
        public CachedBitmap screenshot = null;
        public float scale = 1.0f;

        public RootViewInfo(String str, View view) {
            this.activityName = str;
            this.rootView = view;
        }
    }

    public ViewSnapshot(Context context, List<PropertyDescription> list, ResourceIds resourceIds) {
        this.mConfig = MPConfig.getInstance(context);
        this.mProperties = list;
        this.mResourceIds = resourceIds;
    }

    private void addProperties(JsonWriter jsonWriter, View view) throws IOException {
        Object applyMethod;
        Class<?> cls = view.getClass();
        for (PropertyDescription propertyDescription : this.mProperties) {
            if (!(!propertyDescription.targetClass.isAssignableFrom(cls) || propertyDescription.accessor == null || (applyMethod = propertyDescription.accessor.applyMethod(view)) == null)) {
                if (applyMethod instanceof Number) {
                    jsonWriter.name(propertyDescription.name).value((Number) applyMethod);
                } else if (applyMethod instanceof Boolean) {
                    jsonWriter.name(propertyDescription.name).value(((Boolean) applyMethod).booleanValue());
                } else if (applyMethod instanceof ColorStateList) {
                    jsonWriter.name(propertyDescription.name).value(Integer.valueOf(((ColorStateList) applyMethod).getDefaultColor()));
                } else if (applyMethod instanceof Drawable) {
                    Drawable drawable = (Drawable) applyMethod;
                    Rect bounds = drawable.getBounds();
                    jsonWriter.name(propertyDescription.name);
                    jsonWriter.beginObject();
                    jsonWriter.name("classes");
                    jsonWriter.beginArray();
                    for (Class<?> cls2 = drawable.getClass(); cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                        jsonWriter.value(cls2.getCanonicalName());
                    }
                    jsonWriter.endArray();
                    jsonWriter.name("dimensions");
                    jsonWriter.beginObject();
                    jsonWriter.name("left").value(bounds.left);
                    jsonWriter.name("right").value(bounds.right);
                    jsonWriter.name("top").value(bounds.top);
                    jsonWriter.name("bottom").value(bounds.bottom);
                    jsonWriter.endObject();
                    if (drawable instanceof ColorDrawable) {
                        jsonWriter.name("color").value(((ColorDrawable) drawable).getColor());
                    }
                    jsonWriter.endObject();
                } else {
                    jsonWriter.name(propertyDescription.name).value(applyMethod.toString());
                }
            }
        }
    }

    private void snapshotView(JsonWriter jsonWriter, View view) throws IOException {
        float f;
        Class<? super Object> superclass;
        View childAt;
        if (view.getVisibility() != 4 || !this.mConfig.getIgnoreInvisibleViewsEditor()) {
            int id = view.getId();
            String nameForId = -1 == id ? null : this.mResourceIds.nameForId(id);
            jsonWriter.beginObject();
            jsonWriter.name("hashCode").value(view.hashCode());
            jsonWriter.name("id").value(id);
            jsonWriter.name("mp_id_name").value(nameForId);
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription == null) {
                jsonWriter.name("contentDescription").nullValue();
            } else {
                jsonWriter.name("contentDescription").value(contentDescription.toString());
            }
            Object tag = view.getTag();
            if (tag == null) {
                jsonWriter.name("tag").nullValue();
            } else if (tag instanceof CharSequence) {
                jsonWriter.name("tag").value(tag.toString());
            }
            jsonWriter.name("top").value(view.getTop());
            jsonWriter.name("left").value(view.getLeft());
            jsonWriter.name(SettingsJsonConstants.ICON_WIDTH_KEY).value(view.getWidth());
            jsonWriter.name(SettingsJsonConstants.ICON_HEIGHT_KEY).value(view.getHeight());
            jsonWriter.name("scrollX").value(view.getScrollX());
            jsonWriter.name("scrollY").value(view.getScrollY());
            jsonWriter.name("visibility").value(view.getVisibility());
            float f2 = 0.0f;
            if (Build.VERSION.SDK_INT >= 11) {
                f2 = view.getTranslationX();
                f = view.getTranslationY();
            } else {
                f = 0.0f;
            }
            jsonWriter.name("translationX").value(f2);
            jsonWriter.name("translationY").value(f);
            jsonWriter.name("classes");
            jsonWriter.beginArray();
            Class<?> cls = view.getClass();
            do {
                jsonWriter.value(this.mClassnameCache.get(cls));
                superclass = cls.getSuperclass();
                if (superclass == Object.class) {
                    break;
                }
                cls = superclass;
            } while (superclass != null);
            jsonWriter.endArray();
            addProperties(jsonWriter, view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
                jsonWriter.name("layoutRules");
                jsonWriter.beginArray();
                for (int i : rules) {
                    jsonWriter.value(i);
                }
                jsonWriter.endArray();
            }
            jsonWriter.name("subviews");
            jsonWriter.beginArray();
            boolean z = view instanceof ViewGroup;
            if (z) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (viewGroup.getChildAt(i2) != null) {
                        jsonWriter.value(childAt.hashCode());
                    }
                }
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
            if (z) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                int childCount2 = viewGroup2.getChildCount();
                for (int i3 = 0; i3 < childCount2; i3++) {
                    View childAt2 = viewGroup2.getChildAt(i3);
                    if (childAt2 != null) {
                        snapshotView(jsonWriter, childAt2);
                    }
                }
            }
        }
    }

    List<PropertyDescription> getProperties() {
        return this.mProperties;
    }

    void snapshotViewHierarchy(JsonWriter jsonWriter, View view) throws IOException {
        jsonWriter.beginArray();
        snapshotView(jsonWriter, view);
        jsonWriter.endArray();
    }

    public void snapshots(UIThreadSet<Activity> uIThreadSet, OutputStream outputStream) throws IOException {
        this.mRootViewFinder.findInActivities(uIThreadSet);
        FutureTask futureTask = new FutureTask(this.mRootViewFinder);
        this.mMainThreadHandler.post(futureTask);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        List emptyList = Collections.emptyList();
        outputStreamWriter.write("[");
        try {
            emptyList = (List) futureTask.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            MPLog.m312d(LOGTAG, "Screenshot interrupted, no screenshot will be sent.", e);
        } catch (ExecutionException e2) {
            MPLog.m310e(LOGTAG, "Exception thrown during screenshot attempt", e2);
        } catch (TimeoutException e3) {
            MPLog.m308i(LOGTAG, "Screenshot took more than 1 second to be scheduled and executed. No screenshot will be sent.", e3);
        }
        int size = emptyList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                outputStreamWriter.write(",");
            }
            RootViewInfo rootViewInfo = (RootViewInfo) emptyList.get(i);
            outputStreamWriter.write("{");
            outputStreamWriter.write("\"activity\":");
            outputStreamWriter.write(JSONObject.quote(rootViewInfo.activityName));
            outputStreamWriter.write(",");
            outputStreamWriter.write("\"scale\":");
            outputStreamWriter.write(String.format("%s", Float.valueOf(rootViewInfo.scale)));
            outputStreamWriter.write(",");
            outputStreamWriter.write("\"serialized_objects\":");
            JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
            jsonWriter.beginObject();
            jsonWriter.name("rootObject").value(rootViewInfo.rootView.hashCode());
            jsonWriter.name("objects");
            snapshotViewHierarchy(jsonWriter, rootViewInfo.rootView);
            jsonWriter.endObject();
            jsonWriter.flush();
            outputStreamWriter.write(",");
            outputStreamWriter.write("\"screenshot\":");
            outputStreamWriter.flush();
            rootViewInfo.screenshot.writeBitmapJSON(Bitmap.CompressFormat.PNG, 100, outputStream);
            outputStreamWriter.write("}");
        }
        outputStreamWriter.write("]");
        outputStreamWriter.flush();
    }
}
