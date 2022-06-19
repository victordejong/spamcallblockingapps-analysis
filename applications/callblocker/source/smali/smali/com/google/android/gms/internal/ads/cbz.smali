.class final synthetic Lcom/google/android/gms/internal/ads/cbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crt;

.field private final b:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbz;->a:Lcom/google/android/gms/internal/ads/crt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbz;->b:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbz;->a:Lcom/google/android/gms/internal/ads/crt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbz;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/cbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/cbw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    return-object v2
.end method
