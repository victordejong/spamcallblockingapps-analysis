.class public final Lcom/google/android/gms/internal/ads/bqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<",
        "Lcom/google/android/gms/internal/ads/chd;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ckz;

.field private final b:Lcom/google/android/gms/internal/ads/apt;

.field private final c:Lcom/google/android/gms/internal/ads/clj;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/google/android/gms/internal/ads/amm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/amm",
            "<TAdT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/bpv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/bpv;Lcom/google/android/gms/internal/ads/apt;Lcom/google/android/gms/internal/ads/clj;Lcom/google/android/gms/internal/ads/amm;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/bpv;",
            "Lcom/google/android/gms/internal/ads/apt;",
            "Lcom/google/android/gms/internal/ads/clj;",
            "Lcom/google/android/gms/internal/ads/amm",
            "<TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqb;->a:Lcom/google/android/gms/internal/ads/ckz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqb;->g:Lcom/google/android/gms/internal/ads/bpv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqb;->b:Lcom/google/android/gms/internal/ads/apt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqb;->c:Lcom/google/android/gms/internal/ads/clj;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bqb;->f:Lcom/google/android/gms/internal/ads/amm;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bqb;->d:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bqb;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmv;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;
    .locals 7

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqb;->g:Lcom/google/android/gms/internal/ads/bpv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    .line 34
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/bmv;->b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    iget v3, p2, Lcom/google/android/gms/internal/ads/cgr;->I:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bqb;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    invoke-static {v2, v4, v5, v3, v6}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/bpv;->a(Lcom/google/android/gms/internal/ads/cgs;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/chd;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqb;->a:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckw;->k:Lcom/google/android/gms/internal/ads/ckw;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v2, "No ad configs"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckp;->a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqb;->b:Lcom/google/android/gms/internal/ads/apt;

    new-instance v2, Lcom/google/android/gms/internal/ads/air;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqb;->c:Lcom/google/android/gms/internal/ads/clj;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/air;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/clj;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqb;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cha;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move-object v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgr;

    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgr;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bqb;->f:Lcom/google/android/gms/internal/ads/amm;

    iget v7, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    .line 21
    invoke-interface {v6, v7, v1}, Lcom/google/android/gms/internal/ads/amm;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bmv;

    move-result-object v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    invoke-interface {v6, p1, v0}, Lcom/google/android/gms/internal/ads/bmv;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bqb;->a:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v7, Lcom/google/android/gms/internal/ads/ckw;->l:Lcom/google/android/gms/internal/ads/ckw;

    .line 25
    invoke-virtual {v5, v7, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "render-config-"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v1

    const-class v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/bqa;

    invoke-direct {v5, p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/bqa;-><init>(Lcom/google/android/gms/internal/ads/bqb;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmv;)V

    .line 27
    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v1

    .line 29
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-object v3

    :cond_2
    move-object v1, v3

    goto :goto_1
.end method
