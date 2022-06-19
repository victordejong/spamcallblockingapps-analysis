.class final Lcom/google/android/gms/internal/ads/dpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dpt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpw;->a:Lcom/google/android/gms/internal/ads/dpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpw;->a:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpt;->b(Lcom/google/android/gms/internal/ads/dpt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpw;->a:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpt;->c(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/dqd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpw;->a:Lcom/google/android/gms/internal/ads/dpt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqr;)V

    .line 4
    :cond_0
    return-void
.end method
