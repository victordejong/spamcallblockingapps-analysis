.class public final Lcom/google/android/gms/internal/ads/anz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/auq",
        "<",
        "Lcom/google/android/gms/internal/ads/arg;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/aiq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/aiq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anz;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/anz;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/anz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/aiq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/anz;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/anz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/anz;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aiq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/auq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aiq;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/arg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/auq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/auq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 8
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/auq;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anz;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aiq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anz;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/anz;->a(Lcom/google/android/gms/internal/ads/aiq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/auq;

    move-result-object v0

    .line 11
    return-object v0
.end method
