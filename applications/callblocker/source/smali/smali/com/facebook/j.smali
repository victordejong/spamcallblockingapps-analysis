.class public final Lcom/facebook/j;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/q;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/Boolean;

.field private static volatile h:Ljava/lang/String;

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/internal/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/q",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/lang/Object;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/Boolean;

.field private static r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    const-class v0, Lcom/facebook/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->a:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/q;

    sget-object v2, Lcom/facebook/q;->f:Lcom/facebook/q;

    aput-object v2, v1, v4

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/j;->b:Ljava/util/HashSet;

    .line 83
    const-string/jumbo v0, "facebook.com"

    sput-object v0, Lcom/facebook/j;->h:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/j;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    sput-boolean v4, Lcom/facebook/j;->j:Z

    .line 86
    sput-boolean v4, Lcom/facebook/j;->k:Z

    .line 89
    const v0, 0xface

    sput v0, Lcom/facebook/j;->n:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/j;->o:Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/facebook/internal/v;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->p:Ljava/lang/String;

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->q:Ljava/lang/Boolean;

    .line 160
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const-class v0, Lcom/facebook/j;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/j;->a(Landroid/content/Context;Lcom/facebook/j$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v0

    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/facebook/j$a;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    const-class v1, Lcom/facebook/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/j;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-interface {p1}, Lcom/facebook/j$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 276
    :cond_1
    :try_start_1
    const-string/jumbo v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->b(Landroid/content/Context;Z)V

    .line 281
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Z)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    .line 286
    invoke-static {p0}, Lcom/facebook/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/j;->c(Landroid/content/Context;)V

    .line 292
    sget-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 300
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->q:Ljava/lang/Boolean;

    .line 303
    invoke-static {}, Lcom/facebook/j;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    invoke-static {}, Lcom/facebook/j;->c()V

    .line 308
    :cond_3
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 309
    invoke-static {}, Lcom/facebook/y;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget-object v2, Lcom/facebook/j;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/a/d/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 317
    :cond_4
    invoke-static {}, Lcom/facebook/internal/m;->a()V

    .line 320
    invoke-static {}, Lcom/facebook/internal/s;->b()V

    .line 322
    invoke-static {}, Lcom/facebook/y;->b()V

    .line 324
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/b;->a(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 326
    new-instance v0, Lcom/facebook/internal/q;

    new-instance v2, Lcom/facebook/j$1;

    invoke-direct {v2}, Lcom/facebook/j$1;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/q;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/j;->l:Lcom/facebook/internal/q;

    .line 334
    sget-object v0, Lcom/facebook/internal/j$b;->k:Lcom/facebook/internal/j$b;

    new-instance v2, Lcom/facebook/j$2;

    invoke-direct {v2}, Lcom/facebook/j$2;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 344
    sget-object v0, Lcom/facebook/internal/j$b;->c:Lcom/facebook/internal/j$b;

    new-instance v2, Lcom/facebook/j$3;

    invoke-direct {v2}, Lcom/facebook/j$3;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 354
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/j$4;

    invoke-direct {v2, p1, p0}, Lcom/facebook/j$4;-><init>(Lcom/facebook/j$a;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 382
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 645
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/j$5;

    invoke-direct {v2, v0, p1}, Lcom/facebook/j$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 651
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 390
    const-class v1, Lcom/facebook/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/j;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/q;)Z
    .locals 2

    .prologue
    .line 480
    sget-object v1, Lcom/facebook/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 481
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 657
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 658
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :catch_0
    move-exception v0

    .line 694
    const-string/jumbo v1, "Facebook-publish"

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/a;->b(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 661
    const-string/jumbo v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 663
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 667
    :try_start_2
    sget-object v3, Lcom/facebook/a/d/c$a;->a:Lcom/facebook/a/d/c$a;

    .line 670
    invoke-static {p0}, Lcom/facebook/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 671
    invoke-static {p0}, Lcom/facebook/j;->b(Landroid/content/Context;)Z

    move-result v7

    .line 667
    invoke-static {v3, v0, v6, v7, p0}, Lcom/facebook/a/d/c;->a(Lcom/facebook/a/d/c$a;Lcom/facebook/internal/a;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 677
    :try_start_3
    const-string/jumbo v3, "%s/activities"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 678
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v3, v0, v7}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v0

    .line 680
    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 686
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 688
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 673
    :catch_1
    move-exception v0

    .line 674
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "An error occurred while publishing install."

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 402
    const-class v1, Lcom/facebook/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/j;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 717
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->r:Ljava/lang/Boolean;

    .line 410
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0xface

    .line 758
    if-nez p0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 764
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 775
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 777
    check-cast v0, Ljava/lang/String;

    .line 778
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 779
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    .line 790
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/j;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 791
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->e:Ljava/lang/String;

    .line 794
    :cond_3
    sget-object v0, Lcom/facebook/j;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 795
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->f:Ljava/lang/String;

    .line 798
    :cond_4
    sget v0, Lcom/facebook/j;->n:I

    if-ne v0, v4, :cond_5

    .line 799
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/j;->n:I

    .line 804
    :cond_5
    sget-object v0, Lcom/facebook/j;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 805
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.facebook.sdk.CodelessDebugLogEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/j;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 781
    :cond_6
    sput-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    goto :goto_1

    .line 783
    :cond_7
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 784
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 489
    sget-boolean v0, Lcom/facebook/j;->j:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 506
    sget-boolean v0, Lcom/facebook/j;->k:Z

    return v0
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 533
    sget-object v1, Lcom/facebook/j;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    sget-object v0, Lcom/facebook/j;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/j;->c:Ljava/util/concurrent/Executor;

    .line 537
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    sget-object v0, Lcom/facebook/j;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 537
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v1

    .line 565
    const/4 v0, 0x0

    .line 568
    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v1}, Lcom/facebook/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_0
    if-nez v0, :cond_1

    .line 573
    sget-object v0, Lcom/facebook/j;->h:Ljava/lang/String;

    .line 580
    :goto_0
    return-object v0

    .line 574
    :cond_1
    const-string/jumbo v1, "gaming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    sget-object v0, Lcom/facebook/j;->h:Ljava/lang/String;

    const-string/jumbo v1, "facebook.com"

    const-string/jumbo v2, "fb.gg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_2
    sget-object v0, Lcom/facebook/j;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 604
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 632
    sget-object v0, Lcom/facebook/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "getGraphApiVersion: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/j;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/facebook/j;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    const-string/jumbo v0, "5.15.3"

    return-object v0
.end method

.method public static k()J
    .locals 2

    .prologue
    .line 742
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 743
    sget-object v0, Lcom/facebook/j;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 858
    sget-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 878
    sget-object v0, Lcom/facebook/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 896
    sget-object v0, Lcom/facebook/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 911
    invoke-static {}, Lcom/facebook/y;->c()Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 932
    invoke-static {}, Lcom/facebook/y;->d()Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lcom/facebook/y;->f()Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 1

    .prologue
    .line 980
    invoke-static {}, Lcom/facebook/y;->e()Z

    move-result v0

    return v0
.end method

.method public static s()I
    .locals 1

    .prologue
    .line 1017
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 1018
    sget v0, Lcom/facebook/j;->n:I

    return v0
.end method

.method static synthetic t()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/facebook/j;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/facebook/j;->d:Ljava/lang/String;

    return-object v0
.end method
