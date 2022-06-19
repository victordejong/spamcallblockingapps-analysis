.class public final Lcom/google/android/gms/internal/ads/yt1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/et1;

.field private final d:Lcom/google/android/gms/internal/ads/gt1;

.field private final e:Lcom/google/android/gms/internal/ads/xt1;

.field private final f:Lcom/google/android/gms/internal/ads/xt1;

.field private g:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/d61;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/d61;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/et1;Lcom/google/android/gms/internal/ads/gt1;Lcom/google/android/gms/internal/ads/vt1;Lcom/google/android/gms/internal/ads/wt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yt1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yt1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yt1;->c:Lcom/google/android/gms/internal/ads/et1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yt1;->d:Lcom/google/android/gms/internal/ads/gt1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/yt1;->e:Lcom/google/android/gms/internal/ads/xt1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/yt1;->f:Lcom/google/android/gms/internal/ads/xt1;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/et1;Lcom/google/android/gms/internal/ads/gt1;)Lcom/google/android/gms/internal/ads/yt1;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/yt1;

    new-instance v5, Lcom/google/android/gms/internal/ads/vt1;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vt1;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/wt1;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/wt1;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yt1;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/et1;Lcom/google/android/gms/internal/ads/gt1;Lcom/google/android/gms/internal/ads/vt1;Lcom/google/android/gms/internal/ads/wt1;)V

    iget-object p0, v7, Lcom/google/android/gms/internal/ads/yt1;->d:Lcom/google/android/gms/internal/ads/gt1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gt1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/st1;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/st1;-><init>(Lcom/google/android/gms/internal/ads/yt1;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/yt1;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/yt1;->e:Lcom/google/android/gms/internal/ads/xt1;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xt1;->zza()Lcom/google/android/gms/internal/ads/d61;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    :goto_0
    iput-object p0, v7, Lcom/google/android/gms/internal/ads/yt1;->g:Lcom/google/android/gms/tasks/g;

    new-instance p0, Lcom/google/android/gms/internal/ads/tt1;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/tt1;-><init>(Lcom/google/android/gms/internal/ads/yt1;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/yt1;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/yt1;->h:Lcom/google/android/gms/tasks/g;

    return-object v7
.end method

.method private final g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/d61;",
            ">;)",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/d61;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/ut1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ut1;-><init>(Lcom/google/android/gms/internal/ads/yt1;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/g;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method private static h(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/internal/ads/d61;)Lcom/google/android/gms/internal/ads/d61;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/d61;",
            ">;",
            "Lcom/google/android/gms/internal/ads/d61;",
            ")",
            "Lcom/google/android/gms/internal/ads/d61;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->k()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/d61;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/d61;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->g:Lcom/google/android/gms/tasks/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yt1;->e:Lcom/google/android/gms/internal/ads/xt1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/xt1;->zza()Lcom/google/android/gms/internal/ads/d61;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yt1;->h(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/internal/ads/d61;)Lcom/google/android/gms/internal/ads/d61;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/d61;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->h:Lcom/google/android/gms/tasks/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yt1;->f:Lcom/google/android/gms/internal/ads/xt1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/xt1;->zza()Lcom/google/android/gms/internal/ads/d61;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yt1;->h(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/internal/ads/d61;)Lcom/google/android/gms/internal/ads/d61;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->c:Lcom/google/android/gms/internal/ads/et1;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/et1;->d(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method final synthetic e()Lcom/google/android/gms/internal/ads/d61;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/nt1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/d61;

    move-result-object v0

    return-object v0
.end method

.method final synthetic f()Lcom/google/android/gms/internal/ads/d61;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yt1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/d61;->A0()Lcom/google/android/gms/internal/ads/ar0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/u/a;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/u/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/u/a;->f()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/u/a;->c()Lcom/google/android/gms/ads/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/u/a$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ar0;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/u/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ar0;->X(Z)Lcom/google/android/gms/internal/ads/ar0;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzct;->g:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ar0;->W(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/ar0;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/d61;

    return-object v0
.end method
