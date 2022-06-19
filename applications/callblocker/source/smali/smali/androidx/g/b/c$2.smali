.class Landroidx/g/b/c$2;
.super Landroidx/g/b/c$d;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/g/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/g/b/c$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/g/b/c;


# direct methods
.method constructor <init>(Landroidx/g/b/c;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    invoke-direct {p0}, Landroidx/g/b/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    iget-object v0, v0, Landroidx/g/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    const/4 v1, 0x0

    .line 139
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    iget-object v0, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    iget-object v2, p0, Landroidx/g/b/c$2;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/g/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    invoke-virtual {v0, v1}, Landroidx/g/b/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :try_start_1
    iget-object v2, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    iget-object v2, v2, Landroidx/g/b/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/g/b/c$2;->a:Landroidx/g/b/c;

    invoke-virtual {v2, v1}, Landroidx/g/b/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
