package com.android.contacts.miniwidget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.RemoteViews;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.list.bh;
import com.android.contacts.util.CompatUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidget.class */
public class ContactsWidget extends AppWidgetProvider implements bh.b {

    /* renamed from: a  reason: collision with root package name */
    private static e f1927a;
    private static int[] d;

    /* renamed from: b  reason: collision with root package name */
    private bh f1928b;
    private bh.c c;
    private AppWidgetManager e;
    private Context f;

    /* JADX WARN: Removed duplicated region for block: B:42:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r7, android.appwidget.AppWidgetManager r8, int[] r9) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.miniwidget.ContactsWidget.a(android.content.Context, android.appwidget.AppWidgetManager, int[]):void");
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
        Log.i("MiniContactsWidget", "onDeleted");
        if (iArr != null && iArr.length > 0) {
            String str = "delete widget ";
            String str2 = "widget_id IN(";
            for (int i : iArr) {
                str2 = str2 + i + ", ";
                str = str + i + ", ";
            }
            Log.i("MiniContactsWidget", str.substring(0, str.length() - 2) + " (" + context.getContentResolver().delete(ContactsWidgetProvider.f1929a, str2.substring(0, str2.length() - 2) + ")", null) + ")");
        }
        if (this.f1928b != null) {
            this.f1928b.b(this);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDisabled(Context context) {
        Log.i("MiniContactsWidget", "onDisabled");
        context.getContentResolver().delete(ContactsWidgetProvider.f1929a, null, null);
        Log.i("MiniContactsWidget", "delete all data");
        if (f1927a != null) {
            context.getContentResolver().unregisterContentObserver(f1927a);
            f1927a = null;
        }
        if (this.f1928b != null) {
            this.f1928b.b(this);
        }
    }

    @Override // com.android.contacts.list.bh.b
    public void onProviderStatusChange() {
        boolean z;
        this.c = this.f1928b.c();
        if (CompatUtils.isMarshmallowCompatible()) {
            z = true;
            if (this.c.f1810a != 0) {
                z = this.c.f1810a == 2;
            }
        } else {
            z = true;
            if (this.c.f1810a != 0) {
                z = true;
                if (this.c.f1810a != 4) {
                    z = false;
                }
            }
        }
        if (!z) {
            RemoteViews remoteViews = new RemoteViews(this.f.getPackageName(), 2131427606);
            remoteViews.setViewVisibility(2131296528, 0);
            remoteViews.setViewVisibility(2131296601, 8);
            this.e.updateAppWidget(d, remoteViews);
            return;
        }
        a(this.f, this.e, d);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d("MiniContactsWidget", "ContactsWidget onReceive. Action=" + action);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(context)) {
            if ("com.asus.contactswidget.CONTACTS_UPDATE".equals(action)) {
                AppWidgetManager instance = AppWidgetManager.getInstance(context);
                int intExtra = intent.getIntExtra("widget_id", -1);
                int[] intArrayExtra = intent.getIntArrayExtra("widget_ids");
                if (intExtra != -1) {
                    a(context, instance, new int[]{intExtra});
                } else if (intArrayExtra != null && intArrayExtra.length > 0) {
                    if (b.f607a.booleanValue()) {
                        Log.d("MiniContactsWidget", "widgetIds != null");
                    }
                    a(context, instance, intArrayExtra);
                } else if (intent.getBooleanExtra("allupdate", false)) {
                    a(context, instance, instance.getAppWidgetIds(new ComponentName(context, ContactsWidget.class)));
                }
            } else {
                super.onReceive(context, intent);
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        Log.d("MiniContactsWidget", "onUpdate()");
        d = iArr;
        this.e = appWidgetManager;
        this.f = context;
        a(context, appWidgetManager, iArr);
        if (this.f1928b == null) {
            this.f1928b = bh.a(context);
            this.f1928b.a(this);
            this.f1928b.a();
        }
        super.onUpdate(context, appWidgetManager, iArr);
    }
}
