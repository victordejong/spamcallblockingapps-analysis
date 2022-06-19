.class public Lcom/unknownphone/callblocker/custom/CustomApplication;
.super Landroid/app/Application;
.source "CustomApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/custom/CustomApplication$a;
    }
.end annotation


# static fields
.field private static a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/custom/CustomApplication;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/unknownphone/callblocker/custom/CustomApplication;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    sget-object v0, Lcom/unknownphone/callblocker/custom/CustomApplication;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/unknownphone/callblocker/custom/CustomApplication;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string/jumbo v0, "_action"

    const-string/jumbo v3, "_get_dangerous_phones_list"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v0, "api_key"

    iget-object v3, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "api_key"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "region"

    iget-object v3, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "region_code"

    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v3, "lang"

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "user_type"

    const-string/jumbo v3, "free"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "device"

    const-string/jumbo v3, "Android"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "country_code"

    iget-object v3, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "region_code"

    .line 65
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "O1"

    invoke-static {v3, v4}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;

    new-instance v3, Lcom/unknownphone/callblocker/custom/CustomApplication$1;

    invoke-direct {v3, p0, v1}, Lcom/unknownphone/callblocker/custom/CustomApplication$1;-><init>(Lcom/unknownphone/callblocker/custom/CustomApplication;Lcom/unknownphone/callblocker/d/b;)V

    invoke-direct {v0, v2, v3}, Lcom/unknownphone/callblocker/custom/CustomApplication$a;-><init>(Ljava/util/Map;Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 74
    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "just_became_aware"

    const/4 v2, 0x1

    .line 77
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "first_launch"

    .line 78
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "credits"

    const/16 v2, 0x4b

    .line 79
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/custom/CustomApplication;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->b()V

    return-void
.end method

.method private c()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string/jumbo v2, "os_version"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v2, "user_id"

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v2, "_action"

    const-string/jumbo v3, "_get_new_api_key"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v2, "device"

    const-string/jumbo v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Lcom/unknownphone/callblocker/custom/CustomApplication$2;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/custom/CustomApplication$2;-><init>(Lcom/unknownphone/callblocker/custom/CustomApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/custom/CustomApplication;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 40
    const-string/jumbo v0, "ca-app-pub-4660838923216567~5881892979"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/custom/CustomApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "api_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->c()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_launch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->b()V

    goto :goto_0
.end method
