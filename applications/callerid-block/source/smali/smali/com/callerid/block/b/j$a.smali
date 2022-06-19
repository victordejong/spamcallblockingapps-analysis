.class Lcom/callerid/block/b/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/callerid/block/bean/MessageBean;

.field final synthetic d:Lcom/callerid/block/b/j;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/j;ILcom/callerid/block/bean/MessageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    iput p2, p0, Lcom/callerid/block/b/j$a;->b:I

    iput-object p3, p0, Lcom/callerid/block/b/j$a;->c:Lcom/callerid/block/bean/MessageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity;->x0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object v0

    iput-boolean v1, v0, Lcom/callerid/block/sms/MessageBoxListActivity;->x0:Z

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->b(Lcom/callerid/block/b/j;)Lcom/callerid/block/b/j$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->b(Lcom/callerid/block/b/j;)Lcom/callerid/block/b/j$h;

    move-result-object v0

    iget v2, p0, Lcom/callerid/block/b/j$a;->b:I

    invoke-interface {v0, p1, v2}, Lcom/callerid/block/b/j$h;->a(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/b/j$a;->c:Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setSelect(Z)V

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callerid/block/b/j$a;->c:Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->c(Lcom/callerid/block/b/j;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {p1}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->j1()V

    iget-object p1, p0, Lcom/callerid/block/b/j$a;->d:Lcom/callerid/block/b/j;

    invoke-static {p1}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->b1()V

    :cond_1
    return v1
.end method
