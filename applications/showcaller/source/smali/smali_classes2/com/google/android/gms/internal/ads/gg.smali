.class public final Lcom/google/android/gms/internal/ads/gg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kg;
.implements Lcom/google/android/gms/internal/ads/jg;


# instance fields
.field private final d:Landroid/net/Uri;

.field private final e:Lcom/google/android/gms/internal/ads/ph;

.field private final f:Lcom/google/android/gms/internal/ads/pd;

.field private final g:I

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/gms/internal/ads/fg;

.field private final j:Lcom/google/android/gms/internal/ads/yb;

.field private final k:I

.field private l:Lcom/google/android/gms/internal/ads/jg;

.field private m:Lcom/google/android/gms/internal/ads/ac;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ph;Lcom/google/android/gms/internal/ads/pd;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/fg;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->d:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gg;->e:Lcom/google/android/gms/internal/ads/ph;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gg;->f:Lcom/google/android/gms/internal/ads/pd;

    iput p4, p0, Lcom/google/android/gms/internal/ads/gg;->g:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gg;->h:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/gg;->i:Lcom/google/android/gms/internal/ads/fg;

    iput p8, p0, Lcom/google/android/gms/internal/ads/gg;->k:I

    new-instance p1, Lcom/google/android/gms/internal/ads/yb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/yb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->j:Lcom/google/android/gms/internal/ads/yb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ig;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/eg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eg;->C()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ib;ZLcom/google/android/gms/internal/ads/jg;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gg;->l:Lcom/google/android/gms/internal/ads/jg;

    new-instance p1, Lcom/google/android/gms/internal/ads/wg;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/wg;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->m:Lcom/google/android/gms/internal/ads/ac;

    const/4 p2, 0x0

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/jg;->f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/ads/sh;)Lcom/google/android/gms/internal/ads/ig;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ci;->a(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/eg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gg;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->e:Lcom/google/android/gms/internal/ads/ph;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ph;->zza()Lcom/google/android/gms/internal/ads/qh;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->f:Lcom/google/android/gms/internal/ads/pd;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pd;->zza()[Lcom/google/android/gms/internal/ads/nd;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/gg;->g:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gg;->h:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gg;->i:Lcom/google/android/gms/internal/ads/fg;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/gg;->k:I

    const/4 v11, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/eg;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/qh;[Lcom/google/android/gms/internal/ads/nd;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/sh;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->l:Lcom/google/android/gms/internal/ads/jg;

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gg;->j:Lcom/google/android/gms/internal/ads/yb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/ac;->d(ILcom/google/android/gms/internal/ads/yb;Z)Lcom/google/android/gms/internal/ads/yb;

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/yb;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/gg;->n:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->m:Lcom/google/android/gms/internal/ads/ac;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gg;->n:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gg;->l:Lcom/google/android/gms/internal/ads/jg;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/jg;->f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    return-void
.end method
