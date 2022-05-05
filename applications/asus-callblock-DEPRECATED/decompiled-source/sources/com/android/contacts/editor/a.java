package com.android.contacts.editor;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a.class */
public final class a extends HandlerThread {

    /* renamed from: a  reason: collision with root package name */
    final Context f1201a;

    /* renamed from: b  reason: collision with root package name */
    long[] f1202b = new long[0];
    Handler c = new Handler() { // from class: com.android.contacts.editor.a.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            a aVar = a.this;
            Cursor cursor = (Cursor) message.obj;
            if (aVar.f != null) {
                aVar.f.close();
            }
            aVar.f = cursor;
            if (aVar.e != null) {
                aVar.e.a();
            }
        }
    };
    long d;
    b e;
    Cursor f;
    private Handler g;
    private ContentObserver h;
    private Uri i;

    /* renamed from: com.android.contacts.editor.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a$a.class */
    private static final class C0036a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f1205a = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "photo_id", "display_name", "raw_contact_id", "mimetype", CoverUtils.CoverData.COVER_URI, "is_super_primary", "data15", SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.DATA_SET};
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a$b.class */
    public interface b {
        void a();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public long f1206a;

        /* renamed from: b  reason: collision with root package name */
        public String f1207b;
        public String c;
        public String d;

        public final String toString() {
            return "ID: " + this.f1206a + " account: " + this.f1207b + "/" + this.c + " dataSet: " + this.d;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public long f1208a;

        /* renamed from: b  reason: collision with root package name */
        public String f1209b;
        public String c;
        public String d;
        public String e;
        public String f;
        public byte[] g;
        public List<c> h;

        public final String toString() {
            return "ID: " + this.f1208a + " rawContacts: " + this.h + " name: " + this.c + " phone: " + this.d + " email: " + this.e + " nickname: " + this.f + (this.g != null ? " [has photo]" : BuildConfig.FLAVOR);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/a$e.class */
    private final class e extends ContentObserver {
        private e(Handler handler) {
            super(handler);
        }

        /* synthetic */ e(a aVar, Handler handler, byte b2) {
            this(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            a.this.c();
        }
    }

    public a(Context context) {
        super("AggregationSuggestions", 10);
        this.f1201a = context.getApplicationContext();
    }

    private static void a(ContactsContract.Contacts.AggregationSuggestions.Builder builder, String str) {
        try {
            Class<?> cls = Class.forName(builder.getClass().getName());
            try {
                cls.getMethod("addNameParameter", String.class).invoke(builder, str.toString());
            } catch (NoSuchMethodException e2) {
                Log.w("AggregationSuggestionEngine", "Method builder.addNameParameter not exist.");
            } catch (Exception e3) {
                Log.w("AggregationSuggestionEngine", e3.toString());
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            Log.w("AggregationSuggestionEngine", "Class Not Found : " + builder.getClass().getName());
        }
    }

    private static void a(StringBuilder sb, RawContactDelta.ValuesDelta valuesDelta, String str) {
        String a2 = valuesDelta.a(str);
        if (!TextUtils.isEmpty(a2)) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(a2);
        }
    }

    private Uri b(RawContactDelta.ValuesDelta valuesDelta) {
        Class<?> cls;
        Class<?> cls2 = null;
        Uri build = null;
        StringBuilder sb = new StringBuilder();
        a(sb, valuesDelta, "data4");
        a(sb, valuesDelta, CoverUtils.CoverData.COVER_TYPE);
        a(sb, valuesDelta, "data5");
        a(sb, valuesDelta, CoverUtils.CoverData.USER_SET);
        a(sb, valuesDelta, "data6");
        if (sb.length() == 0) {
            a(sb, valuesDelta, CoverUtils.CoverData.COVER_URI);
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2, valuesDelta, "data9");
        a(sb2, valuesDelta, "data8");
        a(sb2, valuesDelta, "data7");
        if (sb.length() != 0 || sb2.length() != 0) {
            ContactsContract.Contacts.AggregationSuggestions.Builder contactId = new ContactsContract.Contacts.AggregationSuggestions.Builder().setLimit(3).setContactId(this.d);
            if (sb.length() != 0) {
                if (CompatUtils.isMarshmallowCompatible()) {
                    a(contactId, sb.toString());
                } else {
                    try {
                        cls = Class.forName(contactId.getClass().getName());
                    } catch (ClassNotFoundException e2) {
                        Log.w("AggregationSuggestionEngine", "Class Not Found : " + contactId.getClass().getName());
                        cls = null;
                    }
                    if (cls != null) {
                        try {
                            cls.getMethod("addParameter", String.class, String.class).invoke(contactId, ContactDetailCallogActivity.EXTRA_NAME, sb.toString());
                        } catch (NoSuchMethodException e3) {
                            Log.w("AggregationSuggestionEngine", "(name) Method addParameter not exist.");
                        } catch (Exception e4) {
                            Log.w("AggregationSuggestionEngine", "(name) Exception: " + e4.toString());
                        }
                    }
                }
            }
            if (sb2.length() != 0) {
                if (CompatUtils.isMarshmallowCompatible()) {
                    a(contactId, sb.toString());
                } else {
                    try {
                        cls2 = Class.forName(contactId.getClass().getName());
                    } catch (ClassNotFoundException e5) {
                        Log.w("AggregationSuggestionEngine", "Class Not Found : " + contactId.getClass().getName());
                    }
                    if (cls2 != null) {
                        try {
                            cls2.getMethod("addParameter", String.class, String.class).invoke(contactId, ContactDetailCallogActivity.EXTRA_NAME, sb2.toString());
                        } catch (NoSuchMethodException e6) {
                            Log.w("AggregationSuggestionEngine", "(phonetic name) Method addParameter not exist.");
                        } catch (Exception e7) {
                            Log.w("AggregationSuggestionEngine", "(phonetic name) Exception: " + e7.toString());
                        }
                    }
                }
            }
            build = contactId.build();
        }
        return build;
    }

    final Handler a() {
        if (this.g == null) {
            this.g = new Handler(getLooper()) { // from class: com.android.contacts.editor.a.2
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    boolean z;
                    a aVar = a.this;
                    switch (message.what) {
                        case 0:
                            aVar.f1202b = new long[0];
                            return;
                        case 1:
                            Uri uri = (Uri) message.obj;
                            ContentResolver contentResolver = aVar.f1201a.getContentResolver();
                            Cursor query = contentResolver.query(uri, new String[]{"_id"}, null, null, null);
                            if (query != null) {
                                try {
                                    if (!aVar.a().hasMessages(1)) {
                                        if (query == null) {
                                            z = false;
                                        } else {
                                            int count = query.getCount();
                                            z = count != aVar.f1202b.length;
                                            ArrayList arrayList = new ArrayList(count);
                                            while (query.moveToNext()) {
                                                long j = query.getLong(0);
                                                z = z;
                                                if (!z) {
                                                    z = z;
                                                    if (Arrays.binarySearch(aVar.f1202b, j) < 0) {
                                                        z = true;
                                                    }
                                                }
                                                arrayList.add(Long.valueOf(j));
                                            }
                                            if (z) {
                                                aVar.f1202b = new long[arrayList.size()];
                                                Iterator it = arrayList.iterator();
                                                int i = 0;
                                                while (it.hasNext()) {
                                                    aVar.f1202b[i] = ((Long) it.next()).longValue();
                                                    i++;
                                                }
                                                Arrays.sort(aVar.f1202b);
                                            }
                                        }
                                        if (z) {
                                            StringBuilder sb = new StringBuilder("mimetype IN ('vnd.android.cursor.item/phone_v2','vnd.android.cursor.item/email_v2','vnd.android.cursor.item/name','vnd.android.cursor.item/nickname','vnd.android.cursor.item/photo') AND contact_id IN (");
                                            int length = aVar.f1202b.length;
                                            for (int i2 = 0; i2 < length; i2++) {
                                                if (i2 > 0) {
                                                    sb.append(',');
                                                }
                                                sb.append(aVar.f1202b[i2]);
                                            }
                                            sb.append(')');
                                            Cursor query2 = contentResolver.query(ContactsContract.Data.CONTENT_URI, C0036a.f1205a, sb.toString(), null, ContactDetailCallogActivity.EXTRA_CONTACT_ID);
                                            if (query2 != null) {
                                                aVar.c.sendMessage(aVar.c.obtainMessage(2, query2));
                                            }
                                            if (query != null) {
                                                query.close();
                                                return;
                                            }
                                            return;
                                        } else if (query != null) {
                                            query.close();
                                            return;
                                        } else {
                                            return;
                                        }
                                    } else if (query != null) {
                                        query.close();
                                        return;
                                    } else {
                                        return;
                                    }
                                } catch (Throwable th) {
                                    if (query != null) {
                                        query.close();
                                    }
                                    throw th;
                                }
                            } else {
                                return;
                            }
                        default:
                            return;
                    }
                }
            };
        }
        return this.g;
    }

    public final void a(RawContactDelta.ValuesDelta valuesDelta) {
        this.i = b(valuesDelta);
        if (this.i != null) {
            if (this.h == null) {
                this.h = new e(this, a(), (byte) 0);
                this.f1201a.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.h);
            }
        } else if (this.h != null) {
            this.f1201a.getContentResolver().unregisterContentObserver(this.h);
            this.h = null;
        }
        c();
    }

    public final void b() {
        Handler a2 = a();
        a2.removeMessages(1);
        a2.sendEmptyMessage(0);
    }

    protected final void c() {
        Handler a2 = a();
        a2.removeMessages(1);
        if (this.i != null) {
            a2.sendMessageDelayed(a2.obtainMessage(1, this.i), 300L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.android.contacts.editor.a.d> d() {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.a.d():java.util.List");
    }

    @Override // android.os.HandlerThread
    public final boolean quit() {
        if (this.f != null) {
            this.f.close();
        }
        this.f = null;
        if (this.h != null) {
            this.f1201a.getContentResolver().unregisterContentObserver(this.h);
            this.h = null;
        }
        return super.quit();
    }
}
