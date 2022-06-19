.class Landroidx/room/g$6;
.super Landroidx/room/f$b;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/f;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/room/g;


# direct methods
.method constructor <init>(Landroidx/room/g;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroidx/room/g$6;->b:Landroidx/room/g;

    invoke-direct {p0, p2}, Landroidx/room/f$b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Landroidx/room/g$6;->b:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/room/g$6;->b:Landroidx/room/g;

    iget-object v1, v0, Landroidx/room/g;->f:Landroidx/room/d;

    .line 178
    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Landroidx/room/g$6;->b:Landroidx/room/g;

    iget v2, v0, Landroidx/room/g;->c:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroidx/room/d;->a(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string/jumbo v1, "ROOM"

    const-string/jumbo v2, "Cannot broadcast invalidation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method
