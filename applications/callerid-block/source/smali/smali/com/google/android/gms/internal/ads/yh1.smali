.class final synthetic Lcom/google/android/gms/internal/ads/yh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ci1;

.field private final b:Lcom/google/android/gms/internal/ads/ri1;

.field private final c:Lcom/google/android/gms/internal/ads/pi1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ci1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yh1;->a:Lcom/google/android/gms/internal/ads/ci1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yh1;->c:Lcom/google/android/gms/internal/ads/pi1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yh1;->a:Lcom/google/android/gms/internal/ads/ci1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yh1;->c:Lcom/google/android/gms/internal/ads/pi1;

    check-cast p1, Lcom/google/android/gms/internal/ads/li1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/ci1;->b(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/li1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
