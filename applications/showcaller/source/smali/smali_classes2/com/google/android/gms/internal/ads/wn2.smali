.class final synthetic Lcom/google/android/gms/internal/ads/wn2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l81;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/en2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/en2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wn2;->a:Lcom/google/android/gms/internal/ads/en2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wn2;->a:Lcom/google/android/gms/internal/ads/en2;

    check-cast p1, Lcom/google/android/gms/internal/ads/zn2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/en2;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/en2;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfem;

    .line 2
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zn2;->a(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V

    return-void
.end method
