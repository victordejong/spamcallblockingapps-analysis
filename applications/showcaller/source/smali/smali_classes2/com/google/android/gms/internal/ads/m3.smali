.class final synthetic Lcom/google/android/gms/internal/ads/m3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/b6;

.field private final b:Lcom/google/android/gms/internal/ads/ew3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/ew3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m3;->a:Lcom/google/android/gms/internal/ads/b6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m3;->b:Lcom/google/android/gms/internal/ads/ew3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m3;->a:Lcom/google/android/gms/internal/ads/b6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m3;->b:Lcom/google/android/gms/internal/ads/ew3;

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/h6;->F0(Lcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/ew3;)V

    return-void
.end method
