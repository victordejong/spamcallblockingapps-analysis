.class public final Lcom/google/android/gms/internal/ads/bez;
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
        "Lcom/google/android/gms/internal/ads/aql;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfa;

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bfa;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bfa;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bez;->a:Lcom/google/android/gms/internal/ads/bfa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bez;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bfa;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/bez;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bfa;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bey;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bez;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/bez;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bez;-><init>(Lcom/google/android/gms/internal/ads/bfa;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bez;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bey;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/auq;

    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/auq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/auq;

    .line 11
    return-object v0
.end method
