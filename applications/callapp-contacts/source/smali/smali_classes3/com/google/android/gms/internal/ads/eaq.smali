.class public final Lcom/google/android/gms/internal/ads/eaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eat;
.implements Lcom/google/android/gms/internal/ads/eau;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/ecd;

.field private final c:Lcom/google/android/gms/internal/ads/dxw;

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/gms/internal/ads/eao;

.field private final g:Lcom/google/android/gms/internal/ads/dwg;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Lcom/google/android/gms/internal/ads/eat;

.field private k:Lcom/google/android/gms/internal/ads/dwe;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecd;Lcom/google/android/gms/internal/ads/dxw;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/eao;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eaq;->b:Lcom/google/android/gms/internal/ads/ecd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eaq;->c:Lcom/google/android/gms/internal/ads/dxw;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/eaq;->d:I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eaq;->e:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/eaq;->f:Lcom/google/android/gms/internal/ads/eao;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->h:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/ads/eaq;->i:I

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/dwg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->g:Lcom/google/android/gms/internal/ads/dwg;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/ebz;)Lcom/google/android/gms/internal/ads/eas;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ecr;->a(Z)V

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/eah;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eaq;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eaq;->b:Lcom/google/android/gms/internal/ads/ecd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecd;->a()Lcom/google/android/gms/internal/ads/ecb;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eaq;->c:Lcom/google/android/gms/internal/ads/dxw;

    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxw;->a()[Lcom/google/android/gms/internal/ads/dxv;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/eaq;->d:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eaq;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eaq;->f:Lcom/google/android/gms/internal/ads/eao;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/eaq;->i:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/eah;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecb;[Lcom/google/android/gms/internal/ads/dxv;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/eao;Lcom/google/android/gms/internal/ads/eat;Lcom/google/android/gms/internal/ads/ebz;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/eat;)V
    .locals 3

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eaq;->j:Lcom/google/android/gms/internal/ads/eat;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/ebh;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ebh;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->k:Lcom/google/android/gms/internal/ads/dwe;

    const/4 v0, 0x0

    .line 14
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/eat;->a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V
    .locals 5

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eaq;->g:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object p2

    .line 27
    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/dwg;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 29
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/eaq;->l:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->k:Lcom/google/android/gms/internal/ads/dwe;

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eaq;->l:Z

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eaq;->j:Lcom/google/android/gms/internal/ads/eat;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/eat;->a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eas;)V
    .locals 4

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/eah;

    .line 1021
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eah;->f:Lcom/google/android/gms/internal/ads/ean;

    .line 1022
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    new-instance v2, Lcom/google/android/gms/internal/ads/eai;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/eai;-><init>(Lcom/google/android/gms/internal/ads/eah;Lcom/google/android/gms/internal/ads/ean;)V

    .line 2012
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/eco;->a(Z)V

    .line 2014
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ecm;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2015
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ecm;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1023
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1024
    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/eah;->w:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eaq;->j:Lcom/google/android/gms/internal/ads/eat;

    return-void
.end method
