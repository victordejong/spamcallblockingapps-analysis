.class final Lcom/google/android/gms/internal/ads/dg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tg;


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eg;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/dg;->a:I

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/dg;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/dg;->a:I

    return p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/eg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dg;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/eg;->G(IJ)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/eg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dg;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eg;->D(I)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eg;->E()V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/eg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dg;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eg;->F(ILcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;Z)I

    move-result p1

    return p1
.end method
