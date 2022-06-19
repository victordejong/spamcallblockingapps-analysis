.class final Lcom/facebook/y;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/y$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Lcom/facebook/y$a;

.field private static e:Lcom/facebook/y$a;

.field private static f:Lcom/facebook/y$a;

.field private static g:Lcom/facebook/y$a;

.field private static h:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/facebook/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/y;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/y;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Lcom/facebook/y$a;

    const-string/jumbo v1, "com.facebook.sdk.AutoInitEnabled"

    invoke-direct {v0, v3, v1}, Lcom/facebook/y$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/y;->d:Lcom/facebook/y$a;

    .line 60
    new-instance v0, Lcom/facebook/y$a;

    const-string/jumbo v1, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-direct {v0, v3, v1}, Lcom/facebook/y$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/y;->e:Lcom/facebook/y$a;

    .line 63
    new-instance v0, Lcom/facebook/y$a;

    const-string/jumbo v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-direct {v0, v3, v1}, Lcom/facebook/y$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/y;->f:Lcom/facebook/y$a;

    .line 66
    new-instance v0, Lcom/facebook/y$a;

    const-string/jumbo v1, "auto_event_setup_enabled"

    invoke-direct {v0, v2, v1}, Lcom/facebook/y$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/facebook/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/facebook/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.sdk.USER_SETTINGS"

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/y;->h:Landroid/content/SharedPreferences;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/y$a;

    sget-object v1, Lcom/facebook/y;->e:Lcom/facebook/y$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/y;->f:Lcom/facebook/y$a;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/y;->d:Lcom/facebook/y$a;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/y;->a([Lcom/facebook/y$a;)V

    .line 113
    invoke-static {}, Lcom/facebook/y;->j()V

    .line 114
    invoke-static {}, Lcom/facebook/y;->k()V

    .line 115
    invoke-static {}, Lcom/facebook/y;->l()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/y$a;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/y;->b(Lcom/facebook/y$a;)V

    return-void
.end method

.method private static varargs a([Lcom/facebook/y$a;)V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 120
    aget-object v1, p0, v0

    .line 121
    sget-object v2, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    if-ne v1, v2, :cond_1

    .line 122
    invoke-static {}, Lcom/facebook/y;->j()V

    .line 119
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, v1, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 125
    invoke-static {v1}, Lcom/facebook/y;->c(Lcom/facebook/y$a;)V

    .line 126
    iget-object v2, v1, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 127
    invoke-static {v1}, Lcom/facebook/y;->d(Lcom/facebook/y$a;)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-static {v1}, Lcom/facebook/y;->b(Lcom/facebook/y$a;)V

    goto :goto_1

    .line 135
    :cond_3
    return-void
.end method

.method static b()V
    .locals 4

    .prologue
    .line 314
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 316
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 315
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.AutoAppLinkEnabled"

    const/4 v3, 0x0

    .line 318
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    new-instance v1, Lcom/facebook/a/m;

    invoke-direct {v1, v0}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    invoke-static {}, Lcom/facebook/internal/x;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    const-string/jumbo v2, "SchemeWarning"

    const-string/jumbo v3, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/facebook/y;->a:Ljava/lang/String;

    const-string/jumbo v3, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const-string/jumbo v2, "fb_auto_applink"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/a/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/y$a;)V
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/facebook/y;->m()V

    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v1, "last_timestamp"

    iget-wide v2, p0, Lcom/facebook/y$a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    sget-object v1, Lcom/facebook/y;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/y$a;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    invoke-static {}, Lcom/facebook/y;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lcom/facebook/y;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static c(Lcom/facebook/y$a;)V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/facebook/y;->m()V

    .line 209
    :try_start_0
    sget-object v0, Lcom/facebook/y;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/facebook/y$a;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "value"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    .line 213
    const-string/jumbo v0, "last_timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/y$a;->d:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lcom/facebook/y;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/facebook/y;->a()V

    .line 352
    sget-object v0, Lcom/facebook/y;->d:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/facebook/y$a;)V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/facebook/y;->m()V

    .line 223
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    .line 225
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/y$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/y$a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/y$a;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    sget-object v1, Lcom/facebook/y;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/facebook/y;->a()V

    .line 367
    sget-object v0, Lcom/facebook/y;->e:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/facebook/y;->a()V

    .line 382
    sget-object v0, Lcom/facebook/y;->f:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/facebook/y;->a()V

    .line 387
    sget-object v0, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lcom/facebook/y$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/y;->f:Lcom/facebook/y$a;

    return-object v0
.end method

.method static synthetic h()Lcom/facebook/y$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/y;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static j()V
    .locals 6

    .prologue
    .line 138
    sget-object v0, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    invoke-static {v0}, Lcom/facebook/y;->c(Lcom/facebook/y$a;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    sget-object v2, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    iget-object v2, v2, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    iget-wide v2, v2, Lcom/facebook/y$a;->d:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v2, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    .line 144
    sget-object v2, Lcom/facebook/y;->g:Lcom/facebook/y$a;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/facebook/y$a;->d:J

    .line 147
    sget-object v2, Lcom/facebook/y;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/y$1;

    invoke-direct {v3, v0, v1}, Lcom/facebook/y$1;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static k()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    .line 242
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    sget-object v1, Lcom/facebook/y;->a:Ljava/lang/String;

    const-string/jumbo v2, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/facebook/y;->a:Ljava/lang/String;

    const-string/jumbo v1, "You haven\'t set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    invoke-static {}, Lcom/facebook/y;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    sget-object v0, Lcom/facebook/y;->a:Ljava/lang/String;

    const-string/jumbo v1, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you\'re sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static l()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    sget-object v0, Lcom/facebook/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-static {}, Lcom/facebook/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v6

    .line 273
    sget-object v0, Lcom/facebook/y;->d:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    shl-int/2addr v0, v2

    or-int v3, v2, v0

    .line 274
    sget-object v0, Lcom/facebook/y;->e:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v3, v0

    .line 275
    sget-object v0, Lcom/facebook/y;->f:Lcom/facebook/y$a;

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    shl-int/lit8 v0, v0, 0x2

    or-int v7, v3, v0

    .line 277
    sget-object v0, Lcom/facebook/y;->h:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 278
    if-eq v8, v7, :cond_0

    .line 279
    sget-object v0, Lcom/facebook/y;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 285
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 284
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 287
    if-eqz v9, :cond_8

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 288
    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "com.facebook.sdk.AutoInitEnabled"

    aput-object v3, v10, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "com.facebook.sdk.AutoLogAppEventsEnabled"

    aput-object v3, v10, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    aput-object v3, v10, v0

    .line 293
    const/4 v0, 0x3

    new-array v11, v0, [Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    fill-array-data v11, :array_0

    move v5, v2

    move v0, v2

    move v3, v2

    .line 294
    :goto_4
    :try_start_1
    array-length v4, v10

    if-ge v5, v4, :cond_7

    .line 295
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v12, v10, v5

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    :goto_5
    shl-int/2addr v4, v5

    or-int/2addr v4, v0

    .line 296
    :try_start_2
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v12, v10, v5

    aget-boolean v13, v11, v5

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 297
    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    shl-int/2addr v0, v5

    or-int/2addr v3, v0

    .line 294
    add-int/lit8 v5, v5, 0x1

    move v0, v4

    goto :goto_4

    :cond_2
    move v0, v2

    .line 273
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 274
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 275
    goto :goto_3

    :cond_5
    move v4, v2

    .line 295
    goto :goto_5

    :cond_6
    move v0, v2

    .line 297
    goto :goto_6

    .line 300
    :catch_0
    move-exception v0

    move v0, v2

    move v1, v2

    .line 302
    :goto_7
    new-instance v2, Lcom/facebook/a/m;

    invoke-direct {v2, v6}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 303
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 304
    const-string/jumbo v4, "usage"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v0, "initial"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string/jumbo v0, "previous"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "current"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string/jumbo v0, "fb_sdk_settings_changed"

    invoke-virtual {v2, v0, v3}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 300
    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move v0, v4

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v3

    goto :goto_7

    :cond_8
    move v0, v2

    move v1, v2

    goto :goto_7

    .line 293
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/facebook/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/facebook/FacebookSdkNotInitializedException;

    const-string/jumbo v1, "The UserSettingManager has not been initialized successfully"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method
