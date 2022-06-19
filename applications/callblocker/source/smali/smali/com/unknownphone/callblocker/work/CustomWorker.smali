.class public Lcom/unknownphone/callblocker/work/CustomWorker;
.super Landroidx/work/Worker;
.source "CustomWorker.java"


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/unknownphone/callblocker/work/CustomWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/work/CustomWorker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 49
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 118
    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "main"

    const-string/jumbo v3, "Main"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_0
    new-instance v2, Landroidx/core/app/h$c;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "main"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$c;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10012d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v2

    const v3, 0x7f080105

    .line 134
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->a(I)Landroidx/core/app/h$c;

    move-result-object v2

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->b(I)Landroidx/core/app/h$c;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Landroidx/core/app/h$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v1

    const/4 v2, 0x1

    .line 137
    invoke-virtual {v1, v2}, Landroidx/core/app/h$c;->a(Z)Landroidx/core/app/h$c;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 140
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHH"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v1}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 143
    :cond_1
    return-void

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10017d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public m()Landroidx/work/ListenableWorker$a;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 54
    sget-object v0, Lcom/unknownphone/callblocker/work/CustomWorker;->b:Ljava/lang/String;

    const-string/jumbo v1, "doWork() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/unknownphone/callblocker/work/CustomService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 58
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 60
    const/16 v4, 0xf

    if-ge v0, v4, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "com.unknownphone.callblocker.PREFS"

    const/4 v5, 0x0

    .line 62
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 63
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "ddMMyyyy"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    const-string/jumbo v0, "last_refreshed_credits"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 66
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v0, "linked_to_fb"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    const-string/jumbo v6, "linked_to_google"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 70
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "credits"

    if-nez v0, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/16 v0, 0x5a

    .line 71
    :goto_1
    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v6, "last_refreshed_credits"

    .line 72
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v1

    .line 75
    new-instance v5, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string/jumbo v0, "_action"

    const-string/jumbo v7, "_get_dangerous_phones_list"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "api_key"

    const-string/jumbo v7, "api_key"

    const-string/jumbo v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "region"

    const-string/jumbo v7, "region_code"

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v7, "lang"

    const-string/jumbo v0, "language_code"

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v7, "user_type"

    const-string/jumbo v0, "subscription_ends_at"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "premium"

    :goto_2
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "device"

    const-string/jumbo v7, "Android"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v0, "country_code"

    const-string/jumbo v7, "region_code"

    .line 86
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "O1"

    invoke-static {v7, v8}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v1, v6}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v6

    .line 88
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_3
    move v1, v3

    .line 95
    :goto_4
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-ge v1, v2, :cond_6

    .line 97
    :try_start_3
    new-instance v2, Lcom/unknownphone/callblocker/g/a;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/unknownphone/callblocker/g/a;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 70
    :cond_4
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 82
    :cond_5
    :try_start_4
    const-string/jumbo v0, "free"

    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {v5, v7}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/util/List;)V

    .line 101
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "spam_numbers_last_update"

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "click_counter"

    const/16 v2, 0x14

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :cond_7
    const-string/jumbo v0, "subscription_ends_at"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/work/CustomWorker;->a(Z)V

    .line 107
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    :catch_2
    move-exception v2

    goto :goto_5
.end method
