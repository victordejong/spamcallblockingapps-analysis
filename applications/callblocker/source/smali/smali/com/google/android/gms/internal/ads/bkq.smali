.class public final Lcom/google/android/gms/internal/ads/bkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Lcom/google/android/gms/internal/ads/bkh;

.field private final c:Lcom/google/android/gms/internal/ads/dhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bkz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/bkh;Lcom/google/android/gms/internal/ads/dhn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Lcom/google/android/gms/internal/ads/bkh;",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bkz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkq;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkq;->b:Lcom/google/android/gms/internal/ads/bkh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bkq;->c:Lcom/google/android/gms/internal/ads/dhn;

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/pw;",
            "Lcom/google/android/gms/internal/ads/bkx",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/bkx",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TRetT;>;"
        }
    .end annotation

    .prologue
    .line 6
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->d:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->e(Ljava/lang/String;)Z

    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkq;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 16
    invoke-virtual {v0, p4, v1}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzclc;

    new-instance v2, Lcom/google/android/gms/internal/ads/bks;

    invoke-direct {v2, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/bks;-><init>(Lcom/google/android/gms/internal/ads/bkq;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cqt;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bkq;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crb;

    .line 19
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/bkx;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/bkp;->a:Lcom/google/android/gms/internal/ads/cqt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bkq;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 14
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cqt;Lcom/google/android/gms/internal/ads/zzclc;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 31
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bkx;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkq;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, p3, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/pw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/bkr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/bkr;-><init>(Lcom/google/android/gms/internal/ads/pw;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkq;->b:Lcom/google/android/gms/internal/ads/bkh;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bku;->a(Lcom/google/android/gms/internal/ads/bkh;)Lcom/google/android/gms/internal/ads/bkx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bkt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bkt;-><init>(Lcom/google/android/gms/internal/ads/bkq;)V

    .line 23
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/bkq;->a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v1, "Pool key missing from removeUrl call."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bkw;->a:Lcom/google/android/gms/internal/ads/cqt;

    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/bkv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bkv;-><init>(Lcom/google/android/gms/internal/ads/bkq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/bky;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bky;-><init>(Lcom/google/android/gms/internal/ads/bkq;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/bkq;->a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/bkx;Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkq;->c:Lcom/google/android/gms/internal/ads/dhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bkz;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bkz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkq;->b:Lcom/google/android/gms/internal/ads/bkh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bkh;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkq;->c:Lcom/google/android/gms/internal/ads/dhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bkz;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/bkz;->b(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
