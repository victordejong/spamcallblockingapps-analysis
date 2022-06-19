.class public Lcom/callapp/contacts/util/LocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    const-string v0, "system_locale"

    .line 43
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .locals 1

    .line 124
    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 128
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    const p2, 0x7f1201d2

    .line 133
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_1

    .line 137
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/LocaleUtils;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 140
    :cond_1
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/LocaleUtils;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "LocaleUtils.menuLangauge"

    .line 152
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "system_locale"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 51
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    .line 1221
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pt"

    const-string v4, "en"

    const-string/jumbo v5, "zh"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1223
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "nl"

    .line 1225
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1227
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "fr"

    .line 1229
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "de"

    .line 1231
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, "iw"

    .line 1233
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string v2, "hi"

    .line 1235
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v2, "id"

    .line 1237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    const-string v2, "it"

    .line 1239
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const-string v2, "ja"

    .line 1241
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    const-string v2, "ko"

    .line 1243
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    const-string v2, "pl"

    .line 1245
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1

    :cond_e
    const-string v2, "ms"

    .line 1247
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    const-string v2, "no"

    .line 1249
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_1

    .line 1251
    :cond_10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string v2, "ro"

    .line 1253
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string v2, "ru"

    .line 1255
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_1

    :cond_13
    const-string v2, "es"

    .line 1257
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const-string v2, "el"

    .line 1259
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_1

    :cond_15
    const-string v2, "th"

    .line 1261
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string v2, "tr"

    .line 1263
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_1

    :cond_17
    const-string v2, "uk"

    .line 1265
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_1

    :cond_18
    const-string v2, "af"

    .line 1267
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v2, "zu"

    .line 1269
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    :goto_2
    if-eqz v1, :cond_1d

    .line 2204
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2205
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 2210
    :cond_1b
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object v0

    :cond_1d
    return-object v4

    :cond_1e
    return-object p0
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/play/core/tasks/d;)V
    .locals 5

    const-string v0, "Settings"

    .line 301
    const-class v1, Lcom/callapp/contacts/util/LocaleUtils;

    invoke-virtual {p5}, Lcom/google/android/play/core/tasks/d;->b()Z

    move-result v2

    const v3, 0x7f1203fe

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p5}, Lcom/google/android/play/core/tasks/d;->c()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/play/core/splitinstall/c;

    .line 303
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 305
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string p4, "startConfirmationDialog start"

    invoke-virtual {p3, v0, p4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    check-cast p0, Landroid/app/Activity;

    const/4 p3, 0x3

    invoke-interface {p1, p5, p0, p3}, Lcom/google/android/play/core/splitinstall/a;->a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 308
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "startConfirmationDialog error"

    invoke-virtual {p1, v0, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "error showing user confirmation dialog for language: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "language exists: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", langCode("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 314
    new-instance p1, Lcom/callapp/contacts/util/LocaleUtils$1;

    invoke-direct {p1, p0, p3, p4}, Lcom/callapp/contacts/util/LocaleUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 p0, 0xbb8

    .line 319
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/LocaleUtils$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 7

    .line 299
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-interface {p0, p5}, Lcom/google/android/play/core/splitinstall/a;->a(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p5

    new-instance v6, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p5, v6}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;

    return-void

    .line 326
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 329
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1203fe

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 330
    const-class v0, Lcom/callapp/contacts/util/LocaleUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error downloading language: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "en"

    .line 147
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const-string v0, "_"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance v0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LocaleUtils.menuLangauge"

    .line 159
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9

    .line 290
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ba:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3000
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/ab;->a()Lcom/google/android/play/core/splitinstall/a;

    move-result-object v2

    const-string v0, "system_locale"

    .line 292
    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Lcom/google/android/play/core/splitinstall/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    .line 293
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4000
    new-instance v1, Lcom/google/android/play/core/splitinstall/b$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/play/core/splitinstall/b$a;-><init>([B)V

    .line 294
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 5000
    iget-object v4, v1, Lcom/google/android/play/core/splitinstall/b$a;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6000
    new-instance v3, Lcom/google/android/play/core/splitinstall/b;

    invoke-direct {v3, v1}, Lcom/google/android/play/core/splitinstall/b;-><init>(Lcom/google/android/play/core/splitinstall/b$a;)V

    .line 295
    const-class v1, Lcom/callapp/contacts/util/LocaleUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "installed languages: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/google/android/play/core/splitinstall/a;->a()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 296
    invoke-interface {v2, v3}, Lcom/google/android/play/core/splitinstall/a;->a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;

    move-object v1, v8

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;-><init>(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-virtual {v7, v8}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$Gsi6GLVa9pEGqq4tbmU0qnZwlK0;

    invoke-direct {p1, v0}, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$Gsi6GLVa9pEGqq4tbmU0qnZwlK0;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-void

    .line 333
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 166
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 176
    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 177
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 182
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 183
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 185
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method static isIndonesianUser()Z
    .locals 2

    .line 282
    sget-object v0, Lcom/callapp/contacts/util/LocaleUtils;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 283
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/LocaleUtils;->b:Ljava/lang/Boolean;

    .line 286
    :cond_2
    sget-object v0, Lcom/callapp/contacts/util/LocaleUtils;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRussianUser()Z
    .locals 4

    .line 84
    sget-object v0, Lcom/callapp/contacts/util/LocaleUtils;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/util/LocaleUtils;->a:Ljava/lang/Boolean;

    .line 87
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->getPhoneAndCountry()Landroid/util/Pair;

    move-result-object v1

    .line 90
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->getCountryISO()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_2
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "UA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_1
    const-string v2, "RU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_2
    const-string v2, "MD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    const-string v2, "KZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v2, "KG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_5
    const-string v2, "GE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_6
    const-string v2, "BY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_7
    const-string v3, "AM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 114
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/util/LocaleUtils;->a:Ljava/lang/Boolean;

    .line 120
    :cond_b
    :goto_3
    sget-object v0, Lcom/callapp/contacts/util/LocaleUtils;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x82c -> :sswitch_7
        0x857 -> :sswitch_6
        0x8de -> :sswitch_5
        0x95c -> :sswitch_4
        0x96f -> :sswitch_3
        0x997 -> :sswitch_2
        0xa43 -> :sswitch_1
        0xa8c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$Gsi6GLVa9pEGqq4tbmU0qnZwlK0(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$YWCHK_Gu_gbp83TEze9_btpho0U(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/play/core/tasks/d;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/play/core/tasks/d;)V

    return-void
.end method

.method public static synthetic lambda$irylFRansP1QiphwdqSblkSmAsg(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/callapp/contacts/util/LocaleUtils;->a(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method
