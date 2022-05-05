package com.android.contacts.calllog;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MergeCursor;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.CallLog;
import android.provider.VoicemailContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/m.class */
public final class m extends AsyncQueryHandler {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f732b = new String[0];
    private static final long f = TimeUnit.DAYS.toMillis(7);
    private Context c;
    private final WeakReference<b> g;
    private Cursor h;
    private Cursor i;
    private int j;
    private String d = null;

    /* renamed from: a  reason: collision with root package name */
    public String f733a = null;
    private ArrayList<String> e = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/m$a.class */
    protected final class a extends AsyncQueryHandler.WorkerHandler {
        public a(Looper looper) {
            super(m.this, looper);
        }

        @Override // android.content.AsyncQueryHandler.WorkerHandler, android.os.Handler
        public final void handleMessage(Message message) {
            try {
                super.handleMessage(message);
            } catch (SQLiteDatabaseCorruptException e) {
                Log.w("CallLogQueryHandler", "Exception on background worker thread", e);
            } catch (SQLiteDiskIOException e2) {
                Log.w("CallLogQueryHandler", "Exception on background worker thread", e2);
            } catch (SQLiteFullException e3) {
                Log.w("CallLogQueryHandler", "Exception on background worker thread", e3);
            } catch (Exception e4) {
                Log.w("CallLogQueryHandler", "Exception on background worker thread", e4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/m$b.class */
    public interface b {
        void a(Cursor cursor);

        void b(Cursor cursor);
    }

    public m(Context context, ContentResolver contentResolver, b bVar) {
        super(contentResolver);
        this.c = context;
        this.g = new WeakReference<>(bVar);
    }

    private void a(int i, int i2, boolean z, int i3) {
        String str;
        String format = String.format("%s > ?", "date");
        ArrayList a2 = r.a(Long.toString(System.currentTimeMillis() - f));
        String str2 = format;
        if (!z) {
            str2 = String.format("NOT (%s)", format);
        }
        String str3 = str2;
        if (i3 > 0) {
            str3 = String.format("(%s) AND (%s = ?)", str2, "type");
            a2.add(Integer.toString(i3));
        }
        if (PhoneCapabilityTester.IsAsusDevice()) {
            str3 = String.format("(%s) AND (contact_id = 0)", str3);
        }
        String str4 = str3;
        if (this.e != null) {
            str4 = str3;
            if (this.e.contains("CALLS_FILTER_OUT_BLOCKED_NUMBERS")) {
                ArrayList<String> a3 = g.h(this.c) ? com.asus.blocklist.backwardcompatible.a.a(this.c) : g.a(this.c);
                str4 = str3;
                if (a3.size() > 0) {
                    String str5 = new String(BuildConfig.FLAVOR);
                    for (int i4 = 0; i4 < a3.size(); i4++) {
                        String str6 = a3.get(i4);
                        if (g.a(str6)) {
                            str5 = TextUtils.isEmpty(str5) ? " (number <> '" + str6 + "') " : str5 + " AND (number <> '" + str6 + "') ";
                        } else {
                            str5 = TextUtils.isEmpty(str5) ? " (PHONE_NUMBERS_EQUAL(number, ?, 0) <> 1) " : str5 + " AND (PHONE_NUMBERS_EQUAL(number, ?, 0) <> 1) ";
                            a2.add(str6);
                        }
                    }
                    str4 = String.format("(%s) AND (%s)", str3, str5);
                }
            }
        }
        String str7 = str4;
        if (this.e != null) {
            str7 = str4;
            if (this.e.contains("CALLS_FILTER_OUT_PRIVATE_CALLS")) {
                str7 = String.format("(%s) AND (number IS NOT NULL AND number <> '')", str4);
            }
        }
        if (this.d != null) {
            this.d = this.d.replace("'", "''");
            str = String.format("(%s) AND ( (number LIKE '%%%s%%') OR (name LIKE '%%%s%%') ) ", str7, this.d, this.d);
        } else {
            str = str7;
        }
        startQuery(i, Integer.valueOf(i2), PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI.buildUpon().appendQueryParameter("limit", Integer.toString(1000)).build() : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL.buildUpon().appendQueryParameter("limit", Integer.toString(1000)).build(), l.g, str, (String[]) a2.toArray(f732b), "date DESC");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(int r10, int r11, boolean r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 963
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.m.a(int, int, boolean, int, int):void");
    }

    private void d() {
        cancelOperation(53);
        cancelOperation(54);
    }

    private int e() {
        int i;
        synchronized (this) {
            com.android.a.a.a.a(this.h);
            com.android.a.a.a.a(this.i);
            this.h = null;
            this.i = null;
            i = this.j + 1;
            this.j = i;
        }
        return i;
    }

    private Cursor f() {
        Cursor mergeCursor;
        boolean z = true;
        try {
            boolean z2 = this.h.getCount() != 0;
            if (this.i.getCount() == 0) {
                z = false;
            }
            if (!z2) {
                com.android.a.a.a.a(this.h);
                mergeCursor = this.i;
            } else if (!z) {
                com.android.a.a.a.a(this.i);
                mergeCursor = new MergeCursor(new Cursor[]{this.h});
                this.h = null;
                this.i = null;
            } else {
                mergeCursor = new MergeCursor(new Cursor[]{this.h, this.i});
                this.h = null;
                this.i = null;
            }
            return mergeCursor;
        } finally {
            this.h = null;
            this.i = null;
        }
    }

    public final void a() {
        startQuery(58, null, VoicemailContract.Status.CONTENT_URI, com.android.contacts.k.b.f1582a, null, null, null);
    }

    public final void a(int i) {
        d();
        int e = e();
        a(53, e, true, i);
        a(54, e, false, i);
    }

    public final void a(int i, int i2) {
        d();
        int e = e();
        a(53, e, true, i, i2);
        a(54, e, false, i, i2);
    }

    public final void a(String str) {
        if (str.equalsIgnoreCase("CALLS_FILTER_OUT_BLOCKED_NUMBERS")) {
            this.e.add("CALLS_FILTER_OUT_BLOCKED_NUMBERS");
        } else if (str.equalsIgnoreCase("CALLS_FILTER_OUT_PRIVATE_CALLS")) {
            this.e.add("CALLS_FILTER_OUT_PRIVATE_CALLS");
        } else {
            Log.e("CallLogQueryHandler", "addCallsFilter type not supported");
        }
    }

    public final void b() {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("new", "0");
        startUpdate(55, null, PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, contentValues, "new = 1", null);
    }

    public final void c() {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("is_read", "1");
        startUpdate(57, null, CallLog.Calls.CONTENT_URI, contentValues, "is_read = 0 AND type = 3", null);
    }

    @Override // android.content.AsyncQueryHandler
    protected final Handler createHandler(Looper looper) {
        return new a(looper);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e A[Catch: all -> 0x0078, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0008, B:10:0x001a, B:14:0x0023, B:17:0x0043, B:19:0x004a, B:21:0x0051, B:23:0x006e, B:30:0x0083, B:34:0x0095, B:35:0x009e, B:38:0x00c3, B:40:0x00d2, B:43:0x00e0, B:44:0x00e9, B:47:0x010a), top: B:48:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0106  */
    @Override // android.content.AsyncQueryHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onQueryComplete(int r6, java.lang.Object r7, android.database.Cursor r8) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.m.onQueryComplete(int, java.lang.Object, android.database.Cursor):void");
    }
}
