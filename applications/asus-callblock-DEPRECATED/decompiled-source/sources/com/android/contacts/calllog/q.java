package com.android.contacts.calllog;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.CallDetailActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.s;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static q f741a;

    /* renamed from: b  reason: collision with root package name */
    private final e f742b;
    private final c c;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q$a.class */
    private static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f743a = {"display_name"};

        /* renamed from: b  reason: collision with root package name */
        private final ContentResolver f744b;

        private a(ContentResolver contentResolver) {
            this.f744b = contentResolver;
        }

        /* synthetic */ a(ContentResolver contentResolver, byte b2) {
            this(contentResolver);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v10 */
        /* JADX WARN: Type inference failed for: r9v11 */
        /* JADX WARN: Type inference failed for: r9v2, types: [android.database.Cursor] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v9 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.android.contacts.calllog.q.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String a(java.lang.String r8) {
            /*
                r7 = this;
                r0 = 0
                r9 = r0
                r0 = r7
                android.content.ContentResolver r0 = r0.f744b     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                android.net.Uri r1 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                r2 = r8
                java.lang.String r2 = android.net.Uri.encode(r2)     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                java.lang.String[] r2 = com.android.contacts.calllog.q.a.f743a     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                r3 = 0
                r4 = 0
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: IllegalArgumentException -> 0x0057, all -> 0x0077
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x002b
                r0 = r8
                r9 = r0
                r0 = r8
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0084, IllegalArgumentException -> 0x0088
                r10 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0039
            L_0x002b:
                r0 = r8
                if (r0 == 0) goto L_0x0035
                r0 = r8
                r0.close()
            L_0x0035:
                r0 = 0
                r9 = r0
            L_0x0037:
                r0 = r9
                return r0
            L_0x0039:
                r0 = r8
                r9 = r0
                r0 = r8
                r1 = 0
                java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x0084, IllegalArgumentException -> 0x0088
                r11 = r0
                r0 = r11
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0037
                r0 = r8
                r0.close()
                r0 = r11
                r9 = r0
                goto L_0x0037
            L_0x0057:
                r11 = move-exception
                r0 = 0
                r8 = r0
            L_0x005b:
                r0 = r8
                r9 = r0
                java.lang.String r0 = "DefaultVoicemailNotifier"
                r1 = r11
                java.lang.String r1 = r1.toString()     // Catch: all -> 0x0084
                int r0 = android.util.Log.w(r0, r1)     // Catch: all -> 0x0084
                r0 = r8
                if (r0 == 0) goto L_0x0072
                r0 = r8
                r0.close()
            L_0x0072:
                r0 = 0
                r9 = r0
                goto L_0x0037
            L_0x0077:
                r8 = move-exception
            L_0x0078:
                r0 = r9
                if (r0 == 0) goto L_0x0082
                r0 = r9
                r0.close()
            L_0x0082:
                r0 = r8
                throw r0
            L_0x0084:
                r8 = move-exception
                goto L_0x0078
            L_0x0088:
                r11 = move-exception
                goto L_0x005b
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.q.a.a(java.lang.String):java.lang.String");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q$b.class */
    private static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f745a = {"_id", "number", "voicemail_uri"};

        /* renamed from: b  reason: collision with root package name */
        private final ContentResolver f746b;

        private b(ContentResolver contentResolver) {
            this.f746b = contentResolver;
        }

        /* synthetic */ b(ContentResolver contentResolver, byte b2) {
            this(contentResolver);
        }

        @Override // com.android.contacts.calllog.q.e
        public final d[] a() {
            d[] dVarArr;
            Cursor cursor = null;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                try {
                    cursor = this.f746b.query(CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, f745a, String.format("%s = 1 AND %s = ?", "new", "type"), new String[]{Integer.toString(4)}, "date DESC");
                    if (cursor == null) {
                        com.android.a.a.a.a(cursor);
                        dVarArr = null;
                    } else {
                        try {
                            d[] dVarArr2 = new d[cursor.getCount()];
                            while (cursor.moveToNext()) {
                                int position = cursor.getPosition();
                                String string = cursor.getString(2);
                                dVarArr2[position] = new d(ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, cursor.getLong(0)), string == null ? null : Uri.parse(string), cursor.getString(1));
                            }
                            com.android.a.a.a.a(cursor);
                            dVarArr = dVarArr2;
                        } catch (Throwable th) {
                            th = th;
                            com.android.a.a.a.a(cursor);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                dVarArr = null;
            }
            return dVarArr;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q$c.class */
    public interface c {
        String a(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q$d.class */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f747a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f748b;
        public final String c;

        public d(Uri uri, Uri uri2, String str) {
            this.f747a = uri;
            this.f748b = uri2;
            this.c = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/q$e.class */
    public interface e {
        d[] a();
    }

    private q(e eVar, c cVar) {
        this.f742b = eVar;
        this.c = cVar;
    }

    public static q a(Context context) {
        q qVar;
        synchronized (q.class) {
            try {
                if (f741a == null) {
                    ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
                    f741a = new q(new b(contentResolver, (byte) 0), new a(contentResolver, (byte) 0));
                }
                qVar = f741a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    public final void a(Context context, Uri uri) {
        Intent intent;
        d[] a2 = this.f742b.a();
        if (a2 != null) {
            if (a2.length == 0) {
                ((NotificationManager) context.getSystemService("notification")).cancel("DefaultVoicemailNotifier", 1);
                return;
            }
            Resources resources = context.getResources();
            HashMap a3 = s.a();
            d dVar = null;
            String str = null;
            for (d dVar2 : a2) {
                str = str;
                if (((String) a3.get(dVar2.c)) == null) {
                    String a4 = this.c.a(dVar2.c);
                    str = a4;
                    if (a4 == null) {
                        String charSequence = new t(context).a(dVar2.c, BuildConfig.FLAVOR).toString();
                        str = charSequence;
                        if (TextUtils.isEmpty(charSequence)) {
                            str = dVar2.c;
                        }
                    }
                    a3.put(dVar2.c, str);
                    if (!TextUtils.isEmpty(str)) {
                        str = resources.getString(2131755922, str, str);
                    }
                }
                if (uri != null && uri.equals(dVar2.f748b)) {
                    dVar = dVar2;
                }
            }
            if (uri != null && dVar == null) {
                Log.e("DefaultVoicemailNotifier", "The new call could not be found in the call log: " + uri);
            }
            Notification.Builder defaults = new Notification.Builder(context).setSmallIcon(17301630).setContentTitle(resources.getQuantityString(2131623938, a2.length, Integer.valueOf(a2.length))).setContentText(str).setDefaults(dVar != null ? -1 : 0);
            Intent intent2 = new Intent(context, CallLogNotificationsService.class);
            intent2.setAction("com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD");
            Notification.Builder autoCancel = defaults.setDeleteIntent(PendingIntent.getService(context, 0, intent2, 0)).setAutoCancel(true);
            if (a2.length == 1) {
                intent = new Intent(context, CallDetailActivity.class);
                intent.setData(a2[0].f747a);
                intent.putExtra("EXTRA_VOICEMAIL_URI", a2[0].f748b);
                Intent intent3 = new Intent(context, CallDetailActivity.class);
                intent3.setData(a2[0].f747a);
                intent3.putExtra("EXTRA_VOICEMAIL_URI", a2[0].f748b);
                intent3.putExtra("EXTRA_VOICEMAIL_START_PLAYBACK", true);
                intent3.putExtra("EXTRA_FROM_NOTIFICATION", true);
                autoCancel.addAction(2131165882, resources.getString(2131755920), PendingIntent.getActivity(context, 0, intent3, 0));
            } else {
                intent = new Intent("android.intent.action.VIEW", CallLog.Calls.CONTENT_URI);
            }
            autoCancel.setContentIntent(PendingIntent.getActivity(context, 0, intent, 0));
            if (dVar != null) {
                autoCancel.setTicker(resources.getString(2131755921, a3.get(dVar.c)));
            }
            ((NotificationManager) context.getSystemService("notification")).notify("DefaultVoicemailNotifier", 1, autoCancel.build());
        }
    }
}
