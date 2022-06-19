.class final Lcom/google/android/gms/internal/ads/eaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaj;->a:Lcom/google/android/gms/internal/ads/eah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eaj;->a:Lcom/google/android/gms/internal/ads/eah;

    .line 1260
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/eah;->w:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eaj;->a:Lcom/google/android/gms/internal/ads/eah;

    .line 1261
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eah;->k:Lcom/google/android/gms/internal/ads/ear;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eaj;->a:Lcom/google/android/gms/internal/ads/eah;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ear;->a(Lcom/google/android/gms/internal/ads/ebf;)V

    :cond_0
    return-void
.end method
