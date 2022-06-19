.class final Lcom/google/android/gms/internal/ads/ctm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cti$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/css;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/css;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/css;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/css",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TQ;>;)",
            "Lcom/google/android/gms/internal/ads/css",
            "<TQ;>;"
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/css;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/InternalError;

    const-string/jumbo v1, "This should never be called, as we always first check supportedPrimitives."

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    .line 5
    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/css;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/css;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method
