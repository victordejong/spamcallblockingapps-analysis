.class public final Lcom/google/android/gms/internal/ads/cvo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ads/cuy;

.field final c:Lcom/google/android/gms/internal/ads/cvu;

.field final d:Lcom/google/android/gms/internal/ads/cvu;

.field e:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/cvc;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cuy;Lcom/google/android/gms/internal/ads/cvc;Lcom/google/android/gms/internal/ads/cvs;Lcom/google/android/gms/internal/ads/cvr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvo;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cvo;->g:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvo;->b:Lcom/google/android/gms/internal/ads/cuy;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cvo;->h:Lcom/google/android/gms/internal/ads/cvc;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cvo;->c:Lcom/google/android/gms/internal/ads/cvu;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cvo;->d:Lcom/google/android/gms/internal/ads/cvu;

    return-void
.end method

.method static a(Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/internal/ads/beb$a;)Lcom/google/android/gms/internal/ads/beb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ")",
            "Lcom/google/android/gms/internal/ads/beb$a;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/beb$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cuy;Lcom/google/android/gms/internal/ads/cvc;)Lcom/google/android/gms/internal/ads/cvo;
    .locals 8

    .line 9
    new-instance v7, Lcom/google/android/gms/internal/ads/cvo;

    new-instance v5, Lcom/google/android/gms/internal/ads/cvs;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/cvs;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/cvr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cvr;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cvo;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cuy;Lcom/google/android/gms/internal/ads/cvc;Lcom/google/android/gms/internal/ads/cvs;Lcom/google/android/gms/internal/ads/cvr;)V

    .line 11
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/cvo;->h:Lcom/google/android/gms/internal/ads/cvc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cvc;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/ads/cvn;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/cvn;-><init>(Lcom/google/android/gms/internal/ads/cvo;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/cvo;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/cvo;->e:Lcom/google/android/gms/tasks/h;

    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/cvo;->c:Lcom/google/android/gms/internal/ads/cvu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/cvu;->a()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/cvo;->e:Lcom/google/android/gms/tasks/h;

    .line 14
    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/cvq;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/cvq;-><init>(Lcom/google/android/gms/internal/ads/cvo;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/cvo;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/cvo;->f:Lcom/google/android/gms/tasks/h;

    return-object v7
.end method

.method private final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;)",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvo;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvo;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/cvp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cvp;-><init>(Lcom/google/android/gms/internal/ads/cvo;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
