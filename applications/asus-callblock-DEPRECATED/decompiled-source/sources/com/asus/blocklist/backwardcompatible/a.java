package com.asus.blocklist.backwardcompatible;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2501a = a.class.getSimpleName() + "_backwardcompatible";

    /* renamed from: com.asus.blocklist.backwardcompatible.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/a$a.class */
    public interface AbstractC0066a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2502a = Uri.parse("content://blocklist/blocklist");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/a$b.class */
    private static final class b extends AsyncTask<Void, Void, Integer> {

        /* renamed from: a  reason: collision with root package name */
        private Context f2503a;

        /* renamed from: b  reason: collision with root package name */
        private int f2504b;
        private String c;
        private long d;
        private Uri e;

        private b(Context context, int i) {
            this.f2503a = context;
            this.f2504b = i;
        }

        public b(Context context, int i, long j) {
            this(context, i);
            this.d = j;
        }

        public b(Context context, int i, String str) {
            this(context, i);
            this.c = str;
        }

        public b(Context context, Uri uri) {
            this(context, 6);
            this.e = uri;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0394  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x03cf  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0403  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0330  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Integer a() {
            /*
                Method dump skipped, instructions count: 1042
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.b.a():java.lang.Integer");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            return a();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00dc  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected final /* synthetic */ void onPostExecute(java.lang.Integer r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Integer r0 = (java.lang.Integer) r0
                r6 = r0
                r0 = r5
                android.content.Context r0 = r0.f2503a
                if (r0 == 0) goto L_0x00f7
                r0 = r5
                android.content.Context r0 = r0.f2503a
                android.content.res.Resources r0 = r0.getResources()
                if (r0 == 0) goto L_0x00f7
                r0 = r5
                int r0 = r0.f2504b
                switch(r0) {
                    case 0: goto L_0x0041;
                    case 1: goto L_0x0063;
                    case 2: goto L_0x0041;
                    case 3: goto L_0x00a5;
                    case 4: goto L_0x00c7;
                    case 5: goto L_0x00a5;
                    default: goto L_0x0040;
                }
            L_0x0040:
                return
            L_0x0041:
                r0 = r6
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L_0x0063
                r0 = r5
                android.content.Context r0 = r0.f2503a
                boolean r0 = r0 instanceof com.android.contacts.activities.ContactDetailActivity
                if (r0 == 0) goto L_0x0063
                r0 = r5
                android.content.Context r0 = r0.f2503a
                com.android.contacts.activities.ContactDetailActivity r0 = (com.android.contacts.activities.ContactDetailActivity) r0
                com.android.contacts.detail.ContactDetailLayoutController r0 = r0.getContactDetailLayoutController()
                com.android.contacts.detail.ContactDetailFragment r0 = r0.getContactDetailFragment()
                r0.updateAdapter()
            L_0x0063:
                r0 = r6
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L_0x0077
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.String r1 = "add number to backward compatible blocklist result:SUCCESS"
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0040
            L_0x0077:
                r0 = r6
                int r0 = r0.intValue()
                r1 = -1
                if (r0 != r1) goto L_0x008b
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.String r1 = "add number to backward compatible blocklist result:ALREADY_EXIST"
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0040
            L_0x008b:
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                java.lang.String r3 = "add number to backward compatible blocklist resultcode:"
                r2.<init>(r3)
                r2 = r6
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0040
            L_0x00a5:
                r0 = r6
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L_0x00c7
                r0 = r5
                android.content.Context r0 = r0.f2503a
                boolean r0 = r0 instanceof com.android.contacts.activities.ContactDetailActivity
                if (r0 == 0) goto L_0x00c7
                r0 = r5
                android.content.Context r0 = r0.f2503a
                com.android.contacts.activities.ContactDetailActivity r0 = (com.android.contacts.activities.ContactDetailActivity) r0
                com.android.contacts.detail.ContactDetailLayoutController r0 = r0.getContactDetailLayoutController()
                com.android.contacts.detail.ContactDetailFragment r0 = r0.getContactDetailFragment()
                r0.updateAdapter()
            L_0x00c7:
                r0 = r6
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L_0x00dc
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.String r1 = "remove number from backward compatible blocklist result:SUCCESS"
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0040
            L_0x00dc:
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                java.lang.String r3 = "remove number from backward compatible blocklist resultcode:"
                r2.<init>(r3)
                r2 = r6
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0040
            L_0x00f7:
                java.lang.String r0 = com.asus.blocklist.backwardcompatible.a.f2501a
                java.lang.String r1 = "onPostExecute fail due to the context is null."
                int r0 = android.util.Log.e(r0, r1)
                goto L_0x0040
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.b.onPostExecute(java.lang.Object):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/a$c.class */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2505a = Uri.parse("content://blocklist/blocktag");
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r7, long r8) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.a(android.content.Context, long):int");
    }

    private static String a(String str) {
        return TextUtils.isEmpty(str) ? new String(BuildConfig.FLAVOR) : str.length() > 3 ? new String("*****" + str.substring(str.length() - 3)) : new String("*****" + str.substring(str.length() - 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.a(android.content.Context):java.util.ArrayList");
    }

    public static void a(Context context, Uri uri) {
        Log.d(f2501a, "deleteBlockListByUriAsync with uri");
        new b(context, uri).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static boolean a(Context context, String str) {
        return a(context, str, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc  */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.a(android.content.Context, java.lang.String, int):boolean");
    }

    public static void b(Context context, long j) {
        Log.d(f2501a, "addBlockListByContactAsync with contactid > 0 ? " + (j > 0));
        new b(context, 0, j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        g.a(context, j);
    }

    public static boolean b(Context context, String str) {
        return c(context, str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.b(android.content.Context, java.lang.String, int):boolean");
    }

    public static void c(Context context, long j) {
        Log.d(f2501a, "deleteBlockListByContactAsync with contactid > 0 ? " + (j > 0));
        new b(context, 3, j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        g.b(context, j);
    }

    public static void c(Context context, String str) {
        Log.d(f2501a, "addBlockListByNumberAsync with number:" + a(str));
        if (g.a(str)) {
            new b(context, 1, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new b(context, 2, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
        g.e(context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.content.Context r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.c(android.content.Context, java.lang.String, int):boolean");
    }

    public static void d(Context context, String str) {
        Log.d(f2501a, "deleteBlockListByNumberAsync with number:" + a(str));
        if (g.a(str)) {
            new b(context, 4, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new b(context, 5, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
        g.f(context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int e(android.content.Context r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.e(android.content.Context, java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int f(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.a.f(android.content.Context, java.lang.String):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(Context context, String str) {
        int i = 1;
        Log.d(f2501a, "deleteBlockListByPhoneNumber with number:" + a(str));
        if (context == null || context.getContentResolver() == null) {
            Log.e(f2501a, "Fail to delete due to the context is null.");
            i = -4;
        } else if (TextUtils.isEmpty(str)) {
            Log.e(f2501a, "Fail to delete number due to the number is empty or null.");
            i = -2;
        } else if (!g.a(str)) {
            try {
                if (context.getContentResolver().delete(AbstractC0066a.f2502a, "PHONE_NUMBERS_EQUAL( displayname, ?, 0)", new String[]{str}) > 0) {
                    Log.d(f2501a, "deleteBlockListByPhoneNumber result:SUCCESS");
                } else {
                    Log.d(f2501a, "deleteBlockListByPhoneNumber resultcode:-5");
                    i = -5;
                }
            } catch (Exception e) {
                Log.e(f2501a, "Fail to delete number due to: " + e.toString());
                i = -3;
            }
        } else {
            Log.e(f2501a, "Fail to delete number due to the number is SIP number.");
            i = -2;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(Context context, String str) {
        Log.d(f2501a, "deleteBlockListBySIPNumber with number:" + a(str));
        int i = -5;
        if (context == null || context.getContentResolver() == null) {
            Log.e(f2501a, "Fail to delete due to the context is null.");
            i = -4;
        } else if (TextUtils.isEmpty(str)) {
            Log.e(f2501a, "Fail to delete number due to the number is empty or null.");
            i = -2;
        } else if (g.a(str)) {
            try {
                if (context.getContentResolver().delete(AbstractC0066a.f2502a, "displayname='" + str + "' ", null) > 0) {
                    i = 1;
                    Log.d(f2501a, "deleteBlockListBySIPNumber result:SUCCESS");
                } else {
                    Log.d(f2501a, "deleteBlockListBySIPNumber resultcode:-5");
                }
            } catch (Exception e) {
                Log.e(f2501a, "Fail to delete number due to: " + e.toString());
                i = -3;
            }
        } else {
            Log.e(f2501a, "Fail to delete number due to the number is not SIP number.");
            i = -2;
        }
        return i;
    }
}
