.class public abstract Lcom/google/android/gms/internal/ads/uq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ut;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ut;-><init>(Lcom/google/android/gms/internal/ads/uq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uq;->a:Ljava/lang/Runnable;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq;->c:Z

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uq;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->b:Lcom/google/android/gms/internal/ads/crs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
