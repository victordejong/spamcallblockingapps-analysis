package com.asus.contacts.yellowpage;

import android.content.Context;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/s.class */
public class s implements r {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2868a = s.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static s f2869b = null;
    private a c = null;
    private String d = "2";

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/s$a.class */
    public static final class a extends AsyncTask<Void, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        private Context f2870a;

        /* renamed from: b  reason: collision with root package name */
        private r f2871b;
        private int c;

        public a(Context context, r rVar, int i) {
            this.f2870a = context;
            this.f2871b = rVar;
            this.c = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:95:0x0326  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String a() {
            /*
                Method dump skipped, instructions count: 1071
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.s.a.a():java.lang.String");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            Log.d(s.f2868a, "StatusCheckerTask finished. Result:" + str);
        }
    }

    public static s a() {
        if (f2869b == null) {
            synchronized (s.class) {
                try {
                    if (f2869b == null) {
                        f2869b = new s();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2869b;
    }

    public static String a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("key_yellow_page_cdn_status", "0");
    }

    public static String a(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str2 = (String) cls.getMethod("get", String.class).invoke(cls.newInstance(), str);
        } catch (Exception e) {
            Log.d(f2868a, "getSystemProperty " + e.getMessage());
            str2 = null;
        }
        return str2;
    }

    public static String b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("key_yellow_page_cdn_promotion_status", "0");
    }

    static /* synthetic */ String b(String str) {
        String a2 = a("debug.cdn_path");
        return (TextUtils.isEmpty(a2) || !a2.equals("1")) ? (TextUtils.isEmpty(a2) || !a2.equals("2")) ? "https://dlcdnamaxcontacts.asus.com/Rel/App/AsusContacts/" + str + "/cg_setup.xml" : "http://amaxcdntest.asus.com/AsusContacts/" + str + "/callguard_version_check.xml" : "http://amaxcdntest.asus.com/AsusContacts/" + str + "/callguard_version_check_dev.xml";
    }

    public final void a(Context context, int i) {
        if (context != null) {
            if (this.c == null || !(this.c == null || this.c.getStatus() == AsyncTask.Status.PENDING || this.c.getStatus() == AsyncTask.Status.RUNNING)) {
                this.c = new a(context.getApplicationContext(), this, i);
                this.c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
    }
}
