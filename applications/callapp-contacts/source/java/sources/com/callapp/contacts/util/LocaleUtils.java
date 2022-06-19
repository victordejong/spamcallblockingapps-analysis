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
import com.google.android.play.core.splitinstall.AbstractC15123a;
import com.google.android.play.core.splitinstall.AbstractC15152c;
import com.google.android.play.core.splitinstall.C15150b;
import com.google.android.play.core.splitinstall.C15176z;
import com.google.android.play.core.tasks.AbstractC15177a;
import com.google.android.play.core.tasks.AbstractC15178b;
import com.google.android.play.core.tasks.AbstractC15179c;
import com.google.android.play.core.tasks.AbstractC15180d;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LocaleUtils.class */
public class LocaleUtils {

    /* renamed from: a */
    private static Boolean f27768a;

    /* renamed from: b */
    private static Boolean f27769b;

    /* renamed from: a */
    public static Context m27467a(Context context) {
        return m27464a(context, m27465a(context, "system_locale"), false);
    }

    /* renamed from: a */
    public static Context m27464a(Context context, String str, boolean z) {
        String m27462a = m27462a(str);
        Locale locale = Locale.getDefault();
        m27459b(context, m27462a);
        Context context2 = context;
        if (!StringUtils.m26044b((Object) locale.getLanguage(), (Object) m27462a)) {
            if (z) {
                AndroidUtils.m27633a(context, Activities.getString(2131886546));
            }
            if (Build.VERSION.SDK_INT >= 24) {
                return m27456c(context, m27462a);
            }
            context2 = m27455d(context, m27462a);
        }
        return context2;
    }

    /* renamed from: a */
    public static String m27465a(Context context, String str) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return PreferenceManager.getDefaultSharedPreferences(context2).getString("LocaleUtils.menuLangauge", str);
    }

    /* renamed from: a */
    public static String m27462a(String str) {
        if (str.equals("system_locale")) {
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
            if ((language2.equals("pt") || language2.equals("zh")) && StringUtils.m26045b((CharSequence) locale.getCountry())) {
                return language2 + "_" + locale.getCountry();
            }
            return language2;
        }
        return str;
    }

    /* renamed from: a */
    public static /* synthetic */ void m27466a(final Context context, AbstractC15123a abstractC15123a, String str, final String str2, final boolean z, AbstractC15180d abstractC15180d) {
        if (!abstractC15180d.mo9313b()) {
            FeedbackManager.get().m28671a(Activities.getString(2131887102));
            return;
        }
        AbstractC15152c abstractC15152c = (AbstractC15152c) abstractC15180d.mo9310c();
        if (!(context instanceof Activity) || abstractC15152c.mo9380b() != 8) {
            CLog.m27611a(LocaleUtils.class, "language exists: " + str + ", langCode(" + str2 + "), state: " + abstractC15152c.mo9380b());
            new Task() { // from class: com.callapp.contacts.util.LocaleUtils.1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    LocaleUtils.m27464a(context, str2, z);
                }
            }.schedule(3000);
            return;
        }
        try {
            AnalyticsManager.get().m28450a(Constants.SETTINGS, "startConfirmationDialog start");
            abstractC15123a.mo9337a(abstractC15152c, (Activity) context, 3);
        } catch (IntentSender.SendIntentException e) {
            AnalyticsManager.get().m28450a(Constants.SETTINGS, "startConfirmationDialog error");
            FeedbackManager.get().m28671a(Activities.getString(2131887102));
            CLog.m27598b(LocaleUtils.class, "error showing user confirmation dialog for language: " + str + ", " + e);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m27463a(final AbstractC15123a abstractC15123a, final Context context, final String str, final String str2, final boolean z, Integer num) {
        if (num.intValue() != 0) {
            abstractC15123a.mo9339a(num.intValue()).mo9320a(new AbstractC15177a() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U
                @Override // com.google.android.play.core.tasks.AbstractC15177a
                public final void onComplete(AbstractC15180d abstractC15180d) {
                    LocaleUtils.m27466a(context, abstractC15123a, str, str2, z, abstractC15180d);
                }
            });
        } else {
            m27464a(context, str2, z);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m27461a(String str, Exception exc) {
        FeedbackManager.get().m28671a(Activities.getString(2131887102));
        CLog.m27598b(LocaleUtils.class, "error downloading language: " + str + ", " + exc);
    }

    /* renamed from: b */
    public static String m27460b(Context context) {
        return m27465a(context, "en");
    }

    /* renamed from: b */
    private static Locale m27457b(String str) {
        Locale locale;
        if (str.contains("_")) {
            String[] split = str.split("_");
            locale = new Locale(split[0], split[1]);
        } else {
            locale = new Locale(str);
        }
        return locale;
    }

    /* renamed from: b */
    private static void m27459b(Context context, String str) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context2).edit();
        edit.putString("LocaleUtils.menuLangauge", str);
        edit.commit();
    }

    /* renamed from: b */
    public static void m27458b(final Context context, final String str, final boolean z) {
        Prefs.f26303ba.set(Boolean.TRUE);
        final AbstractC15123a mo9348a = C15176z.m9334a(context).mo9348a();
        if (StringUtils.m26042b("system_locale", str) || mo9348a.mo9340a().contains(str)) {
            m27464a(context, str, z);
            return;
        }
        final String m26021i = StringUtils.m26021i(str, "_");
        C15150b.C15151a c15151a = new C15150b.C15151a(null);
        c15151a.f54953b.add(Locale.forLanguageTag(m26021i));
        C15150b c15150b = new C15150b(c15151a);
        CLog.m27611a(LocaleUtils.class, "installed languages: " + mo9348a.mo9340a());
        mo9348a.mo9338a(c15150b).mo9318a(new AbstractC15179c() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg
            @Override // com.google.android.play.core.tasks.AbstractC15179c
            public final void onSuccess(Object obj) {
                LocaleUtils.m27463a(AbstractC15123a.this, context, m26021i, str, z, (Integer) obj);
            }
        }).mo9319a(new AbstractC15178b() { // from class: com.callapp.contacts.util._$$Lambda$LocaleUtils$Gsi6GLVa9pEGqq4tbmU0qnZwlK0
            @Override // com.google.android.play.core.tasks.AbstractC15178b
            public final void onFailure(Exception exc) {
                LocaleUtils.m27461a(m26021i, exc);
            }
        });
    }

    /* renamed from: c */
    private static Context m27456c(Context context, String str) {
        Locale m27457b = m27457b(str);
        Locale.setDefault(m27457b);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(m27457b);
        configuration.setLayoutDirection(m27457b);
        return context.createConfigurationContext(configuration);
    }

    /* renamed from: d */
    private static Context m27455d(Context context, String str) {
        Locale m27457b = m27457b(str);
        Locale.setDefault(m27457b);
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        configuration.locale = m27457b;
        configuration.setLayoutDirection(m27457b);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context;
    }

    public static boolean isIndonesianUser() {
        if (f27769b == null) {
            String language = Resources.getSystem().getConfiguration().locale.getLanguage();
            f27769b = Boolean.valueOf(language.equalsIgnoreCase("id") || language.equalsIgnoreCase("in"));
        }
        return f27769b.booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0148, code lost:
        if (r3.equals("AM") == false) goto L20;
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
