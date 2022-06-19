.class final Lcom/google/android/gms/internal/ads/kl3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bm3;


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/gms/internal/ads/nl3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/nl3;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl3;->b:Lcom/google/android/gms/internal/ads/nl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/kl3;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    return p0
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl3;->b:Lcom/google/android/gms/internal/ads/nl3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/nl3;->s(IJ)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl3;->b:Lcom/google/android/gms/internal/ads/nl3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->T(I)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl3;->b:Lcom/google/android/gms/internal/ads/nl3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->U(I)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl3;->b:Lcom/google/android/gms/internal/ads/nl3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kl3;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/nl3;->W(ILcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;I)I

    move-result p1

    return p1
.end method
