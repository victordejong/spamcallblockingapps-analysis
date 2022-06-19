.class public final Lui0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui0$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ui0"

.field public static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ldj0;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/concurrent/Executor;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:Ljava/lang/Boolean;

.field public static volatile h:Ljava/lang/String;

.field public static i:Ljava/util/concurrent/atomic/AtomicLong;

.field public static volatile j:Z

.field public static k:Z

.field public static l:Lwm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwm0<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Landroid/content/Context;

.field public static n:I

.field public static final o:Ljava/lang/Object;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/Boolean;

.field public static r:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ldj0;

    sget-object v2, Ldj0;->g:Ldj0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lui0;->b:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    sput-object v0, Lui0;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lui0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    sput-boolean v3, Lui0;->j:Z

    sput-boolean v3, Lui0;->k:Z

    const v0, 0xface

    sput v0, Lui0;->n:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lui0;->o:Ljava/lang/Object;

    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lui0;->p:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lui0;->q:Ljava/lang/Boolean;

    sput-object v0, Lui0;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lui0;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    sput-object v0, Lui0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lri0;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    sget-object v0, Lui0;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lui0;->e:Ljava/lang/String;

    :cond_6
    sget-object v0, Lui0;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lui0;->f:Ljava/lang/String;

    :cond_7
    sget v0, Lui0;->n:I

    const v1, 0xface

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lui0;->n:I

    :cond_8
    sget-object v0, Lui0;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.CodelessDebugLogEnabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lui0;->g:Ljava/lang/Boolean;

    :catch_0
    :cond_9
    :goto_1
    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lzl0;->h(Landroid/content/Context;)Lzl0;

    move-result-object v0

    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v8, Luk0$b;->a:Luk0$b;

    invoke-static {p0}, Lrj0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Lui0;->r(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v8, v0, v9, v10, p0}, Luk0;->a(Luk0$b;Lzl0;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "%s/activities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, v0}, Lcom/facebook/GraphRequest;->K(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object p0

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->g()Laj0;

    move-result-object p0

    invoke-virtual {p0}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lri0;

    const-string v0, "An error occurred while publishing install."

    invoke-direct {p1, v0, p0}, Lri0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "Facebook-publish"

    invoke-static {p1, p0}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lui0$e;

    invoke-direct {v1, p0, p1}, Lui0$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized D(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lui0;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lui0;->E(Landroid/content/Context;Lui0$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized E(Landroid/content/Context;Lui0$f;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lui0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lui0;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lui0$f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lgn0;->g(Landroid/content/Context;Z)V

    invoke-static {p0, v1}, Lgn0;->i(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lui0;->m:Landroid/content/Context;

    invoke-static {p0}, Lrj0;->c(Landroid/content/Context;)Ljava/lang/String;

    sget-object v1, Lui0;->m:Landroid/content/Context;

    invoke-static {v1}, Lui0;->A(Landroid/content/Context;)V

    sget-object v1, Lui0;->d:Ljava/lang/String;

    invoke-static {v1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lui0;->q:Ljava/lang/Boolean;

    invoke-static {}, Lui0;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lui0;->c()V

    :cond_2
    sget-object v1, Lui0;->m:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_3

    invoke-static {}, Lkj0;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lui0;->m:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lui0;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lsk0;->x(Landroid/app/Application;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lnm0;->k()V

    invoke-static {}, Lzm0;->E()V

    invoke-static {}, Lkj0;->m()V

    sget-object v1, Lui0;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->b(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    new-instance v1, Lwm0;

    new-instance v2, Lui0$a;

    invoke-direct {v2}, Lui0$a;-><init>()V

    invoke-direct {v1, v2}, Lwm0;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lui0;->l:Lwm0;

    sget-object v1, Lkm0$d;->n:Lkm0$d;

    new-instance v2, Lui0$b;

    invoke-direct {v2}, Lui0$b;-><init>()V

    invoke-static {v1, v2}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sget-object v1, Lkm0$d;->d:Lkm0$d;

    new-instance v2, Lui0$c;

    invoke-direct {v2}, Lui0$c;-><init>()V

    invoke-static {v1, v2}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lui0$d;

    invoke-direct {v2, p1, p0}, Lui0$d;-><init>(Lui0$f;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :try_start_2
    new-instance p0, Lri0;

    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static F(Z)V
    .locals 1

    invoke-static {p0}, Lkj0;->q(Z)V

    if-eqz p0, :cond_0

    sget-object p0, Lui0;->m:Landroid/content/Context;

    check-cast p0, Landroid/app/Application;

    sget-object v0, Lui0;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lsk0;->x(Landroid/app/Application;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lui0;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lui0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lui0;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lkj0;->e()Z

    move-result v0

    return v0
.end method

.method public static e()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lgn0;->n()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static i()Z
    .locals 1

    invoke-static {}, Lkj0;->f()Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lkj0;->g()Z

    move-result v0

    return v0
.end method

.method public static k()Ljava/io/File;
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->l:Lwm0;

    invoke-virtual {v0}, Lwm0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static l()I
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget v0, Lui0;->n:I

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Z
    .locals 1

    invoke-static {}, Lkj0;->h()Z

    move-result v0

    return v0
.end method

.method public static o()Ljava/util/concurrent/Executor;
    .locals 2

    sget-object v0, Lui0;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lui0;->c:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lui0;->c:Ljava/util/concurrent/Executor;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lui0;->c:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static p()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lui0;->h:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "gaming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lui0;->h:Ljava/lang/String;

    const-string v1, "facebook.com"

    const-string v2, "fb.gg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 4

    sget-object v0, Lui0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lui0;->p:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getGraphApiVersion: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfn0;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lui0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lgn0;->n()V

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "limitEventUsage"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static s()J
    .locals 2

    invoke-static {}, Lgn0;->n()V

    sget-object v0, Lui0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    const-string v0, "5.15.3"

    return-object v0
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Lui0;->j:Z

    return v0
.end method

.method public static v(I)Z
    .locals 1

    sget v0, Lui0;->n:I

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized w()Z
    .locals 2

    const-class v0, Lui0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lui0;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized x()Z
    .locals 2

    const-class v0, Lui0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lui0;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static y()Z
    .locals 1

    sget-boolean v0, Lui0;->k:Z

    return v0
.end method

.method public static z(Ldj0;)Z
    .locals 2

    sget-object v0, Lui0;->b:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lui0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
