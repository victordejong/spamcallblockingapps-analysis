.class public final Lcom/google/android/gms/internal/ads/bny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/alh;

.field private final b:Lcom/google/android/gms/internal/ads/bnd;

.field private final c:Lcom/google/android/gms/internal/ads/crs;

.field private final d:Lcom/google/android/gms/internal/ads/apt;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/bnd;Lcom/google/android/gms/internal/ads/apt;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/crs;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bny;->a:Lcom/google/android/gms/internal/ads/alh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bny;->b:Lcom/google/android/gms/internal/ads/bnd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bny;->d:Lcom/google/android/gms/internal/ads/apt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bny;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bny;->c:Lcom/google/android/gms/internal/ads/crs;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bny;)Lcom/google/android/gms/internal/ads/apt;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bny;->d:Lcom/google/android/gms/internal/ads/apt;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chh;->a()Lcom/google/android/gms/internal/ads/dp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bny;->b:Lcom/google/android/gms/internal/ads/bnd;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bnd;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    :goto_0
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bny;->c:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bob;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bob;-><init>(Lcom/google/android/gms/internal/ads/bny;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/akk;
    .locals 5

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bny;->a:Lcom/google/android/gms/internal/ads/alh;

    new-instance v1, Lcom/google/android/gms/internal/ads/amy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/alw;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/chh;->a()Lcom/google/android/gms/internal/ads/dp;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/boa;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/boa;-><init>(Lcom/google/android/gms/internal/ads/bny;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/alw;-><init>(Lcom/google/android/gms/internal/ads/dp;Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/alh;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/alw;)Lcom/google/android/gms/internal/ads/alt;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/alt;->a()Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 5

    .prologue
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bny;->b:Lcom/google/android/gms/internal/ads/bnd;

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bnd;->b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/cgr;->I:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bny;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/bod;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bod;-><init>(Lcom/google/android/gms/internal/ads/bny;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bny;->c:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 22
    return-void
.end method
