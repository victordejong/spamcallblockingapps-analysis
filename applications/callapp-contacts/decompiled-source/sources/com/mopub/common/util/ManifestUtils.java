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

    /* renamed from: a  reason: collision with root package name */
    private static b f33998a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final List<Class<? extends Activity>> f33999b;

    /* renamed from: c  reason: collision with root package name */
    private static final List<Class<? extends Activity>> f34000c;

    /* renamed from: d  reason: collision with root package name */
    private static final List<Class<? extends Activity>> f34001d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/ManifestUtils$a.class */
    public static final class a {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static final class b {
        b() {
        }

        public final boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        f33999b = arrayList;
        try {
            arrayList.add(Class.forName("com.mopub.mobileads.MoPubFullscreenActivity"));
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f33999b.add(MoPubBrowser.class);
        ArrayList arrayList2 = new ArrayList(1);
        f34000c = arrayList2;
        arrayList2.add(MoPubBrowser.class);
        ArrayList arrayList3 = new ArrayList(1);
        f34001d = arrayList3;
        arrayList3.add(ConsentDialogActivity.class);
    }

    private ManifestUtils() {
    }

    private static a a(Context context, Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        a aVar = new a();
        aVar.hasKeyboardHidden = f33998a.hasFlag(cls, activityInfo.configChanges, 32);
        aVar.hasOrientation = f33998a.hasFlag(cls, activityInfo.configChanges, 128);
        aVar.hasScreenSize = true;
        aVar.hasScreenSize = f33998a.hasFlag(cls, activityInfo.configChanges, 1024);
        return aVar;
    }

    private static List<Class<? extends Activity>> a(Context context, List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    private static void a(Context context) {
        Context applicationContext;
        if (isDebuggable(context) && (applicationContext = context.getApplicationContext()) != null) {
            Toast makeText = Toast.makeText(applicationContext, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
            makeText.setGravity(7, 0, 0);
            makeText.show();
        }
    }

    private static void a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> a2 = a(context, list, false);
        if (!a2.isEmpty()) {
            a(context);
            a(a2);
        }
    }

    private static void a(List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        for (Class<? extends Activity> cls : list) {
            sb.append("\n\t");
            sb.append(cls.getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    private static void b(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> c2 = c(context, a(context, list, true));
        if (!c2.isEmpty()) {
            a(context);
            d(context, c2);
        }
    }

    private static List<Class<? extends Activity>> c(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                a a2 = a(context, cls);
                if (!a2.hasKeyboardHidden || !a2.hasOrientation || !a2.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    public static void checkGdprActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            List<Class<? extends Activity>> list = f34001d;
            a(context, list);
            b(context, list);
        }
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            List<Class<? extends Activity>> list = f34000c;
            a(context, list);
            b(context, list);
        }
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            List<Class<? extends Activity>> list = f33999b;
            a(context, list);
            b(context, list);
        }
    }

    private static void d(Context context, List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                a a2 = a(context, cls);
                if (!a2.hasKeyboardHidden) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include keyboardHidden.");
                }
                if (!a2.hasOrientation) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include orientation.");
                }
                if (!a2.hasScreenSize) {
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
