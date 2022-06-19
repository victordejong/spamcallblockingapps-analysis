.class Lcom/callerid/block/fragment/b$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/mvc/model/sms/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b;->d2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    iput-boolean p2, p0, Lcom/callerid/block/fragment/b$h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->H1(Lcom/callerid/block/fragment/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->H1(Lcom/callerid/block/fragment/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->H1(Lcom/callerid/block/fragment/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/b/k;->i(Ljava/util/List;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lcom/callerid/block/fragment/b$h;->a:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->F1(Lcom/callerid/block/fragment/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/b$h;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v1}, Lcom/callerid/block/fragment/b;->H1(Lcom/callerid/block/fragment/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/callerid/block/fragment/b;->M1(Lcom/callerid/block/fragment/b;Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method
