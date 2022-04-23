package com.android.contacts.socialwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.android.contacts.model.c;
import com.android.contacts.model.d;
import com.android.contacts.quickcontact.QuickContactBroadcastReceiver;
import com.android.contacts.util.ContactBadgeUtil;
import com.android.contacts.util.HtmlUtils;
import com.android.contacts.util.StreamItemEntry;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/socialwidget/SocialWidgetProvider.class */
public class SocialWidgetProvider extends AppWidgetProvider {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<d> f2163a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<Integer> f2164b = new ArrayList<>();
    private static int c = 0;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/socialwidget/SocialWidgetProvider$a.class */
    private final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        Context f2167a;

        public a(Context context) {
            this.f2167a = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            int[] appWidgetIds;
            AppWidgetManager instance = AppWidgetManager.getInstance(this.f2167a);
            for (int i : instance.getAppWidgetIds(new ComponentName(this.f2167a, SocialWidgetProvider.class))) {
                Log.d("SocialWidgetProvider", "appWidgetId:" + i);
                SocialWidgetProvider.a(this.f2167a, instance, i, true);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            Log.d("SocialWidgetProvider", "update social widget finished");
        }
    }

    static /* synthetic */ void a(Context context, int i, AppWidgetManager appWidgetManager, c cVar) {
        Log.d("SocialWidgetProvider", "Loaded " + cVar.e + " for widget with id=" + i);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2131427665);
        if (!cVar.d()) {
            if (f2164b != null) {
                f2164b.add(Integer.valueOf(i));
                c++;
            }
            Log.d("SocialWidgetProvider", "Not Loaded widgetId : " + i);
            a(context, remoteViews, context.getString(2131755709), null, null, null);
            remoteViews.setImageViewBitmap(R.id.image, ContactBadgeUtil.loadDefaultAvatarPhoto(context, false, false, cVar.g() ? cVar.h() : 0));
        } else {
            byte[] bArr = cVar.y;
            remoteViews.setImageViewBitmap(R.id.image, bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length) : ContactBadgeUtil.loadDefaultAvatarPhoto(context, false, false, cVar.h()));
            Intent intent = new Intent(context, QuickContactBroadcastReceiver.class);
            intent.setData(cVar.f2023b);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
            remoteViews.setOnClickPendingIntent(2131296402, broadcast);
            a(context, remoteViews, cVar.k, cVar.m, cVar.p, broadcast);
        }
        appWidgetManager.updateAppWidget(i, remoteViews);
    }

    public static void a(final Context context, final AppWidgetManager appWidgetManager, final int i, boolean z) {
        Uri uri = null;
        d dVar = f2163a.get(i);
        if (dVar == null || z) {
            if (dVar != null) {
                dVar.reset();
            }
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2131427665);
            remoteViews.setTextViewText(d.b.g, context.getString(2131756191));
            remoteViews.setViewVisibility(d.b.g, 0);
            remoteViews.setViewVisibility(2131297099, 8);
            appWidgetManager.updateAppWidget(i, remoteViews);
            com.android.contacts.socialwidget.a.a();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            com.android.contacts.socialwidget.a.a(context, defaultSharedPreferences);
            String string = defaultSharedPreferences.getString(com.android.contacts.socialwidget.a.a(i), null);
            if (string != null) {
                uri = Uri.parse(string);
            }
            if (Log.isLoggable("SocialWidgetSettings", 3)) {
                Log.d("SocialWidgetSettings", "getContactUri(" + i + ") --> " + uri);
            }
            if (uri != null) {
                com.android.contacts.model.d dVar2 = new com.android.contacts.model.d(context, uri, false, true, false, true, false);
                dVar2.registerListener(0, new Loader.OnLoadCompleteListener<c>() { // from class: com.android.contacts.socialwidget.SocialWidgetProvider.1
                    @Override // android.content.Loader.OnLoadCompleteListener
                    public final /* synthetic */ void onLoadComplete(Loader<c> loader, c cVar) {
                        SocialWidgetProvider.a(context, i, appWidgetManager, cVar);
                    }
                });
                dVar2.startLoading();
                f2163a.append(i, dVar2);
                return;
            }
            return;
        }
        dVar.startLoading();
    }

    private static void a(Context context, RemoteViews remoteViews, CharSequence charSequence, CharSequence charSequence2, List<StreamItemEntry> list, PendingIntent pendingIntent) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String str = charSequence;
        if (TextUtils.isEmpty(charSequence)) {
            str = context.getString(2131755855);
        }
        String str2 = str;
        if (!TextUtils.isEmpty(charSequence2)) {
            str2 = context.getString(2131756484, str, charSequence2);
        }
        spannableStringBuilder.append(str2);
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(context.getResources().getDimensionPixelSize(2131100395));
        StyleSpan styleSpan = new StyleSpan(1);
        spannableStringBuilder.setSpan(absoluteSizeSpan, 0, str2.length(), 0);
        spannableStringBuilder.setSpan(styleSpan, 0, str2.length(), 0);
        if (list == null || list.isEmpty()) {
            remoteViews.setTextViewText(d.b.g, spannableStringBuilder);
            remoteViews.setViewVisibility(d.b.g, 0);
            remoteViews.setViewVisibility(2131297099, 8);
            if (pendingIntent != null) {
                remoteViews.setOnClickPendingIntent(2131297547, pendingIntent);
            } else if (spannableStringBuilder.toString().equals(context.getResources().getString(2131755709))) {
                Log.d("SocialWidgetProvider", "contact is not exist");
                Intent intent = new Intent(context, QuickContactBroadcastReceiver.class);
                intent.putExtra("isSocilaWidgetContactExist", false);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                remoteViews.setOnClickPendingIntent(2131296402, broadcast);
                remoteViews.setOnClickPendingIntent(2131297547, broadcast);
            }
        } else {
            StreamItemEntry streamItemEntry = list.get(0);
            Spanned fromHtml = HtmlUtils.fromHtml(context, streamItemEntry.getText());
            CharSequence charSequence3 = fromHtml;
            if (fromHtml == null) {
                charSequence3 = BuildConfig.FLAVOR;
            }
            if (charSequence3.length() <= 48) {
                spannableStringBuilder.append((CharSequence) "\n");
            } else {
                spannableStringBuilder.append((CharSequence) "  ");
            }
            spannableStringBuilder.append(charSequence3);
            remoteViews.setTextViewText(2131297099, spannableStringBuilder);
            remoteViews.setViewVisibility(d.b.g, 8);
            remoteViews.setViewVisibility(2131297099, 0);
            com.android.contacts.model.account.a a2 = com.android.contacts.model.a.a(context).a(streamItemEntry.getAccountType(), streamItemEntry.getDataSet());
            if (a2.k() != null) {
                Intent intent2 = new Intent("android.intent.action.VIEW", ContentUris.withAppendedId(ContactsContract.StreamItems.CONTENT_URI, streamItemEntry.getId()));
                intent2.setClassName(a2.d, a2.k());
                remoteViews.setOnClickPendingIntent(2131297100, PendingIntent.getActivity(context, 0, intent2, 0));
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        for (int i : iArr) {
            com.android.contacts.model.d dVar = f2163a.get(i);
            if (dVar != null) {
                Log.d("SocialWidgetProvider", "Stopping loader for widget with id=" + i);
                dVar.reset();
                f2163a.delete(i);
            }
        }
        com.android.contacts.socialwidget.a.a();
        com.android.contacts.socialwidget.a.a(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.appwidget.action.APPWIDGET_UPDATE_SIM".equals(action)) {
            Log.d("SocialWidgetProvider", "UPADET WIDGET: android.appwidget.action.APPWIDGET_UPDATE_SIM");
            try {
                try {
                    if (f2164b == null || f2164b.size() <= 0) {
                        int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, SocialWidgetProvider.class));
                        Log.d("SocialWidgetProvider", "re get simWidgetIds size " + appWidgetIds.length);
                        for (int i : appWidgetIds) {
                            a(context, AppWidgetManager.getInstance(context), i, false);
                        }
                    } else {
                        Iterator<Integer> it = f2164b.iterator();
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            a(context, AppWidgetManager.getInstance(context), intValue, true);
                            Log.d("SocialWidgetProvider", "Miss (SIM) Widget id:" + intValue);
                        }
                    }
                    if (f2164b != null) {
                        f2164b.clear();
                        f2164b = null;
                    }
                } catch (Exception e) {
                    Log.d("SocialWidgetProvider", "loadWidgetData Exception:" + e.toString());
                    if (f2164b != null) {
                        f2164b.clear();
                        f2164b = null;
                    }
                }
            } catch (Throwable th) {
                if (f2164b != null) {
                    f2164b.clear();
                    f2164b = null;
                }
                throw th;
            }
        } else if ("android.asus.action.UPDATE_THEME".equals(action)) {
            Log.d("SocialWidgetProvider", "UPADET WIDGET: android.asus.action.UPDATE_THEME");
            new a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            Log.d("SocialWidgetProvider", "Default intent: " + action);
            super.onReceive(context, intent);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            Log.d("SocialWidgetProvider", "onUpdate called for " + iArr[i]);
        }
        for (int i2 : iArr) {
            a(context, appWidgetManager, i2, false);
        }
    }
}
