.class final Lcom/google/android/gms/internal/ads/vh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wh0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/uh0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/uh0;-><init>(Lcom/google/android/gms/internal/ads/vh0;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
