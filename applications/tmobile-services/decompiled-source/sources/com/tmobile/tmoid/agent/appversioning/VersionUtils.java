package com.tmobile.tmoid.agent.appversioning;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.tmobile.tmoid.helperlib.C2031R;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/appversioning/VersionUtils.class */
public class VersionUtils {
    /* renamed from: b */
    public static String m5092b(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            Log.m4654d("TMO-Agent", "getCurrentVersion: " + str);
            return m5091c(str);
        } catch (PackageManager.NameNotFoundException e) {
            Log.m4652e("TMO-Agent", "Failed to getCurrentVersion: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: c */
    public static String m5091c(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("([0-9]+(\\.[0-9]+)*).*").matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
            Log.m4654d("TMO-Agent", "valid_version: " + str);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m5090d(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.agent.appversioning.VersionUtils.m5090d(android.content.Context):java.lang.String");
    }

    /* renamed from: e */
    public static void m5089e(final Activity activity, Version version) {
        if (version != null && version.m5094b() != null) {
            Version version2 = new Version(m5090d(activity));
            if (version2.m5094b() != null) {
                Log.m4654d("TMO-Agent", "onCheckNewVersion New/Old version: " + version2.m5094b() + "/" + version.m5094b());
                if (version2.compareTo(version) == 1) {
                    Log.m4648v("TMO-Agent", "Found a new version on google play");
                    activity.runOnUiThread(new Runnable() { // from class: com.tmobile.tmoid.agent.appversioning.VersionUtils.3
                        @Override // java.lang.Runnable
                        public void run() {
                            VersionUtils.m5088f(activity);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m5088f(final Context context) {
        new AlertDialog.Builder(context).setTitle(context.getResources().getString(C2031R.string.app_name)).setMessage(context.getResources().getString(C2031R.string.new_version_notice)).setNegativeButton(context.getResources().getString(C2031R.string.btn_install_now), new DialogInterface.OnClickListener() { // from class: com.tmobile.tmoid.agent.appversioning.VersionUtils.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("market://details?id=" + context.getPackageName()));
                context.startActivity(intent);
            }
        }).setPositiveButton(context.getResources().getString(C2031R.string.btn_install_later), new DialogInterface.OnClickListener() { // from class: com.tmobile.tmoid.agent.appversioning.VersionUtils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        }).show();
    }
}
