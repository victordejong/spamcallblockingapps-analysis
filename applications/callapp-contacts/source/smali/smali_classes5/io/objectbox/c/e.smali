.class final Lio/objectbox/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/objectbox/c/d;"
    }
.end annotation


# instance fields
.field volatile a:Z

.field private b:Lio/objectbox/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Lio/objectbox/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/objectbox/c/b;Ljava/lang/Object;Lio/objectbox/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/b<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lio/objectbox/c/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/objectbox/c/e;->b:Lio/objectbox/c/b;

    .line 29
    iput-object p2, p0, Lio/objectbox/c/e;->c:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lio/objectbox/c/e;->d:Lio/objectbox/c/a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 35
    :try_start_0
    iput-boolean v0, p0, Lio/objectbox/c/e;->a:Z

    .line 36
    iget-object v0, p0, Lio/objectbox/c/e;->b:Lio/objectbox/c/b;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lio/objectbox/c/e;->d:Lio/objectbox/c/a;

    iget-object v2, p0, Lio/objectbox/c/e;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/objectbox/c/b;->b(Lio/objectbox/c/a;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lio/objectbox/c/e;->b:Lio/objectbox/c/b;

    .line 41
    iput-object v0, p0, Lio/objectbox/c/e;->d:Lio/objectbox/c/a;

    .line 42
    iput-object v0, p0, Lio/objectbox/c/e;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
