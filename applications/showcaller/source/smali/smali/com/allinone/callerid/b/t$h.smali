.class Lcom/allinone/callerid/b/t$h;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/t;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$h;->e:Lcom/allinone/callerid/b/t;

    iput-object p2, p0, Lcom/allinone/callerid/b/t$h;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "comment_icon_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/b/t$h;->d:Lcom/allinone/callerid/search/CallLogBean;

    const-string v2, "contact_tony"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "is_to_comment"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/b/t$h;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/b/t$h;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/t$h;->e:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->D(Lcom/allinone/callerid/b/t;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/t$h;->e:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->D(Lcom/allinone/callerid/b/t;)Landroid/app/Activity;

    move-result-object p1

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
