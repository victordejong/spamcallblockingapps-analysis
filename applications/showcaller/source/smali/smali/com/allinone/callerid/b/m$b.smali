.class Lcom/allinone/callerid/b/m$b;
.super Ljava/lang/Object;
.source "EZFavListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/m;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/m;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    iput-object p2, p0, Lcom/allinone/callerid/b/m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const-string v2, "contact_tony"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/b/m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {v2}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {v2}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {p1}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/allinone/callerid/b/m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {v2}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {v2}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/b/m$b;->e:Lcom/allinone/callerid/b/m;

    invoke-static {p1}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
