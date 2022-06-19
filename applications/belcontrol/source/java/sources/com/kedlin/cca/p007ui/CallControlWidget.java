package com.kedlin.cca.p007ui;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.kedlin.cca.core.CCAService;
/* renamed from: com.kedlin.cca.ui.CallControlWidget */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallControlWidget.class */
public class CallControlWidget extends AppWidgetProvider {
    /* renamed from: b */
    public static void m4287b(Context context, RemoteViews remoteViews) {
        String str = "";
        if (u71.m425r()) {
            str = "" + context.getString(2131821348) + ", ";
        }
        String str2 = str;
        if (u71.m427p()) {
            str2 = str + context.getString(2131821349) + ", ";
        }
        String str3 = str2;
        if (u71.m428o()) {
            str3 = str2 + context.getString(2131821086) + ", ";
        }
        String string = TextUtils.isEmpty(str3) ? context.getString(2131821350) : str3.substring(0, str3.length() - 2);
        String string2 = context.getString(u71.m429n() ? 2131821513 : 2131821512);
        remoteViews.setTextViewText(2131363430, context.getString(2131821722));
        remoteViews.setTextViewText(2131363432, string2);
        if (!u71.m429n()) {
            remoteViews.setViewVisibility(2131363431, 8);
            return;
        }
        remoteViews.setTextViewText(2131363431, string);
        remoteViews.setViewVisibility(2131363431, 0);
    }

    /* renamed from: c */
    public static void m4286c(Context context) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context.getPackageName(), CallControlWidget.class.getName()));
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2131558807);
        m4287b(context, remoteViews);
        appWidgetManager.updateAppWidget(appWidgetIds, remoteViews);
    }

    /* renamed from: a */
    public final void m4288a(Context context, RemoteViews remoteViews, int i) {
        int i2;
        String str;
        Intent intent = new Intent(context, CCAService.class);
        intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
        intent.addCategory(CCAService.f3669q);
        switch (i) {
            case 2131363527:
                str = CCAService.f3661B;
                i2 = 2;
                break;
            case 2131363528:
                str = CCAService.f3661B;
                i2 = 0;
                break;
            case 2131363529:
                str = CCAService.f3661B;
                i2 = 1;
                break;
            case 2131363530:
                str = CCAService.f3661B;
                i2 = 4;
                break;
            case 2131363531:
            default:
                remoteViews.setOnClickPendingIntent(i, PendingIntent.getService(context, i, intent, 134217728));
            case 2131363532:
            case 2131363533:
                str = CCAService.f3661B;
                i2 = 5;
                break;
            case 2131363534:
                str = CCAService.f3661B;
                i2 = 3;
                break;
        }
        intent.putExtra(str, i2);
        remoteViews.setOnClickPendingIntent(i, PendingIntent.getService(context, i, intent, 134217728));
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2131558807);
        m4288a(context, remoteViews, 2131363532);
        m4288a(context, remoteViews, 2131363533);
        m4287b(context, remoteViews);
        m4288a(context, remoteViews, 2131363527);
        m4288a(context, remoteViews, 2131363534);
        m4288a(context, remoteViews, 2131363528);
        m4288a(context, remoteViews, 2131363529);
        m4288a(context, remoteViews, 2131363530);
        appWidgetManager.updateAppWidget(iArr, remoteViews);
    }
}
