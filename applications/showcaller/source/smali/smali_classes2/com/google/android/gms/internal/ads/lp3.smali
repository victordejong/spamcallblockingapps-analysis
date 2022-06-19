.class final synthetic Lcom/google/android/gms/internal/ads/lp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:Lcom/google/android/gms/internal/ads/u4;

.field private final f:Lcom/google/android/gms/internal/ads/nn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lp3;->e:Lcom/google/android/gms/internal/ads/u4;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lp3;->f:Lcom/google/android/gms/internal/ads/nn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp3;->e:Lcom/google/android/gms/internal/ads/u4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp3;->f:Lcom/google/android/gms/internal/ads/nn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/tp3;->r(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method
