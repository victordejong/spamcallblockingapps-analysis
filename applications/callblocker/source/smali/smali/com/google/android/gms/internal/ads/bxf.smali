.class public final Lcom/google/android/gms/internal/ads/bxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bxc;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/chh;

.field private b:Lcom/google/android/gms/internal/ads/kb;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Lcom/google/android/gms/internal/ads/uw;

.field private e:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kb;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/uw;Landroid/content/pm/ApplicationInfo;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxf;->b:Lcom/google/android/gms/internal/ads/kb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxf;->d:Lcom/google/android/gms/internal/ads/uw;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxf;->e:Landroid/content/pm/ApplicationInfo;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bxf;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bxc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 8
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/af;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 21
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/bxh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bxh;-><init>(Lcom/google/android/gms/internal/ads/bxf;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/bxe;->a:Lcom/google/android/gms/internal/ads/coe;

    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxf;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxf;->b:Lcom/google/android/gms/internal/ads/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bxf;->e:Landroid/content/pm/ApplicationInfo;

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/kb;->a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bD:Lcom/google/android/gms/internal/ads/ect;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bxf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/bxg;->a:Lcom/google/android/gms/internal/ads/cqt;

    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method
