.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/UUID;

.field b:Landroidx/work/d;

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroidx/work/WorkerParameters$a;

.field e:I

.field f:Ljava/util/concurrent/Executor;

.field g:Landroidx/work/impl/utils/b/a;

.field h:Landroidx/work/w;

.field i:Landroidx/work/p;

.field j:Landroidx/work/g;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/d;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Landroidx/work/impl/utils/b/a;Landroidx/work/w;Landroidx/work/p;Landroidx/work/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/d;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/WorkerParameters$a;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/w;",
            "Landroidx/work/p;",
            "Landroidx/work/g;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 70
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/d;

    .line 71
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    .line 72
    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    .line 73
    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    .line 74
    iput-object p6, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    .line 75
    iput-object p7, p0, Landroidx/work/WorkerParameters;->g:Landroidx/work/impl/utils/b/a;

    .line 76
    iput-object p8, p0, Landroidx/work/WorkerParameters;->h:Landroidx/work/w;

    .line 77
    iput-object p9, p0, Landroidx/work/WorkerParameters;->i:Landroidx/work/p;

    .line 78
    iput-object p10, p0, Landroidx/work/WorkerParameters;->j:Landroidx/work/g;

    return-void
.end method
