.class final Lcom/google/android/gms/internal/ads/ut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/uq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ut;->a:Lcom/google/android/gms/internal/ads/uq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ut;->a:Lcom/google/android/gms/internal/ads/uq;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/uq;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ut;->a:Lcom/google/android/gms/internal/ads/uq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->a()V

    .line 4
    return-void
.end method
