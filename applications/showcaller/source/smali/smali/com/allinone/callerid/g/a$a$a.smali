.class Lcom/allinone/callerid/g/a$a$a;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a$a;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/g/a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iput p2, p0, Lcom/allinone/callerid/g/a$a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "comment_report_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/g/a$a$a;->d:I

    iget-object v2, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object v2, v2, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v2}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/allinone/callerid/g/a$a$a;->d:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/CommentContent;->getCid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object v3, v3, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v3}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/allinone/callerid/g/a$a$a;->d:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/CommentContent;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/allinone/callerid/g/a;->n2(Lcom/allinone/callerid/g/a;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->r2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/util/x;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->r2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/util/x;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/g/a$a$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/a$a$a$a;-><init>(Lcom/allinone/callerid/g/a$a$a;)V

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/x;->a(Lcom/allinone/callerid/util/x$a;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1001ae

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
