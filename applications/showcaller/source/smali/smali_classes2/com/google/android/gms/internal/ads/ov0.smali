.class final synthetic Lcom/google/android/gms/internal/ads/ov0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s01;

.field private final b:Lcom/google/android/gms/internal/ads/u4;

.field private final c:Lcom/google/android/gms/internal/ads/nn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov0;->a:Lcom/google/android/gms/internal/ads/s01;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ov0;->b:Lcom/google/android/gms/internal/ads/u4;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ov0;->c:Lcom/google/android/gms/internal/ads/nn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ov0;->a:Lcom/google/android/gms/internal/ads/s01;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ov0;->b:Lcom/google/android/gms/internal/ads/u4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ov0;->c:Lcom/google/android/gms/internal/ads/nn;

    check-cast p1, Lcom/google/android/gms/internal/ads/u11;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/u11;->a(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method
