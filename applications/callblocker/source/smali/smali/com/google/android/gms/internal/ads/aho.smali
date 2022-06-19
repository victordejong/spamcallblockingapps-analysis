.class final synthetic Lcom/google/android/gms/internal/ads/aho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ahl;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ahl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aho;->a:Lcom/google/android/gms/internal/ads/ahl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aho;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aho;->a:Lcom/google/android/gms/internal/ads/ahl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aho;->b:Ljava/lang/Runnable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v3, Lcom/google/android/gms/internal/ads/ahn;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/ahn;-><init>(Lcom/google/android/gms/internal/ads/ahl;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 3
    return-void
.end method
