.class public final Lcom/google/android/gms/internal/ads/np2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rp2;
.implements Lcom/google/android/gms/internal/ads/qp2;


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/xq2;

.field private final d:Lcom/google/android/gms/internal/ads/an2;

.field private final e:I

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/gms/internal/ads/mp2;

.field private final h:Lcom/google/android/gms/internal/ads/ml2;

.field private final i:I

.field private j:Lcom/google/android/gms/internal/ads/qp2;

.field private k:Lcom/google/android/gms/internal/ads/ol2;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/xq2;Lcom/google/android/gms/internal/ads/an2;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/mp2;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np2;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->c:Lcom/google/android/gms/internal/ads/xq2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/np2;->d:Lcom/google/android/gms/internal/ads/an2;

    iput p4, p0, Lcom/google/android/gms/internal/ads/np2;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/np2;->f:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/np2;->g:Lcom/google/android/gms/internal/ads/mp2;

    iput p8, p0, Lcom/google/android/gms/internal/ads/np2;->i:I

    new-instance p1, Lcom/google/android/gms/internal/ads/ml2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ml2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np2;->h:Lcom/google/android/gms/internal/ads/ml2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pp2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/lp2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lp2;->w()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(ILcom/google/android/gms/internal/ads/ar2;)Lcom/google/android/gms/internal/ads/pp2;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jr2;->a(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/lp2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np2;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->c:Lcom/google/android/gms/internal/ads/xq2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xq2;->zza()Lcom/google/android/gms/internal/ads/yq2;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->d:Lcom/google/android/gms/internal/ads/an2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/an2;->zza()[Lcom/google/android/gms/internal/ads/ym2;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/np2;->e:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/np2;->f:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/np2;->g:Lcom/google/android/gms/internal/ads/mp2;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/np2;->i:I

    const/4 v11, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/lp2;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/yq2;[Lcom/google/android/gms/internal/ads/ym2;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/mp2;Lcom/google/android/gms/internal/ads/qp2;Lcom/google/android/gms/internal/ads/ar2;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V
    .locals 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->h:Lcom/google/android/gms/internal/ads/ml2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/ol2;->d(ILcom/google/android/gms/internal/ads/ml2;Z)Lcom/google/android/gms/internal/ads/ml2;

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/ml2;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/np2;->l:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np2;->k:Lcom/google/android/gms/internal/ads/ol2;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->l:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->j:Lcom/google/android/gms/internal/ads/qp2;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/qp2;->d(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/vk2;ZLcom/google/android/gms/internal/ads/qp2;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/np2;->j:Lcom/google/android/gms/internal/ads/qp2;

    new-instance p1, Lcom/google/android/gms/internal/ads/eq2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/eq2;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np2;->k:Lcom/google/android/gms/internal/ads/ol2;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/qp2;->d(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->j:Lcom/google/android/gms/internal/ads/qp2;

    return-void
.end method
