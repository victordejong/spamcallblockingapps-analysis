.class public final Lcom/google/android/gms/internal/ads/bqc;
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
        "Lcom/google/android/gms/internal/ads/bof;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqc;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqc;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqc;->c:Lcom/google/android/gms/internal/ads/bdu;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/chh;->n:Lcom/google/android/gms/internal/ads/cgt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgt;->a:I

    sget v2, Lcom/google/android/gms/internal/ads/cgy;->c:I

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqc;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    .line 11
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/chs;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 18
    :goto_0
    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqc;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    .line 14
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/chs;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 17
    const-string/jumbo v2, "Fail to load ad from adapter "

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqc;->c:Lcom/google/android/gms/internal/ads/bdu;

    new-instance v1, Lcom/google/android/gms/internal/ads/amy;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/bds;

    new-instance v3, Lcom/google/android/gms/internal/ads/bqf;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/bqf;-><init>(Lcom/google/android/gms/internal/ads/bmx;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/bds;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bdu;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/bds;)Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->a()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v2

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/ads/aio;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/aio;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqc;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 24
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bdt;->m()Lcom/google/android/gms/internal/ads/bql;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bdt;->h()Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    .line 26
    return-object v0
.end method
