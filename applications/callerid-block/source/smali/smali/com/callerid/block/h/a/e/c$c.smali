.class final Lcom/callerid/block/h/a/e/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/h/a/e/c;->b(Landroid/content/Context;Lcom/callerid/block/h/a/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callerid/block/h/a/e/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callerid/block/h/a/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/h/a/e/c$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/h/a/e/c$c;->b:Lcom/callerid/block/h/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/CollectInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/CollectInfo;

    iget-object v2, p0, Lcom/callerid/block/h/a/e/c$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/callerid/block/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callerid/block/bean/CollectInfo;->getUser_blocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/callerid/block/bean/CollectInfo;->getUser_commented()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/callerid/block/bean/CollectInfo;->getUser_reported()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/callerid/block/bean/CollectInfo;->getUser_upload_recording()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callerid/block/h/a/e/c$c$a;

    invoke-direct {v8, p0}, Lcom/callerid/block/h/a/e/c$c$a;-><init>(Lcom/callerid/block/h/a/e/c$c;)V

    invoke-static/range {v2 .. v8}, Lcom/callerid/block/h/a/e/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/e/k/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/h/a/e/g;->a()V

    iget-object p1, p0, Lcom/callerid/block/h/a/e/c$c;->b:Lcom/callerid/block/h/a/e/a;

    const-string v0, "ok"

    invoke-interface {p1, v0}, Lcom/callerid/block/h/a/e/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/h/a/e/c$c;->a:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->E1(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
