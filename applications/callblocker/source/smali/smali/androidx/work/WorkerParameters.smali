.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "WorkerParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroidx/work/e;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/work/WorkerParameters$a;

.field private e:I

.field private f:Ljava/util/concurrent/Executor;

.field private g:Landroidx/work/impl/utils/b/a;

.field private h:Landroidx/work/v;

.field private i:Landroidx/work/p;

.field private j:Landroidx/work/i;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/e;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Landroidx/work/impl/utils/b/a;Landroidx/work/v;Landroidx/work/p;Landroidx/work/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/e;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/WorkerParameters$a;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/v;",
            "Landroidx/work/p;",
            "Landroidx/work/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 70
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/e;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    .line 72
    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    .line 73
    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    .line 74
    iput-object p6, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    .line 75
    iput-object p7, p0, Landroidx/work/WorkerParameters;->g:Landroidx/work/impl/utils/b/a;

    .line 76
    iput-object p8, p0, Landroidx/work/WorkerParameters;->h:Landroidx/work/v;

    .line 77
    iput-object p9, p0, Landroidx/work/WorkerParameters;->i:Landroidx/work/p;

    .line 78
    iput-object p10, p0, Landroidx/work/WorkerParameters;->j:Landroidx/work/i;

    .line 79
    return-void
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public b()Landroidx/work/e;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/e;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public d()Landroidx/work/impl/utils/b/a;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroidx/work/WorkerParameters;->g:Landroidx/work/impl/utils/b/a;

    return-object v0
.end method

.method public e()Landroidx/work/v;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroidx/work/WorkerParameters;->h:Landroidx/work/v;

    return-object v0
.end method
