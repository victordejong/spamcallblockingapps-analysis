.class Lcom/allinone/callerid/g/a$a$a$a;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Lcom/allinone/callerid/util/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a$a$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a$a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    iget v1, v1, Lcom/allinone/callerid/g/a$a$a;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/CommentContent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v1, Lcom/allinone/callerid/util/g1;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1001ae

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v1, -0x1e

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1001b2

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/a$a$a$a;->a:Lcom/allinone/callerid/g/a$a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a$a;->e:Lcom/allinone/callerid/g/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1002a1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
