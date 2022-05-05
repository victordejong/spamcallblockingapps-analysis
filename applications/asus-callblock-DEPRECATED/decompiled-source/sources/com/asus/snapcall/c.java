package com.asus.snapcall;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.support.v4.b.e;
import android.support.v4.view.p;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.g;
import com.asus.privatecontacts.b.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/snapcall/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f3090a;

    /* renamed from: b  reason: collision with root package name */
    private static int f3091b;
    private static ArrayList<Integer> d;
    private static int e;
    private static boolean c = false;
    private static e<Integer> f = new e<>();
    private static e<Boolean> g = new e<>();

    /* loaded from: classes-dex2jar.jar:com/asus/snapcall/c$a.class */
    private static final class a extends AsyncTask<Void, Integer, Integer> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Context> f3093a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<ImageView> f3094b;
        private WeakReference<View> c;
        private long d;
        private String e;

        a(Context context, ImageView imageView, View view, long j, String str) {
            this.f3093a = new WeakReference<>(context);
            this.f3094b = new WeakReference<>(imageView);
            this.c = new WeakReference<>(view);
            this.d = j;
            this.e = str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            int i;
            if (g.b(this.f3093a.get(), this.e) || f.a(this.f3093a.get(), this.e)) {
                i = 0;
            } else if (this.f3093a.get() != null) {
                c.a(this.f3093a.get(), this.d, this.e);
                c.b(this.f3093a.get(), this.d, this.e);
                i = c.a(this.f3093a.get(), this.d) ? 1 : 2;
            } else {
                i = -1;
            }
            return i;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            c.g.b(this.d);
            Integer num3 = num2;
            if (num2 == null) {
                num3 = -1;
            }
            switch (num3.intValue()) {
                case p.POSITION_UNCHANGED /* -1 */:
                    Log.e("SnapCallUtil", "[CheckSnapCallStatusAsyncTask] error result");
                    return;
                case 0:
                    if (!(this.f3094b.get() == null || this.c.get() == null)) {
                        this.f3094b.get().setVisibility(8);
                        this.c.get().setVisibility(8);
                    }
                    c.f.a(this.d, 0);
                    return;
                case 1:
                    c.f.a(this.d, 1);
                    if (this.f3093a.get() != null && this.f3094b.get() != null && this.c.get() != null) {
                        c.b(this.f3093a.get(), this.f3094b.get(), true);
                        this.c.get().setOnClickListener(new b(this.f3093a.get(), this.f3094b.get(), this.d, this.e, true, (byte) 0));
                        this.c.get().setClickable(true);
                        return;
                    }
                    return;
                case 2:
                    c.f.a(this.d, 2);
                    if (this.f3093a.get() != null && this.f3094b.get() != null && this.c.get() != null) {
                        c.b(this.f3093a.get(), this.f3094b.get(), false);
                        this.c.get().setOnClickListener(new b(this.f3093a.get(), this.f3094b.get(), this.d, this.e, false, (byte) 0));
                        this.c.get().setClickable(true);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/snapcall/c$b.class */
    private static final class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Context> f3095a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<ImageView> f3096b;
        private long c;
        private String d;
        private boolean e;

        private b(Context context, ImageView imageView, long j, String str, boolean z) {
            this.f3095a = new WeakReference<>(context);
            this.f3096b = new WeakReference<>(imageView);
            this.c = j;
            this.d = str;
            this.e = z;
        }

        /* synthetic */ b(Context context, ImageView imageView, long j, String str, boolean z, byte b2) {
            this(context, imageView, j, str, z);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f3095a.get() == null || this.f3096b.get() == null) {
                Log.w("SnapCallUtil", "[OnSnapCallClickListener] weak reference has been recycled");
            } else if (!this.e) {
                String a2 = c.a(this.f3095a.get(), this.d);
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(c.b(this.f3095a.get())));
                contentValues.put("data", Long.valueOf(this.c));
                contentValues.put("phone", a2);
                Uri insert = this.f3095a.get().getContentResolver().insert(SnapCallContentProvider.f3084a, contentValues);
                if (insert != null) {
                    Log.d("SnapCallUtil", "In onCheckedChanged checked,  " + insert.toString() + " inserted!!!");
                }
                this.e = true;
                c.b(this.f3095a.get(), this.f3096b.get(), true);
                c.f.a(this.c, 1);
                Toast.makeText(this.f3095a.get(), 2131756188, 0).show();
            } else {
                Log.d("SnapCallUtil", "In onCheckedChanged unchecked, total " + this.f3095a.get().getContentResolver().delete(SnapCallContentProvider.f3084a, "data = " + this.c, null) + " records are deleted!!!");
                this.e = false;
                c.b(this.f3095a.get(), this.f3096b.get(), false);
                c.f.a(this.c, 2);
            }
        }
    }

    public static String a(Context context, String str) {
        return g.a(context, str);
    }

    public static void a(int i) {
        e = i;
    }

    public static void a(Context context) {
        f3090a = PreferenceManager.getDefaultSharedPreferences(context).getInt("pref_snap_call_number_list_id", 100);
    }

    public static void a(Context context, long j, String str) {
        Cursor cursor;
        Throwable th;
        String a2 = g.a(context, str);
        try {
            cursor = context.getContentResolver().query(SnapCallContentProvider.f3084a, null, "data = " + j, null, "_id ASC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        if (!a2.equals(cursor.getString(cursor.getColumnIndex("phone")))) {
                            int i = cursor.getInt(cursor.getColumnIndex("_id"));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_id", Integer.valueOf(i));
                            contentValues.put("data", Long.valueOf(j));
                            contentValues.put("phone", a2);
                            Log.d("SnapCallUtil", "In checkDataUpdated,  row " + context.getContentResolver().update(Uri.parse("content://com.asus.snapcall.provider/numbers/" + i), contentValues, null, null) + " updated!!!");
                        }
                        cursor.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public static void a(Context context, ImageView imageView, View view, long j, String str) {
        if (PhoneCapabilityTester.isUsingTwoPanes(context)) {
            imageView.setVisibility(8);
            view.setVisibility(8);
            return;
        }
        imageView.setImageResource(2131165346);
        b(context, imageView, false);
        view.setClickable(false);
        if (f.a(j) != null) {
            int intValue = f.a(j).intValue();
            if (intValue == 0) {
                imageView.setVisibility(8);
                view.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                view.setVisibility(0);
            }
            b(context, imageView, intValue == 1);
            imageView.setOnClickListener(new b(context, imageView, j, str, intValue == 1, (byte) 0));
            view.setClickable(true);
        } else if (g.a(j) == null) {
            g.a(j, true);
            imageView.setVisibility(0);
            view.setVisibility(0);
            try {
                new a(context, imageView, view, j, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.e("SnapCallUtil", e2.getMessage());
            }
        } else {
            imageView.setVisibility(0);
            view.setVisibility(0);
        }
    }

    public static void a(boolean z) {
        c = z;
    }

    public static boolean a() {
        return c;
    }

    public static boolean a(Context context, long j) {
        Throwable th;
        Cursor cursor;
        boolean z;
        try {
            Cursor query = context.getContentResolver().query(SnapCallContentProvider.f3084a, null, "data = " + j, null, "_id ASC");
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        query.close();
                        if (query != null) {
                            query.close();
                        }
                        z = true;
                        return z;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
                if (query != null) {
                    query.close();
                }
                z = false;
            } else {
                if (query != null) {
                    query.close();
                }
                z = false;
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public static boolean a(Context context, Integer num) {
        boolean z;
        if (d == null) {
            e(context);
        }
        if (!d.contains(num)) {
            d.add(num);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public static boolean a(Integer num) {
        return d != null && d.remove(num);
    }

    public static int b() {
        return e;
    }

    public static int b(Context context) {
        f3090a++;
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("pref_snap_call_number_list_id", f3090a).apply();
        return f3090a;
    }

    public static void b(Context context, long j, String str) {
        Cursor cursor;
        String a2 = g.a(context, str);
        Uri uri = SnapCallContentProvider.f3084a;
        try {
            cursor = context.getContentResolver().query(uri, null, "PHONE_NUMBERS_EQUAL( phone, ?, 0)", new String[]{a2}, "_id ASC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        if (cursor.getCount() > 1) {
                            Log.d("SnapCallUtil", "In checkContactsIdUpdated, numberCursor count = " + cursor.getCount());
                            Log.w("SnapCallUtil", "In checkContactsIdUpdated, duplicate number exists, total " + context.getContentResolver().delete(uri, "PHONE_NUMBERS_EQUAL( phone, ?, 0)", new String[]{a2}) + " records are deleted!!!");
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_id", Integer.valueOf(b(context)));
                            contentValues.put("data", Long.valueOf(j));
                            contentValues.put("phone", a2);
                            Uri insert = context.getContentResolver().insert(uri, contentValues);
                            if (insert != null) {
                                Log.d("SnapCallUtil", "In checkContactsIdUpdated,  " + insert.toString() + " inserted!!!");
                            }
                        } else if (j != cursor.getLong(cursor.getColumnIndex("data"))) {
                            int i = cursor.getInt(cursor.getColumnIndex("_id"));
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("_id", Integer.valueOf(i));
                            contentValues2.put("data", Long.valueOf(j));
                            contentValues2.put("phone", a2);
                            Log.d("SnapCallUtil", "In checkContactsIdUpdated,  row " + context.getContentResolver().update(Uri.parse("content://com.asus.snapcall.provider/numbers/" + i), contentValues2, null, null) + " updated!!!");
                        }
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, ImageView imageView, boolean z) {
        Drawable b2 = android.support.v4.a.a.a.b(context.getDrawable(2131165346));
        android.support.v4.a.a.a.a(b2, z ? context.getResources().getColor(2131034406) : context.getResources().getColor(2131034180));
        imageView.setImageDrawable(b2);
    }

    public static boolean b(Context context, String str) {
        Throwable th;
        Cursor cursor;
        boolean z;
        if (str == null) {
            z = false;
        } else {
            String a2 = g.a(context, str);
            Uri uri = SnapCallContentProvider.f3084a;
            if (!c(context, str)) {
                Log.d("SnapCallUtil", "This number does not belong to any contacts");
                z = false;
            } else {
                try {
                    Cursor query = context.getContentResolver().query(uri, null, "PHONE_NUMBERS_EQUAL( phone, ?, 0)", new String[]{a2}, "_id ASC");
                    if (query != null) {
                        try {
                            if (query.getCount() > 0) {
                                query.close();
                                if (query != null) {
                                    query.close();
                                }
                                z = true;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (query != null) {
                        query.close();
                        if (query != null) {
                            query.close();
                        }
                        z = false;
                    } else {
                        if (query != null) {
                            query.close();
                        }
                        z = false;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
        }
        return z;
    }

    public static void c() {
        f.b();
        g.b();
    }

    public static void c(Context context) {
        f3091b = PreferenceManager.getDefaultSharedPreferences(context).getInt("pref_snap_call_call_list_id", 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c(android.content.Context r7, java.lang.String r8) {
        /*
            android.net.Uri r0 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI
            r1 = r8
            java.lang.String r1 = android.net.Uri.encode(r1)
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)
            r8 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x003c
            r1 = r8
            java.lang.String[] r2 = com.android.contacts.calllog.u.f761a     // Catch: all -> 0x003c
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x003c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0037
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x004b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0037
            r0 = 1
            r9 = r0
        L_0x002b:
            r0 = r7
            if (r0 == 0) goto L_0x0035
            r0 = r7
            r0.close()
        L_0x0035:
            r0 = r9
            return r0
        L_0x0037:
            r0 = 0
            r9 = r0
            goto L_0x002b
        L_0x003c:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L_0x003f:
            r0 = r7
            if (r0 == 0) goto L_0x0049
            r0 = r7
            r0.close()
        L_0x0049:
            r0 = r8
            throw r0
        L_0x004b:
            r8 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.snapcall.c.c(android.content.Context, java.lang.String):boolean");
    }

    public static int d(Context context) {
        f3091b++;
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("pref_snap_call_call_list_id", f3091b).apply();
        return f3091b;
    }

    public static ArrayList<Integer> e(Context context) {
        Throwable th;
        Cursor cursor;
        if (d == null) {
            d = new ArrayList<>();
            try {
                cursor = context.getContentResolver().query(SnapCallContentProvider.f3085b, null, null, null, "_id ASC");
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0) {
                            cursor.moveToFirst();
                            do {
                                d.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("call_id"))));
                            } while (cursor.moveToNext());
                            cursor.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
        return d;
    }

    public static void f(final Context context) {
        e(context);
        if (d != null && !d.isEmpty()) {
            Iterator<Integer> it = d.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                Uri uri = CallLog.Calls.CONTENT_URI;
                String[] strArr = {String.valueOf(intValue)};
                int delete = context.getContentResolver().delete(uri, "_id= ?", strArr);
                context.getContentResolver().delete(SnapCallContentProvider.f3085b, "_id= ?", strArr);
                if (delete > 0) {
                    Log.d("SnapCallUtil", "clearSnapCallInCallLog, delete " + delete + " item from call log");
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.asus.snapcall.c.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(17, context, "Deletion", "Delete call log", "Delete call log from snap call", null);
                        }
                    });
                }
            }
            d.clear();
        }
    }
}
