.class Lcom/callerid/block/k/a/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/k/a/d;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/k/a/d;


# direct methods
.method constructor <init>(Lcom/callerid/block/k/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/k/a/d$b;->b:Lcom/callerid/block/k/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/k/a/d$b;->b:Lcom/callerid/block/k/a/d;

    invoke-static {v0}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/k/a/d$b;->b:Lcom/callerid/block/k/a/d;

    invoke-static {v0}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/callerid/block/k/a/b;->a()V

    iget-object v0, p0, Lcom/callerid/block/k/a/d$b;->b:Lcom/callerid/block/k/a/d;

    invoke-static {v0}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/callerid/block/k/a/b;->c()V

    :cond_0
    return-void
.end method
