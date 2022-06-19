.class final synthetic Lcom/google/android/gms/internal/ads/fz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/f03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fz0;->d:Lcom/google/android/gms/internal/ads/f03;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz0;->d:Lcom/google/android/gms/internal/ads/f03;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/f03;->a(Ljava/lang/Throwable;)V

    return-void
.end method
