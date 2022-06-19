.class final Lcom/google/android/gms/internal/ads/dma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dlt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dlt;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dma;->b:Lcom/google/android/gms/internal/ads/dlt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dma;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dma;->b:Lcom/google/android/gms/internal/ads/dlt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dlt;->a(Lcom/google/android/gms/internal/ads/dlt;)Lcom/google/android/gms/internal/ads/dlu;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dma;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dlu;->a(I)V

    .line 3
    return-void
.end method
