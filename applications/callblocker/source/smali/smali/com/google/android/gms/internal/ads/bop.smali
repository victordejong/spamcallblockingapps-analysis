.class public final Lcom/google/android/gms/internal/ads/bop;
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
        "Lcom/google/android/gms/internal/ads/avq;",
        "Lcom/google/android/gms/internal/ads/chs;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/awq;

.field private final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/awq;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bop;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bop;->c:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bop;->b:Lcom/google/android/gms/internal/ads/awq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bop;->d:Ljava/util/concurrent/Executor;

    .line 6
    return-void
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
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bop;->c:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bop;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    .line 10
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 15
    :goto_0
    return-void

    .line 11
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bop;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/wy;->a(Lcom/google/android/gms/internal/ads/wz;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v5, Lcom/google/android/gms/internal/ads/ku;

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bop;->b:Lcom/google/android/gms/internal/ads/awq;

    new-instance v1, Lcom/google/android/gms/internal/ads/amy;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/avv;

    new-instance v3, Lcom/google/android/gms/internal/ads/bos;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/bos;-><init>(Lcom/google/android/gms/internal/ads/bmx;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/avv;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/awq;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/avv;)Lcom/google/android/gms/internal/ads/avs;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->a()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/google/android/gms/internal/ads/aio;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/aio;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bop;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 21
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->f()Lcom/google/android/gms/internal/ads/brp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/avs;->h()Lcom/google/android/gms/internal/ads/avq;

    move-result-object v0

    .line 23
    return-object v0
.end method
