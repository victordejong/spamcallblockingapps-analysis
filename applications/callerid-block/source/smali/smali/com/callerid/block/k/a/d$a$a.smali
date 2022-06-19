.class Lcom/callerid/block/k/a/d$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/k/a/d$a;->b(Le/e/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/k/a/d$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/k/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/k/a/d$a$a;->b:Lcom/callerid/block/k/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "wbb"

    :try_start_0
    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Util.path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/phone/libphone/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/k/a/d$a$a;->b:Lcom/callerid/block/k/a/d$a;

    iget-object v1, v1, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {v1}, Lcom/callerid/block/k/a/d;->a(Lcom/callerid/block/k/a/d;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phone/libphone/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/k/a/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/k/a/d$a$a;->b:Lcom/callerid/block/k/a/d$a;

    iget-object v0, v0, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {v0}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/k/a/d$a$a;->b:Lcom/callerid/block/k/a/d$a;

    iget-object v0, v0, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {v0}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/callerid/block/k/a/b;->a()V

    :cond_2
    :goto_0
    return-void
.end method
