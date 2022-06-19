.class public final Lcom/google/android/gms/internal/ads/api;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/ayi<",
        "Lcom/google/android/gms/internal/ads/asd;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/ajk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/ajk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/api;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/api;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/ajk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/api;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/api;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/api;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/api;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ajk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/api;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/ayi;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/ayi;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ayi;

    return-object v0
.end method
