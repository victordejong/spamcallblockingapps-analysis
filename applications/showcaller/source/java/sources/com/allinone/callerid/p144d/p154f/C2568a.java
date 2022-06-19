package com.allinone.callerid.p144d.p154f;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.os.Environment;
import android.telecom.TelecomManager;
import android.view.KeyEvent;
import androidx.core.content.C0586a;
import com.allinone.callerid.callscreen.activitys.acceptcall.AcceptCallActivity;
import com.allinone.callerid.customview.SortToken;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.service.NLService;
import com.allinone.callerid.util.C3863u;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
/* renamed from: com.allinone.callerid.d.f.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/a.class */
public class C2568a {

    /* renamed from: a */
    public static final String f8982a = EZCallApplication.m26146c().getExternalFilesDir("") + "/CallScreen/Video/";

    /* renamed from: b */
    public static final String f8983b = EZCallApplication.m26146c().getExternalFilesDir("") + "/CallScreen/Audio/";

    /* renamed from: c */
    public static final String f8984c = EZCallApplication.m26146c().getExternalFilesDir("") + "/CallScreen/Audio/diy.aac";

    /* renamed from: d */
    public static boolean f8985d = false;

    /* renamed from: e */
    public static boolean f8986e = false;

    /* renamed from: f */
    private static Pattern f8987f = Pattern.compile("[\\\\/:*?\"<>|]");

    /* renamed from: a */
    public static void m27104a(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
            if (C0586a.m33353a(context, "android.permission.ANSWER_PHONE_CALLS") != 0) {
                return;
            }
            telecomManager.acceptRingingCall();
        } else if (i > 20) {
            m27096i(context);
        } else {
            Intent intent = new Intent(context, AcceptCallActivity.class);
            intent.addFlags(276856832);
            context.startActivity(intent);
        }
    }

    /* renamed from: b */
    public static String m27103b(String str) {
        return str == null ? null : f8987f.matcher(str).replaceAll("");
    }

    /* renamed from: c */
    public static String m27102c(String str) {
        if (str == null) {
            return "#";
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.substring(0, 1).toUpperCase(Locale.CHINESE);
        String str2 = "#";
        if (upperCase.matches("[A-Z]")) {
            str2 = upperCase.toUpperCase(Locale.CHINESE);
        }
        return str2;
    }

    /* renamed from: d */
    public static String m27101d(String str) {
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.trim().substring(0, 1).toUpperCase(Locale.CHINESE);
        return upperCase.matches("[A-Z]") ? upperCase.toUpperCase(Locale.CHINESE) : "#";
    }

    /* renamed from: e */
    public static boolean m27100e() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* renamed from: f */
    public static SortToken m27099f(String str) {
        SortToken sortToken = new SortToken();
        if (str != null && str.length() > 0) {
            String[] split = str.replace(" ", "").split("[\\u4E00-\\u9FA5]+");
            int length = split.length;
            for (int i = 0; i < length; i++) {
                if (split[i].length() > 0) {
                    sortToken.f8654d += split[i].charAt(0);
                    sortToken.f8655e += split[i];
                }
            }
        }
        return sortToken;
    }

    /* renamed from: g */
    public static byte[] m27098g(String str) {
        try {
            byte[] bArr = new byte[1024];
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: h */
    public static void m27097h(Activity activity, int i) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("video/*");
        intent.addCategory("android.intent.category.OPENABLE");
        activity.startActivityForResult(intent, i);
    }

    @TargetApi(21)
    /* renamed from: i */
    private static void m27096i(Context context) {
        MediaController next;
        MediaSessionManager mediaSessionManager = (MediaSessionManager) context.getSystemService("media_session");
        if (mediaSessionManager != null) {
            try {
                Iterator<MediaController> it = mediaSessionManager.getActiveSessions(new ComponentName(context, NLService.class)).iterator();
                do {
                    if (!it.hasNext()) {
                        return;
                    }
                    next = it.next();
                } while (!"com.android.server.telecom".equals(next.getPackageName()));
                next.dispatchMediaButtonEvent(new KeyEvent(0, 79));
                next.dispatchMediaButtonEvent(new KeyEvent(1, 79));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
