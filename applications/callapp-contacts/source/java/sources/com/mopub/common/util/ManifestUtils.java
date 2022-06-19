package com.mopub.common.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/ManifestUtils.class */
public class ManifestUtils {

    /* renamed from: a */
    private static C16749b f59015a = new C16749b();

    /* renamed from: b */
    private static final List<Class<? extends Activity>> f59016b;

    /* renamed from: c */
    private static final List<Class<? extends Activity>> f59017c;

    /* renamed from: d */
    private static final List<Class<? extends Activity>> f59018d;

    /* renamed from: com.mopub.common.util.ManifestUtils$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/ManifestUtils$a.class */
    public static final class C16748a {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        private C16748a() {
        }
    }

    /* renamed from: com.mopub.common.util.ManifestUtils$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static final class C16749b {
        C16749b() {
        }

        public final boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        f59016b = arrayList;
        try {
            arrayList.add(Class.forName("com.mopub.mobileads.MoPubFullscreenActivity"));
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f59016b.add(MoPubBrowser.class);
        ArrayList arrayList2 = new ArrayList(1);
        f59017c = arrayList2;
        arrayList2.add(MoPubBrowser.class);
        ArrayList arrayList3 = new ArrayList(1);
        f59018d = arrayList3;
        arrayList3.add(ConsentDialogActivity.class);
    }

    private ManifestUtils() {
    }

    /* renamed from: a */
    private static C16748a m6616a(Context context, Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        C16748a c16748a = new C16748a();
        c16748a.hasKeyboardHidden = f59015a.hasFlag(cls, activityInfo.configChanges, 32);
        c16748a.hasOrientation = f59015a.hasFlag(cls, activityInfo.configChanges, 128);
        c16748a.hasScreenSize = true;
        c16748a.hasScreenSize = f59015a.hasFlag(cls, activityInfo.configChanges, 1024);
        return c16748a;
    }

    /* renamed from: a */
    private static List<Class<? extends Activity>> m6614a(Context context, List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m6617a(Context context) {
        Context applicationContext;
        if (!isDebuggable(context) || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        Toast makeText = Toast.makeText(applicationContext, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
        makeText.setGravity(7, 0, 0);
        makeText.show();
    }

    /* renamed from: a */
    private static void m6615a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> m6614a = m6614a(context, list, false);
        if (m6614a.isEmpty()) {
            return;
        }
        m6617a(context);
        m6613a(m6614a);
    }

    /* renamed from: a */
    private static void m6613a(List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        for (Class<? extends Activity> cls : list) {
            sb.append("\n\t");
            sb.append(cls.getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    /* renamed from: b */
    private static void m6612b(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> m6611c = m6611c(context, m6614a(context, list, true));
        if (m6611c.isEmpty()) {
            return;
        }
        m6617a(context);
        m6610d(context, m6611c);
    }

    /* renamed from: c */
    private static List<Class<? extends Activity>> m6611c(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                C16748a m6616a = m6616a(context, cls);
                if (!m6616a.hasKeyboardHidden || !m6616a.hasOrientation || !m6616a.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    public static void checkGdprActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f59018d;
        m6615a(context, list);
        m6612b(context, list);
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f59017c;
        m6615a(context, list);
        m6612b(context, list);
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f59016b;
        m6615a(context, list);
        m6612b(context, list);
    }

    /* renamed from: d */
    private static void m6610d(Context context, List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                C16748a m6616a = m6616a(context, cls);
                if (!m6616a.hasKeyboardHidden) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include keyboardHidden.");
                }
                if (!m6616a.hasOrientation) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include orientation.");
                }
                if (!m6616a.hasScreenSize) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include screenSize.");
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    public static boolean isDebuggable(Context context) {
        return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
    }
}
