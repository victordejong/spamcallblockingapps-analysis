.class final synthetic Lcom/google/android/gms/internal/ads/crt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crt;->a:Lcom/google/android/gms/internal/ads/crr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crt;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 1039
    monitor-enter v0

    .line 1040
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/crr;->c(Lcom/google/android/gms/internal/ads/crx;)V

    .line 1041
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
