.class public final Lcom/google/android/gms/internal/ads/nx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/x51;

.field private final b:Lcom/google/android/gms/internal/ads/zb2;

.field private final c:Lcom/google/android/gms/internal/ads/be2;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/x51;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zb2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zb2;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/be2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/be2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/x51;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/nx1;->a:[Lcom/google/android/gms/internal/ads/x51;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->b:Lcom/google/android/gms/internal/ads/zb2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/nx1;->c:Lcom/google/android/gms/internal/ads/be2;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/android/gms/internal/ads/x51;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->a:[Lcom/google/android/gms/internal/ads/x51;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d6;)Lcom/google/android/gms/internal/ads/d6;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->c:Lcom/google/android/gms/internal/ads/be2;

    iget v1, p1, Lcom/google/android/gms/internal/ads/d6;->c:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/be2;->h(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->c:Lcom/google/android/gms/internal/ads/be2;

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/d6;->d:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/be2;->i(F)V

    return-object p1
.end method

.method public final c(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->b:Lcom/google/android/gms/internal/ads/zb2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zb2;->n(Z)V

    return p1
.end method

.method public final d(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->c:Lcom/google/android/gms/internal/ads/be2;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/be2;->j(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nx1;->b:Lcom/google/android/gms/internal/ads/zb2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zb2;->o()J

    move-result-wide v0

    return-wide v0
.end method
