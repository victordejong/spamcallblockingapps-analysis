.class Lcom/callerid/block/b/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/search/CallLogBean;

.field final synthetic c:Lcom/callerid/block/b/h;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/h;Lcom/callerid/block/search/CallLogBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/h$a;->c:Lcom/callerid/block/b/h;

    iput-object p2, p0, Lcom/callerid/block/b/h$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/callerid/block/b/h$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const-string v2, "contact_tony"

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/b/h$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/b/h$a;->c:Lcom/callerid/block/b/h;

    invoke-static {v2}, Lcom/callerid/block/b/h;->a(Lcom/callerid/block/b/h;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/callerid/block/mvc/controller/ContactActivity;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/b/h$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/b/h$a;->c:Lcom/callerid/block/b/h;

    invoke-static {v2}, Lcom/callerid/block/b/h;->a(Lcom/callerid/block/b/h;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/b/h$a;->c:Lcom/callerid/block/b/h;

    invoke-static {v2}, Lcom/callerid/block/b/h;->a(Lcom/callerid/block/b/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/b/h$a;->c:Lcom/callerid/block/b/h;

    invoke-static {p1}, Lcom/callerid/block/b/h;->a(Lcom/callerid/block/b/h;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
