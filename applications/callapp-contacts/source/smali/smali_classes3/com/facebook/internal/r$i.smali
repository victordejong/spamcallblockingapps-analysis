.class public final Lcom/facebook/internal/r$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/r$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1",
        "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;",
        "onClose",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/r;

.field final synthetic b:J

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/r;JLjava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/facebook/internal/r$i;->a:Lcom/facebook/internal/r;

    iput-wide p2, p0, Lcom/facebook/internal/r$i;->b:J

    iput-object p4, p0, Lcom/facebook/internal/r$i;->c:Ljava/io/File;

    iput-object p5, p0, Lcom/facebook/internal/r$i;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 168
    iget-wide v0, p0, Lcom/facebook/internal/r$i;->b:J

    iget-object v2, p0, Lcom/facebook/internal/r$i;->a:Lcom/facebook/internal/r;

    invoke-static {v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/internal/r;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/internal/r$i;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/r$i;->a:Lcom/facebook/internal/r;

    iget-object v1, p0, Lcom/facebook/internal/r$i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/r$i;->c:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/internal/r;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
