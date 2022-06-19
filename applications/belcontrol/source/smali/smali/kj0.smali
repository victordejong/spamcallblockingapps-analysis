.class public final Lkj0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkj0$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "kj0"

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static d:Lkj0$b;

.field public static e:Lkj0$b;

.field public static f:Lkj0$b;

.field public static g:Lkj0$b;

.field public static h:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lkj0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lkj0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lkj0$b;

    const/4 v2, 0x1

    const-string v3, "com.facebook.sdk.AutoInitEnabled"

    invoke-direct {v0, v2, v3}, Lkj0$b;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkj0;->d:Lkj0$b;

    new-instance v0, Lkj0$b;

    const-string v3, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-direct {v0, v2, v3}, Lkj0$b;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkj0;->e:Lkj0$b;

    new-instance v0, Lkj0$b;

    const-string v3, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-direct {v0, v2, v3}, Lkj0$b;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkj0;->f:Lkj0$b;

    new-instance v0, Lkj0$b;

    const-string v2, "auto_event_setup_enabled"

    invoke-direct {v0, v1, v2}, Lkj0$b;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkj0;->g:Lkj0$b;

    return-void
.end method

.method public static synthetic a()Lkj0$b;
    .locals 1

    sget-object v0, Lkj0;->f:Lkj0$b;

    return-object v0
.end method

.method public static synthetic b()Lkj0$b;
    .locals 1

    sget-object v0, Lkj0;->g:Lkj0$b;

    return-object v0
.end method

.method public static synthetic c(Lkj0$b;)V
    .locals 0

    invoke-static {p0}, Lkj0;->s(Lkj0$b;)V

    return-void
.end method

.method public static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lkj0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lkj0;->j()V

    sget-object v0, Lkj0;->f:Lkj0$b;

    invoke-virtual {v0}, Lkj0$b;->a()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lkj0;->j()V

    sget-object v0, Lkj0;->d:Lkj0$b;

    invoke-virtual {v0}, Lkj0$b;->a()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lkj0;->j()V

    sget-object v0, Lkj0;->e:Lkj0$b;

    invoke-virtual {v0}, Lkj0$b;->a()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lkj0;->j()V

    sget-object v0, Lkj0;->g:Lkj0$b;

    invoke-virtual {v0}, Lkj0$b;->a()Z

    move-result v0

    return v0
.end method

.method public static i()V
    .locals 8

    sget-object v0, Lkj0;->g:Lkj0$b;

    invoke-static {v0}, Lkj0;->p(Lkj0$b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lkj0;->g:Lkj0$b;

    iget-object v3, v2, Lkj0$b;->b:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-wide v3, v2, Lkj0$b;->d:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Lkj0$b;->b:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lkj0$b;->d:J

    sget-object v2, Lkj0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lkj0$a;

    invoke-direct {v3, v0, v1}, Lkj0$a;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j()V
    .locals 4

    invoke-static {}, Lui0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lkj0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.facebook.sdk.USER_SETTINGS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lkj0;->h:Landroid/content/SharedPreferences;

    const/4 v0, 0x3

    new-array v0, v0, [Lkj0$b;

    sget-object v3, Lkj0;->e:Lkj0$b;

    aput-object v3, v0, v1

    sget-object v1, Lkj0;->f:Lkj0$b;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lkj0;->d:Lkj0$b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkj0;->k([Lkj0$b;)V

    invoke-static {}, Lkj0;->i()V

    invoke-static {}, Lkj0;->o()V

    invoke-static {}, Lkj0;->n()V

    return-void
.end method

.method public static varargs k([Lkj0$b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    sget-object v2, Lkj0;->g:Lkj0$b;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lkj0;->i()V

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lkj0$b;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkj0;->p(Lkj0$b;)V

    iget-object v2, v1, Lkj0$b;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkj0;->l(Lkj0$b;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkj0;->s(Lkj0$b;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static l(Lkj0$b;)V
    .locals 3

    invoke-static {}, Lkj0;->r()V

    :try_start_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lkj0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Lkj0$b;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lkj0$b;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkj0$b;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lkj0;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static m()V
    .locals 5

    const-string v0, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    :try_start_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "com.facebook.sdk.AutoAppLinkEnabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lxj0;

    invoke-direct {v2, v1}, Lxj0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lfn0;->K()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SchemeWarning"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkj0;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "fb_auto_applink"

    invoke-virtual {v2, v0, v1}, Lxj0;->f(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static n()V
    .locals 15

    sget-object v0, Lkj0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lui0;->x()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lkj0;->d:Lkj0$b;

    invoke-virtual {v1}, Lkj0$b;->a()Z

    move-result v1

    const/4 v2, 0x0

    shl-int/2addr v1, v2

    or-int/2addr v1, v2

    sget-object v3, Lkj0;->e:Lkj0$b;

    invoke-virtual {v3}, Lkj0$b;->a()Z

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    sget-object v3, Lkj0;->f:Lkj0$b;

    invoke-virtual {v3}, Lkj0$b;->a()Z

    move-result v3

    const/4 v5, 0x2

    shl-int/2addr v3, v5

    or-int/2addr v1, v3

    sget-object v3, Lkj0;->h:Landroid/content/SharedPreferences;

    const-string v6, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_5

    sget-object v7, Lkj0;->h:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    const-string v7, "com.facebook.sdk.AutoInitEnabled"

    const-string v8, "com.facebook.sdk.AutoLogAppEventsEnabled"

    const-string v9, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Z

    aput-boolean v4, v9, v2

    aput-boolean v4, v9, v4

    aput-boolean v4, v9, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v5, v8, :cond_3

    :try_start_1
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v13, v7, v5

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    shl-int/2addr v12, v5

    or-int/2addr v11, v12

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v13, v7, v5

    aget-boolean v14, v9, v5

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    shl-int/2addr v12, v5

    or-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    move v2, v10

    goto :goto_2

    :catch_1
    :cond_4
    const/4 v11, 0x0

    :goto_2
    new-instance v4, Lxj0;

    invoke-direct {v4, v0}, Lxj0;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "usage"

    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "initial"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "previous"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fb_sdk_settings_changed"

    invoke-virtual {v4, v1, v0}, Lxj0;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method public static o()V
    .locals 3

    :try_start_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lkj0;->a:Ljava/lang/String;

    const-string v2, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkj0;->a:Ljava/lang/String;

    const-string v1, "You haven\'t set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lkj0;->e()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lkj0;->a:Ljava/lang/String;

    const-string v1, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you\'re sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static p(Lkj0$b;)V
    .locals 3

    invoke-static {}, Lkj0;->r()V

    :try_start_0
    sget-object v0, Lkj0;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lkj0$b;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "value"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkj0$b;->b:Ljava/lang/Boolean;

    const-string v0, "last_timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lkj0$b;->d:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lkj0;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static q(Z)V
    .locals 2

    sget-object v0, Lkj0;->e:Lkj0$b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lkj0$b;->b:Ljava/lang/Boolean;

    sget-object p0, Lkj0;->e:Lkj0$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkj0$b;->d:J

    sget-object p0, Lkj0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkj0;->e:Lkj0$b;

    invoke-static {p0}, Lkj0;->s(Lkj0$b;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkj0;->j()V

    :goto_0
    return-void
.end method

.method public static r()V
    .locals 2

    sget-object v0, Lkj0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lvi0;

    const-string v1, "The UserSettingManager has not been initialized successfully"

    invoke-direct {v0, v1}, Lvi0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Lkj0$b;)V
    .locals 4

    invoke-static {}, Lkj0;->r()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    iget-object v2, p0, Lkj0$b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_timestamp"

    iget-wide v2, p0, Lkj0$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lkj0;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object p0, p0, Lkj0$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lkj0;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lkj0;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
