.class public abstract Lcom/google/android/gms/internal/ads/ckl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/android/gms/internal/ads/ckx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ckx",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ckl;->a:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/ckx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/ckx",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckl;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ckl;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ckl;->d:Lcom/google/android/gms/internal/ads/ckx;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/crs;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckl;->b:Lcom/google/android/gms/internal/ads/crs;

    return-object v0
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/ckl;->a:Lcom/google/android/gms/internal/ads/crt;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ckl;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckl;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/ckx;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckl;->d:Lcom/google/android/gms/internal/ads/ckx;

    return-object v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/ckn;"
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/ckn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/ckn;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/ckk;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/ckp;"
        }
    .end annotation

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ckp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/ckp;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ckk;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TI;>;)",
            "Lcom/google/android/gms/internal/ads/ckr",
            "<TI;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/ckr;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ckr;-><init>(Lcom/google/android/gms/internal/ads/ckl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/crt;Ljava/util/List;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/ckk;)V

    return-object v0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
