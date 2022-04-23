package gogolook.callgogolook2.appwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.TaskStackBuilder;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.block.TextSearchActivity;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p594z4.C14330b;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/LargeWidgetProvider.class */
public class LargeWidgetProvider extends BaseWidgetProvider {
    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider
    /* renamed from: a */
    public int mo28648a() {
        return 5;
    }

    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider
    /* renamed from: a */
    public RemoteViews mo28647a(Context context) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R$layout.widget_large_header);
        remoteViews.setImageViewResource(R$id.widget_header, R$drawable.widget_logo_small);
        remoteViews.setOnClickPendingIntent(R$id.widget_header_all, TaskStackBuilder.create(context).addNextIntentWithParentStack(new Intent(context, MainActivity.class)).getPendingIntent(0, 134217728));
        remoteViews.setOnClickPendingIntent(R$id.widgetSearch, TaskStackBuilder.create(context).addNextIntentWithParentStack(new Intent(context, TextSearchActivity.class)).getPendingIntent((int) (System.currentTimeMillis() & 268435455), 134217728));
        return remoteViews;
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("gogolook.callgogolook2.CHANGE_LARGE_WIDGET_DATA".equals(intent.getAction())) {
            AppWidgetManager instance = AppWidgetManager.getInstance(context);
            instance.notifyAppWidgetViewDataChanged(instance.getAppWidgetIds(new ComponentName(context, LargeWidgetProvider.class)), R$id.widget_listview);
        } else if ("gogolook.callgogolook2.widget.ACTION_NDP".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("extra_number");
            String stringExtra2 = intent.getStringExtra("extra_e164");
            int intExtra = intent.getIntExtra("extra_type", 0);
            if (!TextUtils.isEmpty(stringExtra) && intExtra > 0) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("show_sn_warning", C14330b.m1560a(intExtra));
                Intent a = NumberDetailActivity.m26859a(context, stringExtra, stringExtra2, bundle);
                try {
                    C14217x3.m2188a(context, a, ("large_widget" + stringExtra).hashCode()).send();
                } catch (PendingIntent.CanceledException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        } else if ("gogolook.callgogolook2.widget.ACTION_CALL".equals(intent.getAction())) {
            C14191v.m2259a(context, C14217x3.m2185a(context, intent.getStringExtra("extra_number")));
        } else {
            super.onReceive(context, intent);
        }
    }

    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider, android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        try {
            m28660a(context, appWidgetManager, iArr);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }
}
