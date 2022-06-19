.class final Lcom/google/android/gms/internal/ads/cgh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bto",
        "<",
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/internal/ads/cgf;Lcom/google/android/gms/internal/ads/bdr;)Lcom/google/android/gms/internal/ads/bdr;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/bdr;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/internal/ads/cgf;Lcom/google/android/gms/internal/ads/bdr;)Lcom/google/android/gms/internal/ads/bdr;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/cgf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/internal/ads/cgf;)Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
