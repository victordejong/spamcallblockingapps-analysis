.class public final Lcom/google/android/gms/internal/ads/bkz;
.super Lcom/google/android/gms/internal/ads/pl;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/qo;

.field private final d:Lcom/google/android/gms/internal/ads/qk;

.field private final e:Lcom/google/android/gms/internal/ads/aig;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/blo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/aig;Lcom/google/android/gms/internal/ads/qk;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/qo;",
            "Lcom/google/android/gms/internal/ads/aig;",
            "Lcom/google/android/gms/internal/ads/qk;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/blo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pl;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkz;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkz;->b:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bkz;->c:Lcom/google/android/gms/internal/ads/qo;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bkz;->d:Lcom/google/android/gms/internal/ads/qk;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bkz;->e:Lcom/google/android/gms/internal/ads/aig;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bkz;->f:Ljava/util/HashMap;

    .line 9
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/jn;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/jn;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/qc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "AFMA_getAdDictionary"

    sget-object v1, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    sget-object v2, Lcom/google/android/gms/internal/ads/ble;->a:Lcom/google/android/gms/internal/ads/jh;

    .line 69
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/ads/ckw;->f:Lcom/google/android/gms/internal/ads/ckw;

    .line 71
    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/cba;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/cba;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/blc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/blc;-><init>(Lcom/google/android/gms/internal/ads/cba;)V

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/ads/blf;->a:Lcom/google/android/gms/internal/ads/ckg;

    .line 62
    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->e:Lcom/google/android/gms/internal/ads/ckw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pw;->a:Landroid/os/Bundle;

    .line 63
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckg;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/gms/internal/ads/bli;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bli;-><init>(Lcom/google/android/gms/internal/ads/bkz;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 136
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/google/android/gms/internal/ads/bll;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/bll;-><init>(Lcom/google/android/gms/internal/ads/bkz;Lcom/google/android/gms/internal/ads/pq;)V

    .line 138
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 139
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 140
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            "I)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->p()Lcom/google/android/gms/internal/ads/je;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkz;->a:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/je;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;

    move-result-object v2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->e:Lcom/google/android/gms/internal/ads/aig;

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aig;->a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/cba;

    move-result-object v3

    .line 14
    const-string/jumbo v0, "google.afma.response.normalize"

    sget-object v4, Lcom/google/android/gms/internal/ads/bln;->d:Lcom/google/android/gms/internal/ads/jg;

    sget-object v5, Lcom/google/android/gms/internal/ads/ji;->b:Lcom/google/android/gms/internal/ads/jh;

    .line 15
    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;

    move-result-object v4

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/ads/bls;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->a:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/pw;->b:Lcom/google/android/gms/internal/ads/yd;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bkz;->c:Lcom/google/android/gms/internal/ads/qo;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/pw;->g:Ljava/lang/String;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/google/android/gms/internal/ads/bls;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cba;->c()Lcom/google/android/gms/internal/ads/ckz;

    move-result-object v6

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/ar;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const-string/jumbo v0, "Request contained a PoolKey but split request is disabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 30
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 33
    invoke-static {p1, v6, v3}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/cba;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 35
    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/jn;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 36
    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->g:Lcom/google/android/gms/internal/ads/ckw;

    new-array v3, v11, [Lcom/google/android/gms/internal/ads/crt;

    aput-object v1, v3, v9

    aput-object v0, v3, v10

    .line 37
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/blb;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/blb;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ckn;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckg;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v2

    .line 41
    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->h:Lcom/google/android/gms/internal/ads/ckw;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/crt;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    .line 42
    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/bla;

    invoke-direct {v5, v2, v0, v1}, Lcom/google/android/gms/internal/ads/bla;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    .line 43
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/ckn;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/blo;

    .line 26
    if-nez v0, :cond_2

    .line 27
    const-string/jumbo v1, "Request contained a PoolKey but no matching parameters were found."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    move-object v1, v0

    .line 28
    goto :goto_0

    .line 48
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/blr;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/blo;->b:Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/blo;->a:Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/blr;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qc;)V

    .line 49
    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->g:Lcom/google/android/gms/internal/ads/ckw;

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckg;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->h:Lcom/google/android/gms/internal/ads/ckw;

    new-array v3, v11, [Lcom/google/android/gms/internal/ads/crt;

    aput-object v0, v3, v9

    aput-object v1, v3, v10

    .line 55
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bld;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/bld;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ckn;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/ar;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Split request is disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/blm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/blm;-><init>(Lcom/google/android/gms/internal/ads/bkz;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/blo;

    .line 104
    if-nez v0, :cond_2

    .line 105
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pg;)Lcom/google/android/gms/internal/ads/pi;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qc;->h()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 145
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bkz;->f:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/gms/internal/ads/blo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/blo;-><init>(Lcom/google/android/gms/internal/ads/qc;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/google/android/gms/internal/ads/coc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method final synthetic a()V
    .locals 2

    .prologue
    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->d:Lcom/google/android/gms/internal/ads/qk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qk;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "persistFlags"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pg;Lcom/google/android/gms/internal/ads/po;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/pq;)V

    .line 78
    new-instance v1, Lcom/google/android/gms/internal/ads/blh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/blh;-><init>(Lcom/google/android/gms/internal/ads/bkz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkz;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bkz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/pq;)V

    .line 113
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            "I)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/ar;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Split request is disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->j:Lcom/google/android/gms/internal/ads/ciu;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Pool configuration missing from request."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->j:Lcom/google/android/gms/internal/ads/ciu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ciu;->c:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->j:Lcom/google/android/gms/internal/ads/ciu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ciu;->d:I

    if-nez v0, :cond_3

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Caching is disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->p()Lcom/google/android/gms/internal/ads/je;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkz;->a:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/je;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkz;->e:Lcom/google/android/gms/internal/ads/aig;

    .line 89
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/aig;->a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/cba;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cba;->c()Lcom/google/android/gms/internal/ads/ckz;

    move-result-object v2

    .line 92
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/cba;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 94
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/jn;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 95
    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->v:Lcom/google/android/gms/internal/ads/ckw;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/crt;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 96
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/blg;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/blg;-><init>(Lcom/google/android/gms/internal/ads/bkz;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    .line 97
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ckn;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 116
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->p()Lcom/google/android/gms/internal/ads/je;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkz;->a:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/je;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;

    move-result-object v2

    .line 118
    sget-object v0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Signal collection disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 133
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/pq;)V

    .line 134
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkz;->e:Lcom/google/android/gms/internal/ads/aig;

    .line 121
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/aig;->a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/cba;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cba;->b()Lcom/google/android/gms/internal/ads/cag;

    move-result-object v1

    .line 123
    const-string/jumbo v3, "google.afma.request.getSignals"

    sget-object v4, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    sget-object v5, Lcom/google/android/gms/internal/ads/ji;->b:Lcom/google/android/gms/internal/ads/jh;

    .line 124
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cba;->c()Lcom/google/android/gms/internal/ads/ckz;

    move-result-object v0

    .line 126
    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->i:Lcom/google/android/gms/internal/ads/ckw;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/pw;->a:Landroid/os/Bundle;

    .line 127
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/blj;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/blj;-><init>(Lcom/google/android/gms/internal/ads/cag;)V

    .line 128
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ckw;->j:Lcom/google/android/gms/internal/ads/ckw;

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/cqt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bkz;->b(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/pq;)V

    .line 110
    return-void
.end method
