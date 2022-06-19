.class final Lcom/google/android/gms/internal/ads/bod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bny;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bod;->a:Lcom/google/android/gms/internal/ads/bny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/akk;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bod;->a:Lcom/google/android/gms/internal/ads/bny;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bny;->a(Lcom/google/android/gms/internal/ads/bny;)Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 3
    const-string/jumbo v0, "DelayedBannerAd.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    return-void
.end method
