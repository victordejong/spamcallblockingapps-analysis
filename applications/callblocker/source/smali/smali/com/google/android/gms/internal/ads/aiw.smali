.class final synthetic Lcom/google/android/gms/internal/ads/aiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aiw;->a:Lcom/google/android/gms/internal/ads/aix;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiw;->a:Lcom/google/android/gms/internal/ads/aix;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aix;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ais;->b(Lcom/google/android/gms/internal/ads/ais;)Lcom/google/android/gms/internal/ads/ajb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajb;->f()V

    .line 3
    return-void
.end method
