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
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogActivity;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils.class */
public class ManifestUtils {

    /* renamed from: a */
    public static C8750c f33948a = new C8750c();

    /* renamed from: b */
    public static final List<Class<? extends Activity>> f33949b = new ArrayList(4);

    /* renamed from: c */
    public static final List<Class<? extends Activity>> f33950c;

    /* renamed from: d */
    public static final List<Class<? extends Activity>> f33951d;

    /* renamed from: com.mopub.common.util.ManifestUtils$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static class C8749b {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        public C8749b() {
        }
    }

    /* renamed from: com.mopub.common.util.ManifestUtils$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ManifestUtils$c.class */
    public static class C8750c {
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
            f33949b.add(cls);
            f33949b.add(cls2);
            f33949b.add(cls3);
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f33949b.add(MraidVideoPlayerActivity.class);
        f33949b.add(MoPubBrowser.class);
        ArrayList arrayList = new ArrayList(1);
        f33950c = arrayList;
        arrayList.add(MoPubBrowser.class);
        ArrayList arrayList2 = new ArrayList(1);
        f33951d = arrayList2;
        arrayList2.add(ConsentDialogActivity.class);
    }

    /* renamed from: a */
    public static C8749b m4511a(Context context, Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        C8749b bVar = new C8749b();
        bVar.hasKeyboardHidden = f33948a.hasFlag(cls, activityInfo.configChanges, 32);
        bVar.hasOrientation = f33948a.hasFlag(cls, activityInfo.configChanges, 128);
        bVar.hasScreenSize = true;
        bVar.hasScreenSize = f33948a.hasFlag(cls, activityInfo.configChanges, 1024);
        return bVar;
    }

    /* renamed from: a */
    public static List<Class<? extends Activity>> m4509a(Context context, List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m4512a(Context context) {
        Context applicationContext;
        if (isDebuggable(context) && (applicationContext = context.getApplicationContext()) != null) {
            Toast makeText = Toast.makeText(applicationContext, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
            makeText.setGravity(7, 0, 0);
            makeText.show();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4510a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> c = m4506c(context, m4509a(context, list, true));
        if (!c.isEmpty()) {
            m4512a(context);
            m4505d(context, c);
        }
    }

    /* renamed from: a */
    public static void m4508a(List<Class<? extends Activity>> list) {
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
    public static void m4507b(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> a = m4509a(context, list, false);
        if (!a.isEmpty()) {
            m4512a(context);
            m4508a(a);
        }
    }

    /* renamed from: c */
    public static List<Class<? extends Activity>> m4506c(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                C8749b a = m4511a(context, cls);
                if (!a.hasKeyboardHidden || !a.hasOrientation || !a.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    public static void checkGdprActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m4507b(context, f33951d);
            m4510a(context, f33951d);
        }
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m4507b(context, f33950c);
            m4510a(context, f33950c);
        }
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            m4507b(context, f33949b);
            m4510a(context, f33949b);
        }
    }

    /* renamed from: d */
    public static void m4505d(Context context, List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                C8749b a = m4511a(context, cls);
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

    public static boolean isDebuggable(Context context) {
        return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
    }
}
