.class public Lcom/google/android/gms/internal/ads/yo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crt",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csa",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/csa;->h()Lcom/google/android/gms/internal/ads/csa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 3
    return-void
.end method

.method private static a(Z)Z
    .locals 3

    .prologue
    .line 6
    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "SettableFuture"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ug;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    :cond_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csa;->a(Ljava/lang/Throwable;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yo;->a(Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csa;->b(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yo;->a(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cqf;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cqf;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    return v0
.end method
