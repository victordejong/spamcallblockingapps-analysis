.class final Landroidx/media2/session/r$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/a;

.field final synthetic b:Landroidx/media2/session/r$1;


# direct methods
.method constructor <init>(Landroidx/media2/session/r$1;Lcom/google/common/util/concurrent/a;)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/media2/session/r$1$1;->b:Landroidx/media2/session/r$1;

    iput-object p2, p0, Landroidx/media2/session/r$1$1;->a:Lcom/google/common/util/concurrent/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 239
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/r$1$1;->b:Landroidx/media2/session/r$1;

    iget-object v0, v0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget-object v1, p0, Landroidx/media2/session/r$1$1;->b:Landroidx/media2/session/r$1;

    iget v1, v1, Landroidx/media2/session/r$1;->c:I

    iget-object v2, p0, Landroidx/media2/session/r$1$1;->a:Lcom/google/common/util/concurrent/a;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 240
    invoke-interface {v2, v3, v4, v5}, Lcom/google/common/util/concurrent/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/SessionPlayer$b;

    .line 239
    invoke-static {v0, v1, v2}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/common/SessionPlayer$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionStub"

    const-string v2, "Cannot obtain PlayerResult after the command is finished"

    .line 242
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v0, p0, Landroidx/media2/session/r$1$1;->b:Landroidx/media2/session/r$1;

    iget-object v0, v0, Landroidx/media2/session/r$1;->a:Landroidx/media2/session/MediaSession$b;

    iget-object v1, p0, Landroidx/media2/session/r$1$1;->b:Landroidx/media2/session/r$1;

    iget v1, v1, Landroidx/media2/session/r$1;->c:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;II)V

    return-void
.end method
