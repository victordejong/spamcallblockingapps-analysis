.class Lcom/callerid/block/a/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/a/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/a/a;

.field final synthetic b:Lcom/callerid/block/a/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/a/b;Lcom/callerid/block/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/a/b$d;->b:Lcom/callerid/block/a/b;

    iput-object p2, p0, Lcom/callerid/block/a/b$d;->a:Lcom/callerid/block/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onEnd"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/a/b$d;->b:Lcom/callerid/block/a/b;

    iget-object v1, p0, Lcom/callerid/block/a/b$d;->a:Lcom/callerid/block/a/a;

    invoke-virtual {v1}, Lcom/callerid/block/a/a;->c()I

    move-result v1

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

    const-string v0, "wbb"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
