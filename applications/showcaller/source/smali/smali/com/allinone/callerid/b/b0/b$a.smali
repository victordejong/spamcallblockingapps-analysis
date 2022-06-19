.class Lcom/allinone/callerid/b/b0/b$a;
.super Ljava/lang/Object;
.source "EZSearchResultAdapt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/b0/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/b0/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/b0/b;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/b0/b$a;->e:Lcom/allinone/callerid/b/b0/b;

    iput-object p2, p0, Lcom/allinone/callerid/b/b0/b$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    const-string v2, "contact_tony"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubtype_pdt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/b/b0/b$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "favtest"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b$a;->e:Lcom/allinone/callerid/b/b0/b;

    invoke-static {v0}, Lcom/allinone/callerid/b/b0/b;->a(Lcom/allinone/callerid/b/b0/b;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b$a;->e:Lcom/allinone/callerid/b/b0/b;

    invoke-static {v0}, Lcom/allinone/callerid/b/b0/b;->a(Lcom/allinone/callerid/b/b0/b;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v0, 0x10000000

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b$a;->e:Lcom/allinone/callerid/b/b0/b;

    invoke-static {v0}, Lcom/allinone/callerid/b/b0/b;->a(Lcom/allinone/callerid/b/b0/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/b$a;->e:Lcom/allinone/callerid/b/b0/b;

    invoke-static {p1}, Lcom/allinone/callerid/b/b0/b;->a(Lcom/allinone/callerid/b/b0/b;)Landroid/app/Activity;

    move-result-object p1

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
