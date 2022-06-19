.class Lcom/callerid/block/a/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/a/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/a/b$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/a/b$a$a;->a:Lcom/callerid/block/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "checkupdate"

    const-string v1, "onEnd"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/a/b$a$a;->a:Lcom/callerid/block/a/b$a;

    iget-object v0, v0, Lcom/callerid/block/a/b$a;->c:Lcom/callerid/block/a/b;

    const/16 v1, 0x3ca

    invoke-static {v0, v1}, Lcom/callerid/block/a/b;->b(Lcom/callerid/block/a/b;I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "checkupdate"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
