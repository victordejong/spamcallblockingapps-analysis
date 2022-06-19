package com.truecaller.service;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import com.truecaller.C2752R;
import com.truecaller.acs.p131ui.popup.AfterCallPopupActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.search.global.CompositeAdapterDelegate;
import java.util.ArrayList;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import p193e.p194a.p1342w4.p1344s.C21228b0;
import p193e.p194a.p912i4.p914y.C15308d;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/WidgetListProvider.class */
public class WidgetListProvider extends AppWidgetProvider {

    /* renamed from: a */
    public static final /* synthetic */ int f14768a = 0;

    /* renamed from: b */
    public static void m34742b(Context context) {
        Intent intent = new Intent("com.truecaller.widget.UPDATE_DATA");
        intent.setComponent(new ComponentName(context, WidgetListProvider.class));
        context.sendBroadcast(intent);
    }

    /* renamed from: a */
    public PendingIntent m34743a(Context context, Intent intent, int i) {
        intent.putExtra("widgetClick", true);
        intent.putExtra("AppUserInteraction.Context", "widget").putExtra("AppUserInteraction.Action", "openApp");
        return PendingIntent.getActivity(context, i, intent, 67108864);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
        int i2 = (appWidgetOptions.getInt("appWidgetMinWidth") + 30) / 70 < 3 ? 1 : 0;
        if (appWidgetOptions.getInt("widgetSizeKey") != i2) {
            appWidgetOptions.putInt("widgetSizeKey", i2);
            appWidgetManager.updateAppWidgetOptions(i, appWidgetOptions);
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) C2752R.layout.widget_list_body);
            remoteViews.setViewVisibility(C2752R.C2754id.widgetLogoContainer, (i2 ^ 1) != 0 ? 0 : 8);
            appWidgetManager.partiallyUpdateAppWidget(i, remoteViews);
            appWidgetManager.notifyAppWidgetViewDataChanged(i, C2752R.C2754id.widgetList);
        }
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i, bundle);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.truecaller.widget.UPDATE_DATA".equals(action)) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            appWidgetManager.notifyAppWidgetViewDataChanged(appWidgetManager.getAppWidgetIds(new ComponentName(context, getClass())), C2752R.C2754id.widgetList);
        } else if ("com.truecaller.widget.UPDATE_HEADER".equals(action)) {
            AppWidgetManager appWidgetManager2 = AppWidgetManager.getInstance(context);
            onUpdate(context, appWidgetManager2, appWidgetManager2.getAppWidgetIds(new ComponentName(context, getClass())));
        } else if (!"com.sec.android.widgetapp.APPWIDGET_RESIZE".equals(action)) {
            super.onReceive(context, intent);
        } else {
            AppWidgetManager appWidgetManager3 = AppWidgetManager.getInstance(context);
            int intExtra = intent.getIntExtra("widgetId", 0);
            int intExtra2 = intent.getIntExtra("widgetspanx", 0);
            int intExtra3 = intent.getIntExtra("widgetspany", 0);
            if (intExtra <= 0 || intExtra2 <= 0 || intExtra3 <= 0) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("appWidgetMinHeight", intExtra3 * 74);
            bundle.putInt("appWidgetMinWidth", intExtra2 * 74);
            onAppWidgetOptionsChanged(context, appWidgetManager3, intExtra, bundle);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12642M3().mo13184c();
        for (int i : iArr) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) C2752R.layout.widget_list_body);
            remoteViews.setEmptyView(C2752R.C2754id.widgetList, C2752R.C2754id.widgetEmptyView);
            Intent intent = new Intent(context, WidgetListService.class);
            intent.putExtra("appWidgetId", i);
            intent.setData(Uri.parse(intent.toUri(1)));
            intent.putExtra("extra_widget_layout", C2752R.layout.widget_list_body);
            intent.putExtra("extra_list_item_layout", C2752R.layout.widget_list_row);
            remoteViews.setRemoteAdapter(C2752R.C2754id.widgetList, intent);
            AbstractC18977k m14265a = C18995r0.m14265a(context);
            AbstractC18977k.C18980c mo14263b = m14265a.mo14263b(context);
            remoteViews.setImageViewResource(C2752R.C2754id.widgetLogo, mo14263b.f53122a);
            remoteViews.setViewVisibility(C2752R.C2754id.widgetPoweredBy, mo14263b.m14266a() ? 0 : 8);
            remoteViews.setTextColor(C2752R.C2754id.widgetPoweredBy, mo14263b.f53124c);
            remoteViews.setInt(C2752R.C2754id.widgetHeader, "setBackgroundColor", mo14263b.f53123b);
            remoteViews.setInt(C2752R.C2754id.widgetSearch, "setImageResource", m14265a.mo14268d() ? 2131232864 : 2131232863);
            remoteViews.setInt(C2752R.C2754id.widgetNotifications, "setImageResource", m14265a.mo14268d() ? 2131232862 : 2131232861);
            remoteViews.setOnClickPendingIntent(C2752R.C2754id.widgetLogoContainer, m34743a(context, TruecallerInit.m34553xa(context, "calls", "widget"), C2752R.C2754id.req_code_widget_truecaller));
            ArrayList arrayList = new ArrayList();
            arrayList.add(TruecallerInit.m34554wa(context, "widget"));
            arrayList.add(C21228b0.m10115OA(context, null, null, false, CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT, true));
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            remoteViews.setOnClickPendingIntent(C2752R.C2754id.widgetSearch, PendingIntent.getActivities(context, C2752R.C2754id.req_code_widget_search, intentArr, 201326592, null));
            remoteViews.setOnClickPendingIntent(C2752R.C2754id.widgetNotifications, m34743a(context, C15308d.m18942cB(context), C2752R.C2754id.req_code_widget_notifications));
            AppWidgetManager appWidgetManager2 = AppWidgetManager.getInstance(context);
            boolean z = appWidgetManager2.getAppWidgetOptions(i).getInt("widgetSizeKey") == 0;
            int i2 = 134217728;
            if (Build.VERSION.SDK_INT >= 31) {
                i2 = 167772160;
            }
            remoteViews.setViewVisibility(C2752R.C2754id.widgetLogoContainer, z ? 0 : 8);
            ArrayList arrayList2 = new ArrayList();
            ComponentName componentName = new ComponentName(context, AfterCallPopupActivity.class);
            int size = arrayList2.size();
            try {
                Intent m43204r0 = MediaSessionCompat.m43204r0(context, componentName);
                while (m43204r0 != null) {
                    arrayList2.add(size, m43204r0);
                    m43204r0 = MediaSessionCompat.m43204r0(context, m43204r0.getComponent());
                }
                arrayList2.add(new Intent(context, AfterCallPopupActivity.class));
                if (arrayList2.isEmpty()) {
                    throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
                }
                Intent[] intentArr2 = (Intent[]) arrayList2.toArray(new Intent[arrayList2.size()]);
                intentArr2[0] = new Intent(intentArr2[0]).addFlags(268484608);
                remoteViews.setPendingIntentTemplate(C2752R.C2754id.widgetList, PendingIntent.getActivities(context, C2752R.C2754id.req_code_widget_template, intentArr2, i2, null));
                appWidgetManager2.updateAppWidget(i, remoteViews);
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException(e);
            }
        }
    }
}
