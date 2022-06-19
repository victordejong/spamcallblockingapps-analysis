.class final synthetic Lcom/google/android/gms/internal/ads/ji0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s01;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s01;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ji0;->a:Lcom/google/android/gms/internal/ads/s01;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ji0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ji0;->a:Lcom/google/android/gms/internal/ads/s01;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ji0;->b:I

    check-cast p1, Lcom/google/android/gms/internal/ads/u11;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/u11;->p(Lcom/google/android/gms/internal/ads/s01;I)V

    return-void
.end method
