.class public abstract Landroidx/room/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDatabase:Landroidx/room/h;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Landroidx/sqlite/db/e;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/o;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Landroidx/room/o;->mDatabase:Landroidx/room/h;

    return-void
.end method

.method private createNewStatement()Landroidx/sqlite/db/e;
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroidx/room/o;->createQuery()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Landroidx/room/o;->mDatabase:Landroidx/room/h;

    invoke-virtual {v1, v0}, Landroidx/room/h;->a(Ljava/lang/String;)Landroidx/sqlite/db/e;

    move-result-object v0

    return-object v0
.end method

.method private getStmt(Z)Landroidx/sqlite/db/e;
    .locals 0

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Landroidx/room/o;->mStmt:Landroidx/sqlite/db/e;

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Landroidx/room/o;->createNewStatement()Landroidx/sqlite/db/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/o;->mStmt:Landroidx/sqlite/db/e;

    .line 74
    :cond_0
    iget-object p1, p0, Landroidx/room/o;->mStmt:Landroidx/sqlite/db/e;

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Landroidx/room/o;->createNewStatement()Landroidx/sqlite/db/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public acquire()Landroidx/sqlite/db/e;
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/room/o;->assertNotMainThread()V

    .line 87
    iget-object v0, p0, Landroidx/room/o;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/room/o;->getStmt(Z)Landroidx/sqlite/db/e;

    move-result-object v0

    return-object v0
.end method

.method protected assertNotMainThread()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/room/o;->mDatabase:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->c()V

    return-void
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public release(Landroidx/sqlite/db/e;)V
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/room/o;->mStmt:Landroidx/sqlite/db/e;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Landroidx/room/o;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
