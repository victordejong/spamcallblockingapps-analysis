.class final synthetic Lcom/google/android/gms/internal/ads/vs1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;

.field private final b:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vs1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vs1;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vs1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vs1;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdym;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zs1;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zs1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
