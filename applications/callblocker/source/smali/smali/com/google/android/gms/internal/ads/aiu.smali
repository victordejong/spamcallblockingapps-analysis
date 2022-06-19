.class final synthetic Lcom/google/android/gms/internal/ads/aiu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aiv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aiv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aiu;->a:Lcom/google/android/gms/internal/ads/aiv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiu;->a:Lcom/google/android/gms/internal/ads/aiv;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aiv;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ais;->b(Lcom/google/android/gms/internal/ads/ais;)Lcom/google/android/gms/internal/ads/ajb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajb;->e()V

    .line 3
    return-void
.end method
