.class public final Lcom/google/android/gms/internal/ads/ww3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gx3;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/u4;

.field private b:Lcom/google/android/gms/internal/ads/ta;

.field private c:Lcom/google/android/gms/internal/ads/yr3;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ww3;->a:Lcom/google/android/gms/internal/ads/u4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ta;Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ww3;->b:Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ww3;->c:Lcom/google/android/gms/internal/ads/yr3;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ww3;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/la;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww3;->b:Lcom/google/android/gms/internal/ads/ta;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww3;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ta;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww3;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ta;->c()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ww3;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 5
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/u4;->r:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/u4;->a()Lcom/google/android/gms/internal/ads/s4;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/ads/s4;->r(J)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ww3;->a:Lcom/google/android/gms/internal/ads/u4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ww3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ww3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 8
    invoke-static {v0, p1, v5}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ww3;->c:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    :cond_2
    :goto_0
    return-void
.end method
