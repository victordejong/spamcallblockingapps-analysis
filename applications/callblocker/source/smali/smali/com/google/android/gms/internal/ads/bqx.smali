.class public final Lcom/google/android/gms/internal/ads/bqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmy",
        "<",
        "Lcom/google/android/gms/internal/ads/bdr;",
        "Lcom/google/android/gms/internal/ads/chs;",
        "Lcom/google/android/gms/internal/ads/boe;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/bdu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bdu;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqx;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqx;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqx;->c:Lcom/google/android/gms/internal/ads/bdu;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bqx;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqx;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bqx;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/bqx;->c(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/boe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/chs;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 20
    const-string/jumbo v2, "Fail to load ad from adapter "

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/boe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/bqz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bqz;-><init>(Lcom/google/android/gms/internal/ads/bqx;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/boe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/boe;->a(Lcom/google/android/gms/internal/ads/ave;)V

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqx;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v4, Lcom/google/android/gms/internal/ads/rm;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rm;Ljava/lang/String;)V

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/bqx;->c(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqx;->c:Lcom/google/android/gms/internal/ads/bdu;

    new-instance v1, Lcom/google/android/gms/internal/ads/amy;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/bds;

    new-instance v3, Lcom/google/android/gms/internal/ads/bra;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/bra;-><init>(Lcom/google/android/gms/internal/ads/bmx;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/bds;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bdu;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/bds;)Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/amj;->a()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/aio;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/aio;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqx;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/amj;->b()Lcom/google/android/gms/internal/ads/aqq;

    move-result-object v4

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/amj;->c()Lcom/google/android/gms/internal/ads/apo;

    move-result-object v3

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/bdt;->i()Lcom/google/android/gms/internal/ads/aro;

    move-result-object v2

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/bdt;->k()Lcom/google/android/gms/internal/ads/avb;

    move-result-object v5

    .line 32
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/boe;

    new-instance v0, Lcom/google/android/gms/internal/ads/brb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/brb;-><init>(Lcom/google/android/gms/internal/ads/bqx;Lcom/google/android/gms/internal/ads/aro;Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/aqq;Lcom/google/android/gms/internal/ads/avb;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/boe;->a(Lcom/google/android/gms/internal/ads/rm;)V

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/bdt;->h()Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    .line 34
    return-object v0
.end method
