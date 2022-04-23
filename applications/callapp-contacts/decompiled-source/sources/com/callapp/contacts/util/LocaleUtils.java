package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.preference.PreferenceManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.framework.util.StringUtils;
import com.google.android.play.core.splitinstall.a;
import com.google.android.play.core.splitinstall.b;
import com.google.android.play.core.splitinstall.c;
import com.google.android.play.core.splitinstall.z;
import com.google.android.play.core.tasks.d;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LocaleUtils.class */
public class LocaleUtils {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f15925a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f15926b;

    public static Context a(Context context) {
        return a(context, a(context, "system_locale"), false);
    }

    public static Context a(Context context, String str, boolean z) {
        String a2 = a(str);
        Locale locale = Locale.getDefault();
        b(context, a2);
        Context context2 = context;
        if (!StringUtils.b((Object) locale.getLanguage(), (Object) a2)) {
            if (z) {
                AndroidUtils.a(context, Activities.getString(2131886546));
            }
            if (Build.VERSION.SDK_INT >= 24) {
                return c(context, a2);
            }
            context2 = d(context, a2);
        }
        return context2;
    }

    public static String a(Context context, String str) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return PreferenceManager.getDefaultSharedPreferences(context2).getString("LocaleUtils.menuLangauge", str);
    }

    public static String a(String str) {
        if (!str.equals("system_locale")) {
            return str;
        }
        boolean z = false;
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Resources.getSystem().getConfiguration().getLocales().get(0) : Resources.getSystem().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("ar".equalsIgnoreCase(language) || "zh".equalsIgnoreCase(language) || "nl".equalsIgnoreCase(language) || "en".equalsIgnoreCase(language) || "fr".equalsIgnoreCase(language) || "de".equalsIgnoreCase(language) || "iw".equalsIgnoreCase(language) || "hi".equalsIgnoreCase(language) || "id".equalsIgnoreCase(language) || "in".equalsIgnoreCase(language) || "it".equalsIgnoreCase(language) || "ja".equalsIgnoreCase(language) || "ko".equalsIgnoreCase(language) || "pl".equalsIgnoreCase(language) || "ms".equalsIgnoreCase(language) || "no".equalsIgnoreCase(language) || "pt".equalsIgnoreCase(language) || "ro".equalsIgnoreCase(language) || "ru".equalsIgnoreCase(language) || "es".equalsIgnoreCase(language) || "el".equalsIgnoreCase(language) || "th".equalsIgnoreCase(language) || "tr".equalsIgnoreCase(language) || "uk".equalsIgnoreCase(language) || "af".equalsIgnoreCase(language) || "zu".equalsIgnoreCase(language)) {
            z = true;
        }
        if (!z) {
            return "en";
        }
        String language2 = locale.getLanguage();
        language2.hashCode();
        if ((language2.equals("pt") || language2.equals("zh")) && StringUtils.b((CharSequence) locale.getCountry())) {
            return language2 + "_" + locale.getCountry();
        }
        return language2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final Context context, a aVar, String str, final String str2, final boolean z, d dVar) {
        if (dVar.b()) {
            c cVar = (c) dVar.c();
            if (!(context instanceof Activity) || cVar.b() != 8) {
                CLog.a(LocaleUtils.class, "language exists: " + str + ", langCode(" + str2 + "), state: " + cVar.b());
                new Task() { // from class: com.callapp.contacts.util.LocaleUtils.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        LocaleUtils.a(context, str2, z);
                    }
                }.schedule(3000);
                return;
            }
            try {
                AnalyticsManager.get().a(Constants.SETTINGS, "startConfirmationDialog start");
                aVar.a(cVar, (Activity) context, 3);
            } catch (IntentSender.SendIntentException e) {
                AnalyticsManager.get().a(Constants.SETTINGS, "startConfirmationDialog error");
                FeedbackManager.get().a(Activities.getString(2131887102));
                CLog.b(LocaleUtils.class, "error showing user confirmation dialog for language: " + str + ", " + e);
            }
        } else {
            FeedbackManager.get().a(Activities.getString(2131887102));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final a aVar, final Context context, final String str, final String str2, final boolean z, Integer num) {
        if (num.intValue() != 0) {
            aVar.a(num.intValue()).a(new com.google.android.play.core.tasks.a() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U
                @Override // com.google.android.play.core.tasks.a
                public final void onComplete(d dVar) {
                    LocaleUtils.a(context, aVar, str, str2, z, dVar);
                }
            });
        } else {
            a(context, str2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Exception exc) {
        FeedbackManager.get().a(Activities.getString(2131887102));
        CLog.b(LocaleUtils.class, "error downloading language: " + str + ", " + exc);
    }

    public static String b(Context context) {
        return a(context, "en");
    }

    private static Locale b(String str) {
        Locale locale;
        if (str.contains("_")) {
            String[] split = str.split("_");
            locale = new Locale(split[0], split[1]);
        } else {
            locale = new Locale(str);
        }
        return locale;
    }

    private static void b(Context context, String str) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context2).edit();
        edit.putString("LocaleUtils.menuLangauge", str);
        edit.commit();
    }

    public static void b(final Context context, final String str, final boolean z) {
        Prefs.ba.set(Boolean.TRUE);
        final a a2 = z.a(context).a();
        if (StringUtils.b("system_locale", str) || a2.a().contains(str)) {
            a(context, str, z);
            return;
        }
        final String i = StringUtils.i(str, "_");
        b.a aVar = new b.a(null);
        aVar.f31517b.add(Locale.forLanguageTag(i));
        b bVar = new b(aVar);
        CLog.a(LocaleUtils.class, "installed languages: " + a2.a());
        a2.a(bVar).a(new com.google.android.play.core.tasks.c() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg
            @Override // com.google.android.play.core.tasks.c
            public final void onSuccess(Object obj) {
                LocaleUtils.a(a.this, context, i, str, z, (Integer) obj);
            }
        }).a(new com.google.android.play.core.tasks.b() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$Gsi6GLVa9pEGqq4tbmU0qnZwlK0
            @Override // com.google.android.play.core.tasks.b
            public final void onFailure(Exception exc) {
                LocaleUtils.a(i, exc);
            }
        });
    }

    private static Context c(Context context, String str) {
        Locale b2 = b(str);
        Locale.setDefault(b2);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(b2);
        configuration.setLayoutDirection(b2);
        return context.createConfigurationContext(configuration);
    }

    private static Context d(Context context, String str) {
        Locale b2 = b(str);
        Locale.setDefault(b2);
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        configuration.locale = b2;
        configuration.setLayoutDirection(b2);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isIndonesianUser() {
        if (f15926b == null) {
            String language = Resources.getSystem().getConfiguration().locale.getLanguage();
            f15926b = Boolean.valueOf(language.equalsIgnoreCase("id") || language.equalsIgnoreCase("in"));
        }
        return f15926b.booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0148, code lost:
        if (r3.equals("AM") == false) goto L_0x00bc;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isRussianUser() {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.LocaleUtils.isRussianUser():boolean");
    }
}
