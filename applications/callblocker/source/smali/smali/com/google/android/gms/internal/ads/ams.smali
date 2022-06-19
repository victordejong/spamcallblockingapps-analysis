.class final synthetic Lcom/google/android/gms/internal/ads/ams;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ams;->a:Lcom/google/android/gms/internal/ads/crh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->a:Lcom/google/android/gms/internal/ads/crh;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjk;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Throwable;)V

    .line 3
    return-void
.end method
