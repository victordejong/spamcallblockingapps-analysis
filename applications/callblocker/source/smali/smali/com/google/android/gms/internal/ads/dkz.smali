.class final Lcom/google/android/gms/internal/ads/dkz;
.super Lcom/google/android/gms/internal/ads/cnz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dkw;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dkz;->a:Lcom/google/android/gms/internal/ads/dkw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkz;->a:Lcom/google/android/gms/internal/ads/dkw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dkw;->a(Landroid/os/Message;)V

    .line 3
    return-void
.end method
