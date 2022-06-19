.class final synthetic Lcom/google/android/gms/internal/ads/vn2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l81;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/en2;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/en2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn2;->a:Lcom/google/android/gms/internal/ads/en2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vn2;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn2;->a:Lcom/google/android/gms/internal/ads/en2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn2;->b:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/zn2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/en2;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/en2;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfem;

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zn2;->q(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
