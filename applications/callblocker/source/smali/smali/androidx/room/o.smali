.class public abstract Landroidx/room/o;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroidx/room/i;

.field private volatile c:Landroidx/i/a/f;


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Landroidx/room/o;->b:Landroidx/room/i;

    .line 50
    return-void
.end method

.method private a(Z)Landroidx/i/a/f;
    .locals 1

    .prologue
    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Landroidx/room/o;->c:Landroidx/i/a/f;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Landroidx/room/o;->d()Landroidx/i/a/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/o;->c:Landroidx/i/a/f;

    .line 74
    :cond_0
    iget-object v0, p0, Landroidx/room/o;->c:Landroidx/i/a/f;

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-direct {p0}, Landroidx/room/o;->d()Landroidx/i/a/f;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Landroidx/i/a/f;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Landroidx/room/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Landroidx/room/o;->b:Landroidx/room/i;

    invoke-virtual {v1, v0}, Landroidx/room/i;->a(Ljava/lang/String;)Landroidx/i/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Landroidx/i/a/f;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroidx/room/o;->c:Landroidx/i/a/f;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroidx/room/o;->b:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->e()V

    .line 61
    return-void
.end method

.method public c()Landroidx/i/a/f;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroidx/room/o;->b()V

    .line 87
    iget-object v0, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/room/o;->a(Z)Landroidx/i/a/f;

    move-result-object v0

    return-object v0
.end method
