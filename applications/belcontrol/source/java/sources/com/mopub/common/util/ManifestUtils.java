package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils.class */
public class ManifestUtils {

    /* renamed from: a */
    public static C1065c f4523a = new C1065c();

    /* renamed from: b */
    public static final List<Class<? extends Activity>> f4524b;

    /* renamed from: c */
    public static final List<Class<? extends Activity>> f4525c;

    /* renamed from: d */
    public static final List<Class<? extends Activity>> f4526d;

    /* renamed from: com.mopub.common.util.ManifestUtils$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static class C1064b {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        public C1064b() {
        }
    }

    /* renamed from: com.mopub.common.util.ManifestUtils$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils$c.class */
    public static class C1065c {
        public boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        f4524b = arrayList;
        try {
            arrayList.add(Class.forName("com.mopub.mobileads.MoPubFullscreenActivity"));
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f4524b.add(MoPubBrowser.class);
        ArrayList arrayList2 = new ArrayList(1);
        f4525c = arrayList2;
        arrayList2.add(MoPubBrowser.class);
        ArrayList arrayList3 = new ArrayList(1);
        f4526d = arrayList3;
        arrayList3.add(ConsentDialogActivity.class);
    }

    private ManifestUtils() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m3789a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> m3785e = m3785e(context, m3787c(context, list, true));
        if (m3785e.isEmpty()) {
            return;
        }
        m3782h(context);
        m3784f(context, m3785e);
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m3788b(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> m3787c = m3787c(context, list, false);
        if (m3787c.isEmpty()) {
            return;
        }
        m3782h(context);
        m3783g(m3787c);
    }

    /* renamed from: c */
    public static List<Class<? extends Activity>> m3787c(Context context, List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    public static void checkGdprActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f4526d;
        m3788b(context, list);
        m3789a(context, list);
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f4525c;
        m3788b(context, list);
        m3789a(context, list);
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f4524b;
        m3788b(context, list);
        m3789a(context, list);
    }

    /* renamed from: d */
    public static C1064b m3786d(Context context, Class<? extends Activity> cls) {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        C1064b c1064b = new C1064b();
        c1064b.hasKeyboardHidden = f4523a.hasFlag(cls, activityInfo.configChanges, 32);
        c1064b.hasOrientation = f4523a.hasFlag(cls, activityInfo.configChanges, 128);
        c1064b.hasScreenSize = true;
        c1064b.hasScreenSize = f4523a.hasFlag(cls, activityInfo.configChanges, 1024);
        return c1064b;
    }

    @TargetApi(13)
    /* renamed from: e */
    public static List<Class<? extends Activity>> m3785e(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                C1064b m3786d = m3786d(context, cls);
                if (!m3786d.hasKeyboardHidden || !m3786d.hasOrientation || !m3786d.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static void m3784f(Context context, List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                C1064b m3786d = m3786d(context, cls);
                if (!m3786d.hasKeyboardHidden) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include keyboardHidden.");
                }
                if (!m3786d.hasOrientation) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include orientation.");
                }
                if (!m3786d.hasScreenSize) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include screenSize.");
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    /* renamed from: g */
    public static void m3783g(List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        for (Class<? extends Activity> cls : list) {
            sb.append("\n\t");
            sb.append(cls.getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    /* renamed from: h */
    public static void m3782h(Context context) {
        Context applicationContext;
        if (!isDebuggable(context) || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        Toast makeText = Toast.makeText(applicationContext, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
        makeText.setGravity(7, 0, 0);
        makeText.show();
    }

    public static boolean isDebuggable(Context context) {
        return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
    }
}
