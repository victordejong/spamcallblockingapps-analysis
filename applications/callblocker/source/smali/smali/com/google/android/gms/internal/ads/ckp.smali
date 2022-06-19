.class public final Lcom/google/android/gms/internal/ads/ckp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ckl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckp;->b:Lcom/google/android/gms/internal/ads/ckl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ckp;->a:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ckk;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ckp;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TO;>;",
            "Lcom/google/android/gms/internal/ads/crs;",
            ")",
            "Lcom/google/android/gms/internal/ads/ckr",
            "<TO;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckp;->b:Lcom/google/android/gms/internal/ads/ckl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ckp;->a:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ckl;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v6

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ckr;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/crt;Ljava/util/List;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckk;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ckj;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ckj;",
            "Lcom/google/android/gms/internal/ads/crs;",
            ")",
            "Lcom/google/android/gms/internal/ads/ckr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/cko;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/cko;-><init>(Lcom/google/android/gms/internal/ads/ckj;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/ckp;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;)",
            "Lcom/google/android/gms/internal/ads/ckr",
            "<TO;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckp;->b:Lcom/google/android/gms/internal/ads/ckl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ckp;->a:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ckl;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v6, p1

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ckr;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/crt;Ljava/util/List;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckk;)V

    .line 6
    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TO;>;)",
            "Lcom/google/android/gms/internal/ads/ckr",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckp;->b:Lcom/google/android/gms/internal/ads/ckl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ckl;->a(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ckp;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    return-object v0
.end method
