.class Lcom/callerid/block/j/d$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/j/d$a;->d(Le/e/a/a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/j/d$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/j/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/j/d$a$b;->b:Lcom/callerid/block/j/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/j/d$a$b;->b:Lcom/callerid/block/j/d$a;

    iget-object v0, v0, Lcom/callerid/block/j/d$a;->a:Lcom/callerid/block/j/d;

    invoke-static {v0}, Lcom/callerid/block/j/d;->a(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/j/d$a$b;->b:Lcom/callerid/block/j/d$a;

    iget-object v2, v2, Lcom/callerid/block/j/d$a;->a:Lcom/callerid/block/j/d;

    invoke-static {v2}, Lcom/callerid/block/j/d;->b(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callerid/block/j/d;->c(Lcom/callerid/block/j/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callerid/block/j/d$a$b;->b:Lcom/callerid/block/j/d$a;

    iget-object v1, v1, Lcom/callerid/block/j/d$a;->a:Lcom/callerid/block/j/d;

    invoke-static {v1}, Lcom/callerid/block/j/d;->a(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method
