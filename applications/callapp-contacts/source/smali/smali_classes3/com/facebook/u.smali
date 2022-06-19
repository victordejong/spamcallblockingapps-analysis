.class final Lcom/facebook/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/u$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.u"

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Lcom/facebook/u$a;

.field private static e:Lcom/facebook/u$a;

.field private static f:Lcom/facebook/u$a;

.field private static g:Lcom/facebook/u$a;

.field private static h:Lcom/facebook/u$a;

.field private static i:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/u;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/facebook/u$a;

    const/4 v2, 0x1

    const-string v3, "com.facebook.sdk.AutoInitEnabled"

    invoke-direct {v0, v2, v3}, Lcom/facebook/u$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/u;->d:Lcom/facebook/u$a;

    .line 57
    new-instance v0, Lcom/facebook/u$a;

    const-string v3, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-direct {v0, v2, v3}, Lcom/facebook/u$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/u;->e:Lcom/facebook/u$a;

    .line 59
    new-instance v0, Lcom/facebook/u$a;

    const-string v3, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-direct {v0, v2, v3}, Lcom/facebook/u$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/u;->f:Lcom/facebook/u$a;

    .line 61
    new-instance v0, Lcom/facebook/u$a;

    const-string v3, "auto_event_setup_enabled"

    invoke-direct {v0, v1, v3}, Lcom/facebook/u$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    .line 65
    new-instance v0, Lcom/facebook/u$a;

    const-string v1, "com.facebook.sdk.MonitorEnabled"

    invoke-direct {v0, v2, v1}, Lcom/facebook/u$a;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/u;->h:Lcom/facebook/u$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 6

    const-string v0, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    const-class v1, Lcom/facebook/u;

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 316
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 319
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.facebook.sdk.AutoAppLinkEnabled"

    const/4 v5, 0x0

    .line 322
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    new-instance v3, Lcom/facebook/appevents/m;

    invoke-direct {v3, v2}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 325
    invoke-static {}, Lcom/facebook/internal/ae;->f()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SchemeWarning"

    .line 326
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v4, Lcom/facebook/u;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "fb_auto_applink"

    .line 329
    invoke-virtual {v3, v0, v2}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 334
    invoke-static {v0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/u$a;)V
    .locals 2

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 45
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/u;->b(Lcom/facebook/u$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Lcom/facebook/u$a;)V
    .locals 5

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "value"

    .line 196
    iget-object v3, p0, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_timestamp"

    .line 197
    iget-wide v3, p0, Lcom/facebook/u$a;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    sget-object v2, Lcom/facebook/u;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object p0, p0, Lcom/facebook/u$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    invoke-static {}, Lcom/facebook/u;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception p0

    .line 201
    :try_start_2
    sget-object v1, Lcom/facebook/u;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 203
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 355
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->i()V

    .line 356
    sget-object v1, Lcom/facebook/u;->d:Lcom/facebook/u$a;

    invoke-virtual {v1}, Lcom/facebook/u$a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static c(Lcom/facebook/u$a;)V
    .locals 4

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 206
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    sget-object v1, Lcom/facebook/u;->i:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/facebook/u$a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    .line 211
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    const-string v1, "last_timestamp"

    .line 212
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/u$a;->d:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 215
    :try_start_2
    sget-object v1, Lcom/facebook/u;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 217
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static c()Z
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 370
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->i()V

    .line 371
    sget-object v1, Lcom/facebook/u;->e:Lcom/facebook/u$a;

    invoke-virtual {v1}, Lcom/facebook/u$a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static d()Z
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 385
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->i()V

    .line 386
    sget-object v1, Lcom/facebook/u;->f:Lcom/facebook/u$a;

    invoke-virtual {v1}, Lcom/facebook/u$a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static e()Z
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 390
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->i()V

    .line 391
    sget-object v1, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    invoke-virtual {v1}, Lcom/facebook/u$a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method static synthetic f()Lcom/facebook/u$a;
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/u;->f:Lcom/facebook/u$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic g()Lcom/facebook/u$a;
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/u;->g:Lcom/facebook/u$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static i()V
    .locals 9

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 102
    :cond_1
    sget-object v1, Lcom/facebook/u;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.facebook.sdk.USER_SETTINGS"

    .line 108
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/facebook/u;->i:Landroid/content/SharedPreferences;

    const/4 v1, 0x3

    new-array v4, v1, [Lcom/facebook/u$a;

    .line 110
    sget-object v5, Lcom/facebook/u;->e:Lcom/facebook/u$a;

    aput-object v5, v4, v3

    sget-object v5, Lcom/facebook/u;->f:Lcom/facebook/u$a;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    sget-object v5, Lcom/facebook/u;->d:Lcom/facebook/u$a;

    aput-object v5, v4, v2

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v5, 0x80

    if-nez v2, :cond_6

    :goto_0
    if-ge v3, v1, :cond_6

    .line 1118
    :try_start_1
    aget-object v2, v4, v3

    .line 1119
    sget-object v6, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    if-ne v2, v6, :cond_3

    .line 1120
    invoke-static {}, Lcom/facebook/u;->j()V

    goto :goto_1

    .line 1122
    :cond_3
    iget-object v6, v2, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    if-nez v6, :cond_4

    .line 1123
    invoke-static {v2}, Lcom/facebook/u;->c(Lcom/facebook/u$a;)V

    .line 1124
    iget-object v6, v2, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    if-nez v6, :cond_5

    .line 1125
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_5

    .line 1220
    :try_start_2
    invoke-static {}, Lcom/facebook/u;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1222
    :try_start_3
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v6

    .line 1224
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1225
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1226
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v8, v2, Lcom/facebook/u$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1228
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v7, v2, Lcom/facebook/u$a;->a:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/facebook/u$a;->c:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1232
    :try_start_4
    sget-object v6, Lcom/facebook/u;->a:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 1234
    :try_start_5
    invoke-static {v2, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_1

    .line 1129
    :cond_4
    invoke-static {v2}, Lcom/facebook/u;->b(Lcom/facebook/u$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 1133
    :try_start_6
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 111
    :cond_6
    invoke-static {}, Lcom/facebook/u;->j()V

    .line 112
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v1, :cond_9

    .line 1238
    :try_start_7
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 1240
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1241
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1242
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    .line 1244
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1245
    sget-object v2, Lcom/facebook/u;->a:Ljava/lang/String;

    const-string v3, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_7
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1248
    sget-object v1, Lcom/facebook/u;->a:Ljava/lang/String;

    const-string v2, "You haven\'t set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_8
    invoke-static {}, Lcom/facebook/u;->d()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1251
    sget-object v1, Lcom/facebook/u;->a:Ljava/lang/String;

    const-string v2, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you\'re sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 1257
    :try_start_8
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    :catch_1
    :cond_9
    :goto_2
    invoke-static {}, Lcom/facebook/u;->k()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-void

    :catchall_3
    move-exception v1

    .line 114
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static j()V
    .locals 8

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 136
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    invoke-static {v1}, Lcom/facebook/u;->c(Lcom/facebook/u$a;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 138
    sget-object v3, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    iget-object v3, v3, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    iget-wide v3, v3, Lcom/facebook/u$a;->d:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    return-void

    .line 141
    :cond_1
    sget-object v3, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    .line 142
    sget-object v3, Lcom/facebook/u;->g:Lcom/facebook/u$a;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/facebook/u$a;->d:J

    .line 145
    sget-object v3, Lcom/facebook/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 149
    :cond_2
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/facebook/u$1;

    invoke-direct {v4, v1, v2}, Lcom/facebook/u$1;-><init>(J)V

    .line 150
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 190
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static k()V
    .locals 16

    const-string v0, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    const-class v1, Lcom/facebook/u;

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 260
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/u;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 264
    :cond_1
    invoke-static {}, Lcom/facebook/g;->a()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 268
    :cond_2
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v2

    .line 272
    sget-object v3, Lcom/facebook/u;->d:Lcom/facebook/u$a;

    invoke-virtual {v3}, Lcom/facebook/u$a;->a()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    shl-int/2addr v3, v5

    or-int/2addr v3, v5

    .line 273
    sget-object v6, Lcom/facebook/u;->e:Lcom/facebook/u$a;

    invoke-virtual {v6}, Lcom/facebook/u$a;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    shl-int/2addr v6, v4

    or-int/2addr v3, v6

    .line 274
    sget-object v6, Lcom/facebook/u;->f:Lcom/facebook/u$a;

    invoke-virtual {v6}, Lcom/facebook/u$a;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x2

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    .line 275
    sget-object v6, Lcom/facebook/u;->h:Lcom/facebook/u$a;

    invoke-virtual {v6}, Lcom/facebook/u$a;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    const/4 v8, 0x3

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    .line 277
    sget-object v6, Lcom/facebook/u;->i:Landroid/content/SharedPreferences;

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_a

    .line 279
    sget-object v9, Lcom/facebook/u;->i:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 285
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 286
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_9

    const-string v9, "com.facebook.sdk.AutoInitEnabled"

    const-string v10, "com.facebook.sdk.AutoLogAppEventsEnabled"

    const-string v11, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    const-string v12, "com.facebook.sdk.MonitorEnabled"

    .line 287
    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Z

    aput-boolean v4, v11, v5

    aput-boolean v4, v11, v4

    aput-boolean v4, v11, v7

    aput-boolean v4, v11, v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v7, v10, :cond_8

    .line 295
    :try_start_2
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v14, v9, v7

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    shl-int/2addr v13, v7

    or-int/2addr v12, v13

    .line 296
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v14, v9, v7

    aget-boolean v15, v11, v7

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    shl-int/2addr v13, v7

    or-int/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    :cond_8
    move v5, v12

    goto :goto_6

    :catch_1
    :cond_9
    const/4 v8, 0x0

    .line 304
    :goto_6
    :try_start_3
    new-instance v0, Lcom/facebook/appevents/m;

    invoke-direct {v0, v2}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "usage"

    .line 306
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "initial"

    .line 307
    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "previous"

    .line 308
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "current"

    .line 309
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    invoke-virtual {v0, v2}, Lcom/facebook/appevents/m;->a(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 312
    invoke-static {v0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static l()V
    .locals 3

    const-class v0, Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 338
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/u;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 339
    :cond_1
    new-instance v1, Lcom/facebook/FacebookSdkNotInitializedException;

    const-string v2, "The UserSettingManager has not been initialized successfully"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 342
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
