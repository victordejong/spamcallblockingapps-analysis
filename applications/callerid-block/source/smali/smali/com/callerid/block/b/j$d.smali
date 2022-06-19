.class Lcom/callerid/block/b/j$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/bean/MessageBean;

.field final synthetic c:Lcom/callerid/block/b/j;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/j;Lcom/callerid/block/bean/MessageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    iput-object p2, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/callerid/block/sms/MessageBoxListActivity;->x0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {v0}, Lcom/callerid/block/bean/MessageBean;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setSelect(Z)V

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {p1}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setSelect(Z)V

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {v0}, Lcom/callerid/block/b/j;->c(Lcom/callerid/block/b/j;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {p1}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callerid/block/b/j$d;->b:Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/b/j$d;->c:Lcom/callerid/block/b/j;

    invoke-static {p1}, Lcom/callerid/block/b/j;->a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->b1()V

    :cond_1
    return-void
.end method
