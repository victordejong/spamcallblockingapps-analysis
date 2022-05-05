package com.android.contacts.miniwidget;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.util.Log;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidgetService.class */
public class ContactsWidgetService extends RemoteViewsService {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, a> f1932a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static String f1933b;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidgetService$a.class */
    final class a implements RemoteViewsService.RemoteViewsFactory {

        /* renamed from: b  reason: collision with root package name */
        private Context f1935b;
        private int c;
        private ArrayList<C0048a> d;
        private int e;
        private final int f = 1;
        private final int g = 2;
        private final String h = ContactsPreferences.DISPLAY_ORDER_KEY;
        private final int i = 1;
        private final int j = 2;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.android.contacts.miniwidget.ContactsWidgetService$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidgetService$a$a.class */
        public final class C0048a {

            /* renamed from: a  reason: collision with root package name */
            long f1936a;

            /* renamed from: b  reason: collision with root package name */
            long f1937b;
            String c;
            Bitmap d;
            int e;
            String f;
            private String h;

            public C0048a(long j, long j2, String str, Bitmap bitmap, int i, String str2) {
                this.f1936a = j;
                this.f1937b = j2;
                this.c = str;
                this.d = bitmap;
                this.e = i;
                this.f = str2;
                this.h = a.this.a(j2);
            }

            public final String a() {
                return this.c == null ? ContactsWidgetService.f1933b : this.c;
            }
        }

        public a(Context context, int i) {
            Log.d("ContactsWidgetService", "new ContactsWidgetFactory:" + i);
            this.f1935b = context;
            this.c = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String a(long j) {
            String str;
            Cursor cursor;
            Throwable th;
            String str2;
            try {
                if (b.f607a.booleanValue()) {
                    Log.d("ContactsWidgetService", "birthdayCheck id is " + j);
                }
                try {
                    cursor = this.f1935b.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{CoverUtils.CoverData.COVER_URI}, "contact_id = ?  AND mimetype = 'vnd.android.cursor.item/contact_event' AND data2 = 3", new String[]{String.valueOf(j)}, null);
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                }
                try {
                    if (b.f607a.booleanValue()) {
                        Log.d("ContactsWidgetService", "birthdayCheck cursor count " + cursor.getCount());
                    }
                    if (cursor.moveToFirst()) {
                        while (true) {
                            String string = cursor.getString(0);
                            if (b.f607a.booleanValue()) {
                                Log.d("ContactsWidgetService", "birthdayCheck birthday = " + PhoneCapabilityTester.privacyLogCheck(string));
                            }
                            String formatDate = DateUtils.formatDate(this.f1935b, string);
                            str2 = formatDate;
                            if (formatDate == null) {
                                if (!cursor.moveToNext()) {
                                    str2 = formatDate;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    } else {
                        str2 = null;
                    }
                    str = str2;
                    if (cursor != null) {
                        cursor.close();
                        str = str2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e) {
                Log.e("ContactsWidgetService", e.toString());
                str = null;
            }
            return str;
        }

        private void a() {
            if (this.d != null) {
                Iterator<C0048a> it = this.d.iterator();
                while (it.hasNext()) {
                    C0048a next = it.next();
                    next.d.recycle();
                    if (next.d != null) {
                        next.d.recycle();
                    }
                    next.d = null;
                    next.c = null;
                    next.f = null;
                }
                this.d.clear();
            }
        }

        private int b() {
            int c;
            if (!this.f1935b.getResources().getBoolean(2130968584)) {
                c = c();
            } else {
                try {
                    c = Settings.System.getInt(this.f1935b.getContentResolver(), ContactsPreferences.DISPLAY_ORDER_KEY);
                } catch (Settings.SettingNotFoundException e) {
                    c = c();
                }
            }
            return c;
        }

        private int c() {
            return this.f1935b.getResources().getBoolean(2130968582) ? 1 : 2;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x0325  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x029e  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x02a9  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0319  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList<com.android.contacts.miniwidget.ContactsWidgetService.a.C0048a> d() {
            /*
                Method dump skipped, instructions count: 1356
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.miniwidget.ContactsWidgetService.a.d():java.util.ArrayList");
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getCount() {
            return this.d == null ? 0 : this.d.size();
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getLoadingView() {
            return null;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getViewAt(int i) {
            RemoteViews remoteViews;
            int i2;
            if (i < 0 || i >= getCount()) {
                remoteViews = null;
            } else {
                remoteViews = new RemoteViews(this.f1935b.getPackageName(), 2131427605);
                remoteViews.setImageViewBitmap(2131296580, this.d.get(i).d);
                remoteViews.setTextViewText(2131296576, this.d.get(i).a());
                C0048a aVar = this.d.get(i);
                g gVar = new g(this.f1935b, aVar.e, aVar.f);
                Log.d("ContactsWidgetService", "getAction : " + gVar.a());
                if (gVar.f1985a == -1) {
                    remoteViews.setViewVisibility(2131296280, 8);
                } else {
                    switch (gVar.f1985a) {
                        case 0:
                            i2 = 2131165533;
                            break;
                        case 1:
                            i2 = 2131165536;
                            break;
                        case 2:
                            i2 = 2131165535;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        default:
                            i2 = 2131165532;
                            break;
                        case 6:
                            i2 = 2131165532;
                            break;
                    }
                    remoteViews.setImageViewResource(2131296280, i2);
                    remoteViews.setViewVisibility(2131296280, 0);
                }
                Bundle bundle = new Bundle();
                bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, this.d.get(i).a());
                bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, this.d.get(i).f1937b);
                bundle.putLong("widget_id", this.d.get(i).f1936a);
                Intent intent = new Intent();
                intent.putExtras(bundle);
                intent.addFlags(32768);
                remoteViews.setOnClickFillInIntent(2131296580, intent);
            }
            return remoteViews;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onCreate() {
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDataSetChanged() {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            a();
            Log.d("ContactsWidgetService", "loadContacts onDataSetChanged:" + this.c);
            if (!NecessaryPermissionDenyActivity.startPermissionActivity(this.f1935b)) {
                this.d = d();
                Log.d("ContactsWidgetService", "mContacts size:" + this.d.size());
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDestroy() {
            a();
        }
    }

    public static Bitmap a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f1933b = getResources().getString(2131756043);
    }

    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        a aVar;
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        Log.d("ContactsWidgetService", "RemoteViewsFactory::onGetViewFactory:" + intExtra);
        if (intExtra < 0) {
            Log.d("ContactsWidgetService", "Missing EXTRA_APPWIDGET_ID!");
            aVar = null;
        } else {
            aVar = new a(getApplicationContext(), intExtra);
            f1932a.put(Integer.valueOf(intExtra), aVar);
        }
        return aVar;
    }
}
