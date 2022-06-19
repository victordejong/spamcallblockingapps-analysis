.class final synthetic Lcom/google/android/gms/internal/ads/v42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/x42;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v42;->d:Lcom/google/android/gms/internal/ads/x42;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v42;->d:Lcom/google/android/gms/internal/ads/x42;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y42;->d(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/n42;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n42;->d()Lcom/google/android/gms/internal/ads/n41;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/n41;->d()V

    return-void
.end method
