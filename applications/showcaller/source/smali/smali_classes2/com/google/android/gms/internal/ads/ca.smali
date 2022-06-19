.class final synthetic Lcom/google/android/gms/internal/ads/ca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ja;

.field private final e:Lcom/google/android/gms/internal/ads/ea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca;->d:Lcom/google/android/gms/internal/ads/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ca;->e:Lcom/google/android/gms/internal/ads/ea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->d:Lcom/google/android/gms/internal/ads/ja;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->e:Lcom/google/android/gms/internal/ads/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->c()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ea;->B(I)V

    return-void
.end method
