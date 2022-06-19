.class final synthetic Lcom/google/android/gms/internal/ads/xk1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/al1;

.field private final b:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xk1;->a:Lcom/google/android/gms/internal/ads/al1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xk1;->b:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xk1;->a:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xk1;->b:Lcom/google/android/gms/internal/ads/wn0;

    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/al1;->c(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V

    return-void
.end method
