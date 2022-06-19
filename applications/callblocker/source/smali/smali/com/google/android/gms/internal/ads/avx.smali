.class final synthetic Lcom/google/android/gms/internal/ads/avx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/asl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/avx;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avx;->a:Lcom/google/android/gms/internal/ads/act;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    .line 4
    :cond_0
    return-void
.end method
