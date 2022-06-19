.class public final Lio/objectbox/a/a;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final g:Lio/objectbox/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/Query<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Lio/objectbox/c/d;

.field private final i:Lio/objectbox/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/a<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/objectbox/query/Query;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/query/Query<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 32
    new-instance v0, Lio/objectbox/a/a$1;

    invoke-direct {v0, p0}, Lio/objectbox/a/a$1;-><init>(Lio/objectbox/a/a;)V

    iput-object v0, p0, Lio/objectbox/a/a;->i:Lio/objectbox/c/a;

    .line 40
    iput-object p1, p0, Lio/objectbox/a/a;->g:Lio/objectbox/query/Query;

    return-void
.end method

.method static synthetic a(Lio/objectbox/a/a;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/objectbox/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 46
    iget-object v0, p0, Lio/objectbox/a/a;->h:Lio/objectbox/c/d;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/objectbox/a/a;->g:Lio/objectbox/query/Query;

    .line 1612
    new-instance v1, Lio/objectbox/c/k;

    iget-object v2, v0, Lio/objectbox/query/Query;->b:Lio/objectbox/query/e;

    const/4 v3, 0x0

    iget-object v0, v0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 2576
    iget-object v0, v0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 3163
    iget-object v0, v0, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    .line 1612
    invoke-direct {v1, v2, v3, v0}, Lio/objectbox/c/k;-><init>(Lio/objectbox/c/b;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;)V

    .line 47
    iget-object v0, p0, Lio/objectbox/a/a;->i:Lio/objectbox/c/a;

    invoke-virtual {v1, v0}, Lio/objectbox/c/k;->a(Lio/objectbox/c/a;)Lio/objectbox/c/d;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/a/a;->h:Lio/objectbox/c/d;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 3363
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->c:Landroidx/a/a/b/b;

    .line 4130
    iget v0, v0, Landroidx/a/a/b/b;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lio/objectbox/a/a;->h:Lio/objectbox/c/d;

    invoke-interface {v0}, Lio/objectbox/c/d;->a()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lio/objectbox/a/a;->h:Lio/objectbox/c/d;

    :cond_1
    return-void
.end method
