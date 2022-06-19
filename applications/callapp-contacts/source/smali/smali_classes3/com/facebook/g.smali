.class public final Lcom/facebook/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/g$a;,
        Lcom/facebook/g$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field private static final c:Ljava/lang/String; = "com.facebook.g"

.field private static final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/m;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/Executor;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/Boolean;

.field private static volatile j:Ljava/lang/String;

.field private static k:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile l:Z

.field private static m:Z

.field private static n:Lcom/facebook/internal/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/w<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Landroid/content/Context;

.field private static p:I

.field private static final q:Ljava/lang/Object;

.field private static r:Ljava/lang/String;

.field private static final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static t:Ljava/lang/Boolean;

.field private static u:Lcom/facebook/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/m;

    sget-object v2, Lcom/facebook/m;->DEVELOPER_ERRORS:Lcom/facebook/m;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/g;->d:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    .line 85
    sput-object v0, Lcom/facebook/g;->j:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    sput-boolean v3, Lcom/facebook/g;->l:Z

    .line 88
    sput-boolean v3, Lcom/facebook/g;->m:Z

    const v0, 0xface

    .line 91
    sput v0, Lcom/facebook/g;->p:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/g;->q:Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/facebook/internal/ac;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->r:Ljava/lang/String;

    .line 94
    sput-boolean v3, Lcom/facebook/g;->a:Z

    .line 95
    sput-boolean v3, Lcom/facebook/g;->b:Z

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/g;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/g;->t:Ljava/lang/Boolean;

    .line 164
    new-instance v0, Lcom/facebook/g$1;

    invoke-direct {v0}, Lcom/facebook/g$1;-><init>()V

    sput-object v0, Lcom/facebook/g;->u:Lcom/facebook/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/g;

    monitor-enter v0

    .line 255
    :try_start_0
    invoke-static {p0}, Lcom/facebook/g;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/g;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 687
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 688
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/g$8;

    invoke-direct {v2, p0, p1}, Lcom/facebook/g$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 697
    sget-object p0, Lcom/facebook/internal/l$b;->OnDeviceEventProcessing:Lcom/facebook/internal/l$b;

    invoke-static {p0}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 698
    invoke-static {}, Lcom/facebook/appevents/h/a;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.facebook.sdk.attributionTracking"

    .line 699
    invoke-static {p1, p0}, Lcom/facebook/appevents/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 701
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/facebook/m;)V
    .locals 1

    .line 463
    sget-object v0, Lcom/facebook/g;->d:Ljava/util/HashSet;

    monitor-enter v0

    .line 464
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2535
    sget-object p0, Lcom/facebook/m;->GRAPH_API_DEBUG_INFO:Lcom/facebook/m;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/facebook/m;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/m;

    .line 2536
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2537
    sget-object p0, Lcom/facebook/m;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/m;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    const-string v0, "data_processing_options"

    const-class v1, Lcom/facebook/g;

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1062
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 5072
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5073
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 5074
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_country"

    const/4 v3, 0x0

    .line 5075
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_state"

    .line 5076
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5077
    sget-object p0, Lcom/facebook/g;->o:Landroid/content/Context;

    const-string v4, "com.facebook.sdk.DataProcessingOptions"

    .line 5078
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 5079
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5080
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5081
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5084
    :try_start_2
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :catch_0
    :cond_1
    return-void

    :catchall_1
    move-exception p0

    .line 1063
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 420
    sget-object v0, Lcom/facebook/g;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const-class v0, Lcom/facebook/g;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 710
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/b;->b(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object v1

    const-string v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    .line 712
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 714
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :try_start_1
    sget-object v9, Lcom/facebook/appevents/f/c$a;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/f/c$a;

    .line 722
    invoke-static {p0}, Lcom/facebook/appevents/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 723
    invoke-static {p0}, Lcom/facebook/g;->b(Landroid/content/Context;)Z

    move-result v11

    .line 719
    invoke-static {v9, v1, v10, v11, p0}, Lcom/facebook/appevents/f/c;->a(Lcom/facebook/appevents/f/c$a;Lcom/facebook/internal/b;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "%s/activities"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v3

    .line 729
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 730
    sget-object v1, Lcom/facebook/g;->u:Lcom/facebook/g$a;

    .line 731
    invoke-interface {v1, p1, p0}, Lcom/facebook/g$a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/GraphRequest;

    move-result-object p0

    cmp-long p1, v7, v5

    if-nez p1, :cond_1

    .line 3962
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object p0

    .line 4111
    iget-object p0, p0, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    if-nez p0, :cond_1

    .line 739
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 741
    invoke-interface {p0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 742
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 726
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v1, "An error occurred while publishing install."

    invoke-direct {p1, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 707
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_3
    const-string p1, "Facebook-publish"

    .line 747
    invoke-static {p1, p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 749
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v0, Lcom/facebook/g;

    monitor-enter v0

    .line 432
    :try_start_0
    sget-object v1, Lcom/facebook/g;->t:Ljava/lang/Boolean;

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

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 769
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    .line 771
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "limitEventUsage"

    .line 772
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/facebook/m;)Z
    .locals 2

    .line 505
    sget-object v0, Lcom/facebook/g;->d:Ljava/util/HashSet;

    monitor-enter v0

    .line 3512
    :try_start_0
    sget-boolean v1, Lcom/facebook/g;->l:Z

    if-eqz v1, :cond_0

    .line 506
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

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/g;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Lcom/facebook/g;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 280
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "applicationContext"

    .line 283
    invoke-static {p0, v1}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lcom/facebook/internal/af;->b(Landroid/content/Context;)V

    .line 288
    invoke-static {p0}, Lcom/facebook/internal/af;->a(Landroid/content/Context;)V

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/g;->o:Landroid/content/Context;

    .line 293
    invoke-static {p0}, Lcom/facebook/appevents/g;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/facebook/g;->o:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    .line 1818
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1819
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    .line 1824
    :try_start_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 1828
    :cond_1
    sget-object v2, Lcom/facebook/g;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1829
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1830
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1831
    check-cast v2, Ljava/lang/String;

    .line 1832
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1833
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 1835
    :cond_2
    sput-object v2, Lcom/facebook/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 1837
    :cond_3
    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_4

    goto :goto_0

    .line 1838
    :cond_4
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1844
    :cond_5
    :goto_0
    sget-object v2, Lcom/facebook/g;->g:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1845
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/g;->g:Ljava/lang/String;

    .line 1848
    :cond_6
    sget-object v2, Lcom/facebook/g;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1849
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ClientToken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/g;->h:Ljava/lang/String;

    .line 1852
    :cond_7
    sget v2, Lcom/facebook/g;->p:I

    const v3, 0xface

    if-ne v2, v3, :cond_8

    .line 1853
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.facebook.sdk.CallbackOffset"

    .line 1854
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/facebook/g;->p:I

    .line 1857
    :cond_8
    sget-object v2, Lcom/facebook/g;->i:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    .line 1858
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CodelessDebugLogEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/g;->i:Ljava/lang/Boolean;

    .line 299
    :catch_0
    :cond_9
    :goto_1
    sget-object v1, Lcom/facebook/g;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 308
    sget-object v1, Lcom/facebook/g;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1966
    invoke-static {}, Lcom/facebook/u;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2437
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/facebook/g;->t:Ljava/lang/Boolean;

    .line 316
    :cond_a
    sget-object v1, Lcom/facebook/g;->o:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_b

    .line 317
    invoke-static {}, Lcom/facebook/u;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 318
    sget-object v1, Lcom/facebook/g;->o:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/facebook/g;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/appevents/f/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 323
    :cond_b
    invoke-static {}, Lcom/facebook/internal/q;->a()V

    .line 326
    invoke-static {}, Lcom/facebook/internal/z;->b()V

    .line 328
    sget-object v1, Lcom/facebook/g;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->a(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 330
    new-instance v1, Lcom/facebook/internal/w;

    new-instance v2, Lcom/facebook/g$2;

    invoke-direct {v2}, Lcom/facebook/g$2;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/internal/w;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/g;->n:Lcom/facebook/internal/w;

    .line 339
    sget-object v1, Lcom/facebook/internal/l$b;->Instrument:Lcom/facebook/internal/l$b;

    new-instance v2, Lcom/facebook/g$3;

    invoke-direct {v2}, Lcom/facebook/g$3;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 350
    sget-object v1, Lcom/facebook/internal/l$b;->AppEvents:Lcom/facebook/internal/l$b;

    new-instance v2, Lcom/facebook/g$4;

    invoke-direct {v2}, Lcom/facebook/g$4;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 361
    sget-object v1, Lcom/facebook/internal/l$b;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/l$b;

    new-instance v2, Lcom/facebook/g$5;

    invoke-direct {v2}, Lcom/facebook/g$5;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 372
    sget-object v1, Lcom/facebook/internal/l$b;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/l$b;

    new-instance v2, Lcom/facebook/g$6;

    invoke-direct {v2}, Lcom/facebook/g$6;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 383
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/g$7;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/facebook/g$7;-><init>(Lcom/facebook/g$b;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 411
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    monitor-exit v0

    return-void

    .line 300
    :cond_c
    :try_start_4
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Z
    .locals 1

    .line 512
    sget-boolean v0, Lcom/facebook/g;->l:Z

    return v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    .line 521
    sput-boolean v0, Lcom/facebook/g;->l:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    .line 531
    sget-boolean v0, Lcom/facebook/g;->m:Z

    return v0
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 2

    .line 559
    sget-object v0, Lcom/facebook/g;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    sget-object v1, Lcom/facebook/g;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 561
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/g;->e:Ljava/util/concurrent/Executor;

    .line 563
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    sget-object v0, Lcom/facebook/g;->e:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 563
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 588
    sget-object v0, Lcom/facebook/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .line 601
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "gaming"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    sget-object v0, Lcom/facebook/g;->j:Ljava/lang/String;

    const-string v1, "facebook.com"

    const-string v2, "fb.gg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 614
    :cond_1
    sget-object v0, Lcom/facebook/g;->j:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public static i()Landroid/content/Context;
    .locals 1

    .line 644
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 645
    sget-object v0, Lcom/facebook/g;->o:Landroid/content/Context;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 673
    sget-object v1, Lcom/facebook/g;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "getGraphApiVersion: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 674
    sget-object v0, Lcom/facebook/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    const-string v0, "9.1.1"

    return-object v0
.end method

.method public static l()J
    .locals 2

    .line 794
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 795
    sget-object v0, Lcom/facebook/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 910
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 911
    sget-object v0, Lcom/facebook/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 931
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 932
    sget-object v0, Lcom/facebook/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .line 951
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 952
    sget-object v0, Lcom/facebook/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Z
    .locals 1

    .line 988
    invoke-static {}, Lcom/facebook/u;->c()Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 1

    .line 1015
    invoke-static {}, Lcom/facebook/u;->e()Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 1

    .line 1029
    invoke-static {}, Lcom/facebook/u;->d()Z

    move-result v0

    return v0
.end method

.method public static s()Ljava/io/File;
    .locals 2

    .line 1093
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 1094
    sget-object v0, Lcom/facebook/g;->n:Lcom/facebook/internal/w;

    .line 6056
    iget-object v1, v0, Lcom/facebook/internal/w;->b:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6058
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6034
    :catch_0
    :goto_0
    iget-object v0, v0, Lcom/facebook/internal/w;->a:Ljava/lang/Object;

    .line 1094
    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static t()I
    .locals 1

    .line 1113
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 1114
    sget v0, Lcom/facebook/g;->p:I

    return v0
.end method

.method static synthetic u()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/facebook/g;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/facebook/g;->f:Ljava/lang/String;

    return-object v0
.end method
