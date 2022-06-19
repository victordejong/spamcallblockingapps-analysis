.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbu;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbu;-><init>()V

    return-void
.end method

.method private static zzb(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0}, Landroidx/work/a$a;-><init>()V

    .line 2
    new-instance v1, Landroidx/work/a;

    invoke-direct {v1, v0}, Landroidx/work/a;-><init>(Landroidx/work/a$a;)V

    .line 3
    invoke-static {p0, v1}, Lp1/j;->d(Landroid/content/Context;Landroidx/work/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Lp1/j;->c(Landroid/content/Context;)Lp1/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ly1/b;

    const-string v1, "offline_ping_sender_work"

    invoke-direct {v0, p1, v1}, Ly1/b;-><init>(Lp1/j;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Lp1/j;->d:La2/a;

    check-cast v2, La2/b;

    .line 7
    iget-object v2, v2, La2/b;->a:Ly1/j;

    invoke-virtual {v2, v0}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Lo1/b$a;

    invoke-direct {v0}, Lo1/b$a;-><init>()V

    sget-object v2, Lo1/i;->b:Lo1/i;

    .line 9
    iput-object v2, v0, Lo1/b$a;->a:Lo1/i;

    .line 10
    new-instance v2, Lo1/b;

    invoke-direct {v2, v0}, Lo1/b;-><init>(Lo1/b$a;)V

    .line 11
    new-instance v0, Lo1/j$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v0, v3}, Lo1/j$a;-><init>(Ljava/lang/Class;)V

    .line 12
    iget-object v3, v0, Lo1/o$a;->b:Lx1/p;

    iput-object v2, v3, Lx1/p;->j:Lo1/b;

    .line 13
    iget-object v2, v0, Lo1/o$a;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Lo1/o$a;->a()Lo1/o;

    move-result-object v0

    check-cast v0, Lo1/j;

    .line 15
    invoke-virtual {p1, v0}, Lo1/n;->b(Lo1/o;)Lo1/k;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lo1/b$a;

    invoke-direct {v0}, Lo1/b$a;-><init>()V

    sget-object v1, Lo1/i;->b:Lo1/i;

    .line 4
    iput-object v1, v0, Lo1/b$a;->a:Lo1/i;

    .line 5
    new-instance v1, Lo1/b;

    invoke-direct {v1, v0}, Lo1/b;-><init>(Lo1/b$a;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uri"

    .line 7
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gws_query_id"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Landroidx/work/b;

    invoke-direct {p2, v0}, Landroidx/work/b;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-static {p2}, Landroidx/work/b;->c(Landroidx/work/b;)[B

    .line 10
    new-instance p3, Lo1/j$a;

    const-class v0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v0}, Lo1/j$a;-><init>(Ljava/lang/Class;)V

    .line 11
    iget-object v0, p3, Lo1/o$a;->b:Lx1/p;

    iput-object v1, v0, Lx1/p;->j:Lo1/b;

    .line 12
    iput-object p2, v0, Lx1/p;->e:Landroidx/work/b;

    .line 13
    iget-object p2, p3, Lo1/o$a;->c:Ljava/util/Set;

    const-string v0, "offline_notification_work"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p3}, Lo1/o$a;->a()Lo1/o;

    move-result-object p2

    check-cast p2, Lo1/j;

    .line 15
    :try_start_0
    invoke-static {p1}, Lp1/j;->c(Landroid/content/Context;)Lp1/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p1, p2}, Lo1/n;->b(Lo1/o;)Lo1/k;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
