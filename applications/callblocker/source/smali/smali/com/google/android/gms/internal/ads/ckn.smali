.class public final Lcom/google/android/gms/internal/ads/ckn;
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

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ckl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckn;->c:Lcom/google/android/gms/internal/ads/ckl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ckn;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ckn;->b:Ljava/util/List;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/ckk;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ckn;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 8
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
    const/4 v3, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckn;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v6

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/ckm;->a:Ljava/util/concurrent/Callable;

    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckn;->c:Lcom/google/android/gms/internal/ads/ckl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ckn;->a:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ckn;->b:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ckn;->c:Lcom/google/android/gms/internal/ads/ckl;

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/ckl;->a(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v6

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ckr;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/crt;Ljava/util/List;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckk;)V

    .line 9
    return-object v0
.end method
