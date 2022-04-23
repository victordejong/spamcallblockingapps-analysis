package com.asus.blocklist;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.CallLog;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static final String f2457a = b.class.getSimpleName();
    private static b g;

    /* renamed from: b  reason: collision with root package name */
    String f2458b;
    boolean c;
    long d;
    int e;
    private boolean h = false;
    public a f = new a();

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2459a = -1;
    }

    /* renamed from: com.asus.blocklist.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$b.class */
    public final class AsyncTaskC0065b extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2461b;
        private String c;
        private long d;
        private long e;
        private int f;
        private boolean g;
        private int h;
        private int i;
        private Uri j;
        private boolean k;

        public AsyncTaskC0065b(Context context, Uri uri) {
            this.g = false;
            this.j = null;
            this.k = false;
            this.f2461b = context;
            this.j = uri;
            this.k = true;
        }

        public AsyncTaskC0065b(b bVar, Context context, String str, long j, int i, int i2, int i3) {
            this(context, str, j, i, i2, i3, (byte) 0);
        }

        private AsyncTaskC0065b(Context context, String str, long j, int i, int i2, int i3, byte b2) {
            this.g = false;
            this.j = null;
            this.k = false;
            Log.d(b.f2457a, "HandleIncomingCallEndAsync");
            this.f2461b = context;
            this.c = str;
            this.d = -1L;
            this.e = j;
            this.f = i;
            this.g = TextUtils.isEmpty(this.c);
            this.h = i2;
            this.i = i3;
        }

        /* JADX WARN: Removed duplicated region for block: B:118:0x0276  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x039e  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0475  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x0485  */
        /* JADX WARN: Removed duplicated region for block: B:281:0x05af  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 1678
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.AsyncTaskC0065b.a():java.lang.Void");
        }

        /* JADX WARN: Removed duplicated region for block: B:65:0x012d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean b() {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.AsyncTaskC0065b.b():boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:81:0x018e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean c() {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.AsyncTaskC0065b.c():boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$c.class */
    public final class c extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2463b;
        private String c;
        private long d;
        private long e;
        private int f;
        private boolean g;
        private int h;
        private int i;

        public c(b bVar, Context context, String str, long j, int i, int i2, int i3) {
            this(context, str, j, i, i2, i3, (byte) 0);
        }

        private c(Context context, String str, long j, int i, int i2, int i3, byte b2) {
            this.g = false;
            Log.d(b.f2457a, "HandleIncomingCallEndAsyncForAsus");
            this.f2463b = context;
            this.c = str;
            this.d = -1L;
            this.e = j;
            this.f = i;
            this.g = TextUtils.isEmpty(this.c);
            this.h = i2;
            this.i = i3;
        }

        private Void a() {
            Log.d(b.f2457a, "HandleIncomingCallEndAsyncForAsus doInBackground isBlock= " + b.this.c + ", isPrivateCall= " + this.g);
            if (!b.this.c) {
                return null;
            }
            boolean z = false;
            int i = 0;
            while (!z && i < 10) {
                z = b();
                try {
                    Thread.sleep(500L);
                    i++;
                    Log.d(b.f2457a, "Retry update CallLog, time=" + i);
                } catch (Exception e) {
                    Log.d(b.f2457a, "Retry failed e:" + e.toString());
                    i = i;
                }
            }
            if (z) {
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", (Integer) 1);
            contentValues.put("date", Long.valueOf(this.e));
            contentValues.put("presentation", (Integer) 1);
            contentValues.put("number", this.c);
            contentValues.put("duration", (Integer) 0);
            contentValues.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, (Integer) 1);
            contentValues.put("sim_index", (Integer) 0);
            try {
                this.f2463b.getContentResolver().insert(CallLog.Calls.CONTENT_URI, contentValues);
                return null;
            } catch (Exception e2) {
                Log.d(b.f2457a, "fail to insert call log due to: " + e2.toString());
                e2.printStackTrace();
                return null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:81:0x0187  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean b() {
            /*
                Method dump skipped, instructions count: 408
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.c.b():boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$d.class */
    public final class d extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f2464a;

        /* renamed from: b  reason: collision with root package name */
        String f2465b;
        int c;
        int d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(Context context, String str, int i, int i2) {
            Log.d(b.f2457a, "in HandleIncomingCallStartedAsync");
            this.f2464a = context;
            this.f2465b = str;
            this.c = i;
            this.d = i2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            boolean z = false;
            b bVar = b.this;
            Context context = this.f2464a;
            String str = this.f2465b;
            int i = this.c;
            int i2 = this.d;
            bVar.b();
            switch (i) {
                case 2:
                    bVar.c = com.asus.blocklist.d.a().a(context, str) > 0;
                case 1:
                    if (!bVar.c) {
                        com.android.contacts.asuscallerid.c.a().a(context, str, i2, 1);
                        break;
                    } else {
                        bVar.a(context);
                        if (!CompatUtils.isMarshmallowCompatible() || !PhoneCapabilityTester.IsAsusDevice()) {
                            if (PhoneNumberUtils.isUriNumber(str)) {
                                TelecomUtil.endCallByTelecom(context);
                            } else {
                                TelecomUtil.endCallByTelephony(context);
                            }
                        }
                        bVar.f2458b = str;
                        bVar.d = System.currentTimeMillis();
                        bVar.e = 1;
                        if (com.asus.a.c.i(context) == 1) {
                            z = true;
                        }
                        if (z) {
                            com.asus.blocklist.g.d(context);
                            break;
                        }
                    }
                    break;
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$e.class */
    public final class e extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2467b;
        private String c;

        public e(Context context, String str) {
            this.f2467b = context;
            this.c = str;
        }

        private Void a() {
            int i = 0;
            while (!b() && i < 10) {
                try {
                    Thread.sleep(500L);
                    i++;
                    Log.d(b.f2457a, "Retry move CallLog, time=" + i);
                } catch (Exception e) {
                    Log.d(b.f2457a, "Retry failed e:" + e.toString());
                    i = i;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:206:0x03e6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean b() {
            /*
                Method dump skipped, instructions count: 1038
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.e.b():boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$f.class */
    public final class f extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2469b;
        private String c;
        private int d;
        private Uri e;
        private int f = 1;

        public f(Context context, Uri uri) {
            this.f2469b = context;
            this.e = uri;
        }

        public f(Context context, String str, int i) {
            this.f2469b = context;
            this.c = str;
            this.d = i;
        }

        private Void a() {
            if (!b.this.c) {
                return null;
            }
            switch (this.f) {
                case 0:
                    int i = 0;
                    while (!b() && i < 10 && !b.this.h) {
                        try {
                            Thread.sleep(500L);
                            i++;
                            Log.d(b.f2457a, "Retry move CallLog, time=" + i);
                        } catch (Exception e) {
                            Log.d(b.f2457a, "Retry failed e:" + e.toString());
                            i = i;
                        }
                    }
                    return null;
                case 1:
                    b.this.a(this.f2469b, this.e);
                    return null;
                default:
                    return null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:83:0x0191  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean b() {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.f.b():boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/b$g.class */
    public final class g extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f2470a;

        /* renamed from: b  reason: collision with root package name */
        String f2471b;
        int c;
        int d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(Context context, String str, int i, int i2) {
            Log.d(b.f2457a, "in HandleOutgoingCallStartedAsync");
            this.f2470a = context;
            this.f2471b = str;
            this.c = i;
            this.d = i2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            b bVar = b.this;
            Context context = this.f2470a;
            String str = this.f2471b;
            int i = this.d;
            bVar.b();
            int a2 = com.asus.blocklist.d.a().a(context, str);
            if (!CompatUtils.isMarshmallowCompatible()) {
                switch (i) {
                    case 2:
                        boolean z = false;
                        if (a2 > 0) {
                            z = false;
                            if (a2 != 16) {
                                z = true;
                            }
                        }
                        bVar.c = z;
                        break;
                }
            } else {
                boolean z2 = false;
                if (a2 > 0) {
                    z2 = false;
                    if (a2 != 16) {
                        z2 = true;
                    }
                }
                bVar.c = z2;
            }
            Log.d(b.f2457a, "handleOutgoingCallStarted, isBlock:" + bVar.c);
            if (bVar.c) {
                bVar.a(context);
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public b() {
        b();
    }

    public static b a() {
        if (g == null) {
            g = new b();
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context, Uri uri) {
        r11 = false;
        boolean z = false;
        Log.d(f2457a, "<BlockListCallHandler> updateBlockCallLog:" + uri.toString());
        try {
            String lastPathSegment = uri.getLastPathSegment();
            ContentValues contentValues = new ContentValues();
            contentValues.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, (Integer) 1);
            int update = context.getContentResolver().update(CallLog.Calls.CONTENT_URI, contentValues, "_id=" + lastPathSegment, null);
            if (update > 0) {
                z = true;
            }
            this.h = z;
            z = z;
            Log.d(f2457a, "<BlockListCallHandler> updateBlockCallLog success by phone:" + update);
        } catch (Exception e2) {
            Log.d(f2457a, "<BlockListCallHandler> fail to updateBlockCallLog success:" + e2.toString());
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.b.b(android.content.Context):int");
    }

    public final void a(Context context) {
        if (this.f.f2459a == -1) {
            this.f.f2459a = b(context);
        }
    }

    public final void b() {
        this.f2458b = null;
        this.c = false;
        this.d = Long.MIN_VALUE;
        this.e = 0;
        this.f.f2459a = -1;
        this.h = false;
    }
}
