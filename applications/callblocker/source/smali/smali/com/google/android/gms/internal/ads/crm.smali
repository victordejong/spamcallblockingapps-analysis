.class public final Lcom/google/android/gms/internal/ads/crm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/gms/internal/ads/cpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpc",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/ads/cpc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/crm;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/crm;->b:Lcom/google/android/gms/internal/ads/cpc;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/cpc;Lcom/google/android/gms/internal/ads/crj;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/crm;-><init>(ZLcom/google/android/gms/internal/ads/cpc;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crm;->b:Lcom/google/android/gms/internal/ads/cpc;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/crm;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/cqu;-><init>(Lcom/google/android/gms/internal/ads/cpb;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
