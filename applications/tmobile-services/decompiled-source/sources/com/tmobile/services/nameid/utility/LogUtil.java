package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.tmobile.services.nameid.MainApplication;
import io.realm.Realm;
import io.realm.exceptions.RealmFileException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import javax.annotation.Nullable;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/LogUtil.class */
public class LogUtil {

    /* renamed from: a */
    private static final String[] f14330a = {"VERBOSE", "DEBUG", "INFO", "WARN", "ERROR"};

    /* renamed from: b */
    private static boolean f14331b = false;

    /* renamed from: c */
    private static final int f14332c;

    static {
        int i = 0;
        if (!BuildUtils.m5853a()) {
            i = 3;
        }
        f14332c = i;
    }

    private LogUtil() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created");
    }

    /* renamed from: a */
    private static Uri m5646a(Context context) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmm", DeviceInfoUtils.m5758f());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date());
        File externalCacheDir = context.getExternalCacheDir();
        File file = new File(externalCacheDir, "3336-" + PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN") + HelpFormatter.DEFAULT_OPT_PREFIX + format + "-logcat.txt");
        try {
            FileWriter fileWriter = new FileWriter(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d").getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                fileWriter.write(readLine + "\n");
            }
            fileWriter.close();
        } catch (Throwable th) {
            m5641f("logTag#", "Error while writing logcat out.", th);
        }
        return FileProvider.m19664e(context, context.getApplicationContext().getPackageName() + ".log.file.provider", file);
    }

    /* renamed from: b */
    private static Uri m5645b(Context context) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmm", DeviceInfoUtils.m5758f());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date());
        File externalCacheDir = context.getExternalCacheDir();
        File file = new File(externalCacheDir, "3336-" + PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN") + HelpFormatter.DEFAULT_OPT_PREFIX + format + "-log.txt");
        if (!LogRequestReceiver.m5647n(file)) {
            return null;
        }
        return FileProvider.m19664e(context, context.getApplicationContext().getPackageName() + ".log.file.provider", file);
    }

    /* renamed from: c */
    static String m5644c() {
        int i;
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int i2 = 0;
        int length = stackTrace != null ? stackTrace.length : 0;
        String str = null;
        if (length != 0) {
            while (true) {
                if (i2 >= length) {
                    i = -1;
                    break;
                }
                i = i2;
                if (!"LogUtil.java".equals(stackTrace[i2].getFileName())) {
                    break;
                }
                i2++;
            }
            if (i > -1) {
                if (stackTrace[i].getMethodName().startsWith("lambda")) {
                    String j = m5637j(stackTrace[i].getMethodName());
                    String str2 = j;
                    if (j.equals("null")) {
                        str2 = "Lambda";
                    }
                    String fileName = stackTrace[i].getFileName();
                    int lineNumber = stackTrace[i].getLineNumber();
                    str = m5633n(fileName, lineNumber, str2 + "#Lambda");
                } else {
                    str = m5633n(stackTrace[i].getFileName(), stackTrace[i].getLineNumber(), stackTrace[i].getMethodName());
                }
            }
        }
        return str == null ? "" : str;
    }

    /* renamed from: d */
    public static void m5643d(String str, String str2) {
        Context l = MainApplication.m7528l();
        if (l != null) {
            m5634m(1, str, str2, l);
        }
    }

    /* renamed from: e */
    public static void m5642e(Context context) {
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "Android Logs From Scam Shield (Auth Fail)");
        intent.putExtra("android.intent.extra.TEXT", "Logs attached.\n version: 4.2.0.3336-unsignedRelease");
        if (BuildUtils.m5851c() && !BuildUtils.m5852b()) {
            intent.putExtra("android.intent.extra.EMAIL", new String[]{"tmonameidfutlogs@firstorion.com"});
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Uri b = m5645b(context);
        Uri a = m5646a(context);
        Uri g = m5640g(context);
        if (b != null) {
            arrayList.add(b);
        }
        if (a != null) {
            arrayList.add(a);
        }
        if (g != null) {
            arrayList.add(g);
        }
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        context.startActivity(Intent.createChooser(intent, "Share with:"));
    }

    /* renamed from: f */
    public static void m5641f(String str, String str2, Throwable th) {
        Context l = MainApplication.m7528l();
        if (l != null) {
            m5635l(str, str2, l, th);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public static Uri m5640g(Context context) {
        Realm G0 = Realm.m3064G0();
        File file = new File(context.getExternalCacheDir(), "default.realm");
        try {
            try {
                boolean delete = file.delete();
                boolean exists = file.exists();
                m5643d("logTag#", "Was file deleted? " + delete + " Does file exist now? " + exists);
                if (!exists) {
                    G0.m3154b0(file);
                }
            } catch (Throwable th) {
                G0.close();
                throw th;
            }
        } catch (RealmFileException | SecurityException e) {
            m5641f("logTag#", "Error while exporting Realm db.", e);
        }
        G0.close();
        return FileProvider.m19664e(context, context.getApplicationContext().getPackageName() + ".log.file.provider", file);
    }

    /* renamed from: h */
    public static void m5639h(String str, String str2) {
        Context l = MainApplication.m7528l();
        if (l != null) {
            m5634m(2, str, str2, l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m5638i(Throwable th, int i, String str, String str2) {
        String str3;
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            str3 = stringWriter.toString();
        } else {
            str3 = "";
        }
        if (LogRecorder.m5666c()) {
            LogRecorder.m5662g(i, str, str2 + str3);
        }
        FirebaseCrashlytics instance = FirebaseCrashlytics.getInstance();
        if (i == 1) {
            instance.log("D/" + str + ": " + str2);
            Log.d(str, str2);
        } else if (i == 2) {
            instance.log("I/" + str + ": " + str2);
            Log.i(str, str2);
        } else if (i == 3) {
            instance.log("W/" + str + ": " + str2);
            Log.w(str, str2);
        } else if (i != 4) {
            instance.log("V/" + str + ": " + str2);
            Log.v(str, str2);
        } else {
            instance.log("E/" + str + ": " + str2);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("\n");
            sb.append(str3);
            Log.e(str, sb.toString());
        }
    }

    /* renamed from: j */
    static String m5637j(String str) {
        int indexOf = str.indexOf("$") + 1;
        return str.substring(indexOf, str.indexOf("$", indexOf));
    }

    /* renamed from: k */
    private static void m5636k(final int i, @Nullable String str, @Nullable String str2, Context context, @Nullable final Throwable th) {
        final String str3;
        if (!f14331b && i >= f14332c) {
            final String str4 = str2;
            if (str2 == null) {
                str4 = "";
            }
            try {
                if (BuildUtils.m5852b()) {
                    str3 = m5644c();
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("nameIdPlus:");
                    String str5 = str;
                    if (str == null) {
                        str5 = "";
                    }
                    sb.append(str5);
                    str3 = sb.toString();
                }
                new Handler(context.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.utility.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LogUtil.m5638i(th, i, str3, str4);
                    }
                });
                Intent intent = new Intent("com.privacystar.android.intent.logIntent");
                intent.putExtra("logServerity", f14330a[i]);
                intent.putExtra("logTag#", str3);
                intent.putExtra("logMessage", str4);
                context.sendBroadcast(intent);
            } catch (Exception e) {
                Log.e("logTag#", "error trying to log", e);
            }
        }
    }

    /* renamed from: l */
    private static void m5635l(@Nullable String str, @Nullable String str2, Context context, @Nullable Throwable th) {
        m5636k(4, str, str2, context, th);
    }

    /* renamed from: m */
    private static void m5634m(int i, @Nullable String str, @Nullable String str2, Context context) {
        m5636k(i, str, str2, context, null);
    }

    /* renamed from: n */
    static String m5633n(String str, int i, String str2) {
        return String.format(Locale.US, "(%1$s:%2$d)#%3$s", str, Integer.valueOf(i), str2);
    }

    /* renamed from: o */
    public static void m5632o(String str, String str2) {
        Context l = MainApplication.m7528l();
        if (l != null) {
            m5634m(0, str, str2, l);
        }
    }

    /* renamed from: p */
    public static void m5631p(String str, String str2) {
        Context l = MainApplication.m7528l();
        if (l != null) {
            m5634m(3, str, str2, l);
        }
    }
}
