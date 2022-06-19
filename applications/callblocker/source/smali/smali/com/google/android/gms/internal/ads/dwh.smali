.class final Lcom/google/android/gms/internal/ads/dwh;
.super Ljava/io/PushbackInputStream;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwc;Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwh;->a:Lcom/google/android/gms/internal/ads/dwc;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwh;->a:Lcom/google/android/gms/internal/ads/dwc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dwa;)V

    .line 3
    invoke-super {p0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
