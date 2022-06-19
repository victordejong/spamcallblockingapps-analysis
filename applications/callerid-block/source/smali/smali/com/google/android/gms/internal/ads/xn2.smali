.class final Lcom/google/android/gms/internal/ads/xn2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vn2;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/sr2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sn2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sn2;->P0:Lcom/google/android/gms/internal/ads/sr2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xn2;->c:Lcom/google/android/gms/internal/ads/sr2;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/sr2;->i(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sr2;->u()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/xn2;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sr2;->u()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xn2;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xn2;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xn2;->c:Lcom/google/android/gms/internal/ads/sr2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sr2;->u()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xn2;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xn2;->b:I

    return v0
.end method
