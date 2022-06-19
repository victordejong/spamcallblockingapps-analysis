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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils.class */
public class ManifestUtils {

    /* renamed from: a */
    public static C2660c f8710a = new C2660c();

    /* renamed from: b */
    public static final List<Class<? extends Activity>> f8711b;

    /* renamed from: c */
    public static final List<Class<? extends Activity>> f8712c;

    /* renamed from: d */
    public static final List<Class<? extends Activity>> f8713d;

    /* renamed from: com.mopub.common.util.ManifestUtils$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils$b.class */
    public static class C2659b {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        public C2659b() {
        }

        public C2659b(C2658a c2658a) {
        }
    }

    /* renamed from: com.mopub.common.util.ManifestUtils$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ManifestUtils$c.class */
    public static class C2660c {
        public boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        f8711b = arrayList;
        try {
            arrayList.add(Class.forName("com.mopub.mobileads.MoPubFullscreenActivity"));
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ManifestUtils running without interstitial module");
        }
        f8711b.add(MoPubBrowser.class);
        ArrayList arrayList2 = new ArrayList(1);
        f8712c = arrayList2;
        arrayList2.add(MoPubBrowser.class);
        ArrayList arrayList3 = new ArrayList(1);
        f8713d = arrayList3;
        arrayList3.add(ConsentDialogActivity.class);
    }

    private ManifestUtils() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m36262a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> m36260c = m36260c(context, list, true);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m36260c).iterator();
        while (it.hasNext()) {
            Class cls = (Class) it.next();
            try {
                C2659b m36259d = m36259d(context, cls);
                if (!m36259d.hasKeyboardHidden || !m36259d.hasOrientation || !m36259d.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        m36258e(context);
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Class cls2 = (Class) it2.next();
            try {
                C2659b m36259d2 = m36259d(context, cls2);
                if (!m36259d2.hasKeyboardHidden) {
                    StringBuilder m8728C = C22128a.m8728C("\n\tThe android:configChanges param for activity ");
                    m8728C.append(cls2.getName());
                    m8728C.append(" must include keyboardHidden.");
                    sb.append(m8728C.toString());
                }
                if (!m36259d2.hasOrientation) {
                    StringBuilder m8728C2 = C22128a.m8728C("\n\tThe android:configChanges param for activity ");
                    m8728C2.append(cls2.getName());
                    m8728C2.append(" must include orientation.");
                    sb.append(m8728C2.toString());
                }
                if (!m36259d2.hasScreenSize) {
                    StringBuilder m8728C3 = C22128a.m8728C("\n\tThe android:configChanges param for activity ");
                    m8728C3.append(cls2.getName());
                    m8728C3.append(" must include screenSize.");
                    sb.append(m8728C3.toString());
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m36261b(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = (ArrayList) m36260c(context, list, false);
        if (arrayList.isEmpty()) {
            return;
        }
        m36258e(context);
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append("\n\t");
            sb.append(((Class) it.next()).getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, sb.toString());
    }

    /* renamed from: c */
    public static List<Class<? extends Activity>> m36260c(Context context, List<Class<? extends Activity>> list, boolean z) {
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
        List<Class<? extends Activity>> list = f8713d;
        m36261b(context, list);
        m36262a(context, list);
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f8712c;
        m36261b(context, list);
        m36262a(context, list);
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (!Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            return;
        }
        List<Class<? extends Activity>> list = f8711b;
        m36261b(context, list);
        m36262a(context, list);
    }

    /* renamed from: d */
    public static C2659b m36259d(Context context, Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        C2660c c2660c = f8710a;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        C2659b c2659b = new C2659b(null);
        c2659b.hasKeyboardHidden = c2660c.hasFlag(cls, activityInfo.configChanges, 32);
        c2659b.hasOrientation = c2660c.hasFlag(cls, activityInfo.configChanges, 128);
        c2659b.hasScreenSize = true;
        c2659b.hasScreenSize = c2660c.hasFlag(cls, activityInfo.configChanges, 1024);
        return c2659b;
    }

    /* renamed from: e */
    public static void m36258e(Context context) {
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
