.class Lcom/callerid/block/a/b$a;
.super Lcom/callerid/block/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/a/b;->f(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/callerid/block/a/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/a/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/a/b$a;->c:Lcom/callerid/block/a/b;

    invoke-direct {p0, p2}, Lcom/callerid/block/a/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/a/b$a;->c:Lcom/callerid/block/a/b;

    invoke-static {v0}, Lcom/callerid/block/a/b;->a(Lcom/callerid/block/a/b;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/a/b$a;->c:Lcom/callerid/block/a/b;

    invoke-static {v0}, Lcom/callerid/block/a/b;->a(Lcom/callerid/block/a/b;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/callerid/block/a/c;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/a/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/callerid/block/a/a;->d()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/callerid/block/a/a;->c()I

    move-result v1

    const/16 v2, 0x3ca

    const-string v3, "wbb"

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/callerid/block/a/a;->e(Z)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "\u5904\u7406970\u4efb\u52a1"

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/a/b$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/a/b$a$a;-><init>(Lcom/callerid/block/a/b$a;)V

    invoke-static {v0, v4, v1}, Lcom/callerid/block/k/a/e;->h(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/callerid/block/a/a;->c()I

    move-result v1

    const/16 v2, 0x2ce

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Lcom/callerid/block/a/a;->e(Z)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "\u5904\u7406718\u4efb\u52a1"

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/callerid/block/a/b$a$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/a/b$a$b;-><init>(Lcom/callerid/block/a/b$a;)V

    invoke-static {v0}, Lcom/callerid/block/k/a/e;->j(Lcom/callerid/block/k/a/b;)V

    :cond_4
    :goto_0
    return-void
.end method
