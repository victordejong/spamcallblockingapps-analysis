package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogActivity;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils.class */
public class ManifestUtils {

    /* renamed from: a */
    public static C3812c f8340a = new C3812c();

    /* renamed from: b */
    public static final List<Class<? extends Activity>> f8341b = new ArrayList(4);

    /* renamed from: c */
    public static final List<Class<? extends Activity>> f8342c;

    /* renamed from: d */
    public static final List<Class<? extends Activity>> f8343d;

    /* renamed from: com.mopub.common.util.ManifestUtils$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static class C3811b {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        public C3811b() {
        }
    }

    /* renamed from: com.mopub.common.util.ManifestUtils$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils$c.class */
    public static class C3812c {
        public boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        try {
            Class<?> cls = Class.forName("com.mopub.mobileads.MoPubActivity");
            Class<?> cls2 = Class.forName("com.mopub.mobileads.MraidActivity");
            Class<?> cls3 = Class.forName("com.mopub.mobileads.RewardedMraidActivity");
            f8341b.add(cls);
            f8341b.add(cls2);
            f8341b.add(cls3);
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f8341b.add(MraidVideoPlayerActivity.class);
        f8341b.add(MoPubBrowser.class);
        f8342c = new ArrayList(1);
        f8342c.add(MoPubBrowser.class);
        f8343d = new ArrayList(1);
        f8343d.add(ConsentDialogActivity.class);
    }

    /* renamed from: a */
    public static C3811b m30657a(@NonNull Context context, @NonNull Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        C3811b bVar = new C3811b();
        bVar.hasKeyboardHidden = f8340a.hasFlag(cls, activityInfo.configChanges, 32);
        bVar.hasOrientation = f8340a.hasFlag(cls, activityInfo.configChanges, 128);
        bVar.hasScreenSize = true;
        bVar.hasScreenSize = f8340a.hasFlag(cls, activityInfo.configChanges, 1024);
        return bVar;
    }

    /* renamed from: a */
    public static List<Class<? extends Activity>> m30655a(@NonNull Context context, @NonNull List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m30658a(@NonNull Context context) {
        Context applicationContext;
        if (isDebuggable(context) && (applicationContext = context.getApplicationContext()) != null) {
            Toast makeText = Toast.makeText(applicationContext, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
            makeText.setGravity(7, 0, 0);
            makeText.show();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m30656a(@NonNull Context context, @NonNull List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> c = m30652c(context, m30655a(context, list, true));
        if (!c.isEmpty()) {
            m30658a(context);
            m30651d(context, c);
        }
    }

    /* renamed from: a */
    public static void m30654a(@NonNull List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        for (Class<? extends Activity> cls : list) {
            sb.append("\n\t");
            sb.append(cls.getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m30653b(@NonNull Context context, @NonNull List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> a = m30655a(context, list, false);
        if (!a.isEmpty()) {
            m30658a(context);
            m30654a(a);
        }
    }

    @TargetApi(13)
    /* renamed from: c */
    public static List<Class<? extends Activity>> m30652c(@NonNull Context context, @NonNull List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                C3811b a = m30657a(context, cls);
                if (!a.hasKeyboardHidden || !a.hasOrientation || !a.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    public static void checkGdprActivitiesDeclared(@NonNull Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m30653b(context, f8343d);
            m30656a(context, f8343d);
        }
    }

    public static void checkNativeActivitiesDeclared(@NonNull Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m30653b(context, f8342c);
            m30656a(context, f8342c);
        }
    }

    public static void checkWebViewActivitiesDeclared(@NonNull Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m30653b(context, f8341b);
            m30656a(context, f8341b);
        }
    }

    /* renamed from: d */
    public static void m30651d(@NonNull Context context, @NonNull List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                C3811b a = m30657a(context, cls);
                if (!a.hasKeyboardHidden) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include keyboardHidden.");
                }
                if (!a.hasOrientation) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include orientation.");
                }
                if (!a.hasScreenSize) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include screenSize.");
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    public static boolean isDebuggable(@NonNull Context context) {
        return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
    }
}
