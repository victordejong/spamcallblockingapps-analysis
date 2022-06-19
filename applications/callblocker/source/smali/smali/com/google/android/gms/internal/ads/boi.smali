.class final synthetic Lcom/google/android/gms/internal/ads/boi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aqi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boi;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boi;->a:Lcom/google/android/gms/internal/ads/act;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->g()V

    .line 4
    :cond_0
    return-void
.end method
