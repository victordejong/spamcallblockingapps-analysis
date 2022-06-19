.class final Landroidx/media2/session/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/r$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media2/session/SessionCommand;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroidx/media2/session/r$e;

.field final synthetic f:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;IILandroidx/media2/session/r$e;)V
    .locals 0

    .line 180
    iput-object p1, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/r$1;->b:Landroidx/media2/session/SessionCommand;

    iput p4, p0, Landroidx/media2/session/r$1;->c:I

    iput p5, p0, Landroidx/media2/session/r$1;->d:I

    iput-object p6, p0, Landroidx/media2/session/r$1;->e:Landroidx/media2/session/r$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 183
    iget-object v0, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v0, v1}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$1;->b:Landroidx/media2/session/SessionCommand;

    const-string v1, " isn\'t allowed."

    const-string v2, ") from "

    const-string v3, "Command ("

    const/4 v4, -0x4

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v5, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget-object v6, p0, Landroidx/media2/session/r$1;->b:Landroidx/media2/session/SessionCommand;

    invoke-virtual {v0, v5, v6}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    sget-boolean v0, Landroidx/media2/session/r;->a:Z

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/media2/session/r$1;->b:Landroidx/media2/session/SessionCommand;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v1, p0, Landroidx/media2/session/r$1;->c:I

    invoke-static {v0, v1, v4}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;II)V

    return-void

    .line 197
    :cond_2
    sget-object v0, Landroidx/media2/session/r;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media2/session/r$1;->b:Landroidx/media2/session/SessionCommand;

    .line 1641
    iget v1, v1, Landroidx/media2/session/SessionCommand;->f:I

    .line 197
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v5, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v6, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v0, v5, v6}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    sget-boolean v0, Landroidx/media2/session/r;->a:Z

    if-eqz v0, :cond_4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_4
    iget-object v0, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v1, p0, Landroidx/media2/session/r$1;->c:I

    invoke-static {v0, v1, v4}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;II)V

    return-void

    .line 209
    :cond_5
    sget-object v0, Landroidx/media2/session/r;->b:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    :goto_0
    if-eqz v0, :cond_6

    .line 214
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v0, p0, Landroidx/media2/session/r$1;->f:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 215
    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 228
    :cond_6
    iget-object v0, p0, Landroidx/media2/session/r$1;->e:Landroidx/media2/session/r$e;

    instance-of v1, v0, Landroidx/media2/session/r$d;

    if-eqz v1, :cond_8

    .line 229
    check-cast v0, Landroidx/media2/session/r$d;

    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    .line 230
    invoke-interface {v0, v1}, Landroidx/media2/session/r$d;->a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 235
    new-instance v1, Landroidx/media2/session/r$1$1;

    invoke-direct {v1, p0, v0}, Landroidx/media2/session/r$1$1;-><init>(Landroidx/media2/session/r$1;Lcom/google/common/util/concurrent/a;)V

    sget-object v2, Landroidx/media2/session/s;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 232
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SessionPlayer has returned null, commandCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_8
    instance-of v1, v0, Landroidx/media2/session/r$c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Unexpected return type "

    const-string v3, ". Fix bug"

    if-eqz v1, :cond_d

    .line 251
    :try_start_1
    check-cast v0, Landroidx/media2/session/r$c;

    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-interface {v0, v1}, Landroidx/media2/session/r$c;->a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 255
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 256
    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v2, p0, Landroidx/media2/session/r$1;->c:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;II)V

    return-void

    .line 257
    :cond_9
    instance-of v1, v0, Landroidx/media2/session/SessionResult;

    if-eqz v1, :cond_a

    .line 258
    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v2, p0, Landroidx/media2/session/r$1;->c:I

    check-cast v0, Landroidx/media2/session/SessionResult;

    invoke-static {v1, v2, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/SessionResult;)V

    return-void

    .line 259
    :cond_a
    sget-boolean v1, Landroidx/media2/session/r;->a:Z

    if-nez v1, :cond_b

    return-void

    .line 260
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SessionCallback has returned null, commandCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_d
    instance-of v1, v0, Landroidx/media2/session/r$b;

    if-eqz v1, :cond_12

    .line 264
    check-cast v0, Landroidx/media2/session/r$b;

    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-interface {v0, v1}, Landroidx/media2/session/r$b;->a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 269
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 270
    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v2, p0, Landroidx/media2/session/r$1;->c:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroidx/media2/session/r;->b(Landroidx/media2/session/MediaSession$b;II)V

    return-void

    .line 271
    :cond_e
    instance-of v1, v0, Landroidx/media2/session/LibraryResult;

    if-eqz v1, :cond_f

    .line 272
    iget-object v1, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget v2, p0, Landroidx/media2/session/r$1;->c:I

    check-cast v0, Landroidx/media2/session/LibraryResult;

    invoke-static {v1, v2, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/LibraryResult;)V

    return-void

    .line 273
    :cond_f
    sget-boolean v1, Landroidx/media2/session/r;->a:Z

    if-nez v1, :cond_10

    return-void

    .line 274
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LibrarySessionCallback has returned null, commandCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media2/session/r$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_12
    sget-boolean v0, Landroidx/media2/session/r;->a:Z

    if-nez v0, :cond_13

    return-void

    .line 278
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media2/session/r$1;->e:Landroidx/media2/session/r$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 292
    throw v0

    :catch_1
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v2}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionStub"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
