.class public abstract Lcom/google/android/gms/internal/ads/ip1;
.super Ljava/lang/Object;
.source ""


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
.field private static final d:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sz1;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/jp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jp1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ip1;->d:Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/sz1;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/jp1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sz1;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/jp1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip1;->a:Lcom/google/android/gms/internal/ads/sz1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ip1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ip1;->c:Lcom/google/android/gms/internal/ads/jp1;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/sz1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ip1;->a:Lcom/google/android/gms/internal/ads/sz1;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ip1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ip1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/jp1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ip1;->c:Lcom/google/android/gms/internal/ads/jp1;

    return-object p0
.end method

.method static synthetic g()Lcom/google/android/gms/internal/ads/rz1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ip1;->d:Lcom/google/android/gms/internal/ads/rz1;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/hp1<",
            "TI;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/hp1;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/hp1;-><init>(Lcom/google/android/gms/internal/ads/ip1;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rz1;Ljava/util/List;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/xo1;)V

    return-object v8
.end method

.method public final varargs b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zo1;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zo1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zo1;-><init>(Lcom/google/android/gms/internal/ads/ip1;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/xo1;)V

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
