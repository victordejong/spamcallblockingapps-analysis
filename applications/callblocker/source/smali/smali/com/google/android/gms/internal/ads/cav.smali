.class public final Lcom/google/android/gms/internal/ads/cav;
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
        "Lcom/google/android/gms/internal/ads/cas;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ub;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ub;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cav;->a:Lcom/google/android/gms/internal/ads/ub;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cav;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cav;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cav;->d:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/cas;
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cav;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/cas;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cas;-><init>(Lcom/google/android/gms/ads/c/a$a;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cas;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aq:Lcom/google/android/gms/internal/ads/ect;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cav;->a:Lcom/google/android/gms/internal/ads/ub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cav;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ub;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cau;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cav;->d:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ar:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cav;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crb;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/cay;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cay;-><init>(Lcom/google/android/gms/internal/ads/cav;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cav;->d:Ljava/util/concurrent/Executor;

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method
