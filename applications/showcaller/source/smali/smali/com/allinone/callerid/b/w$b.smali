.class Lcom/allinone/callerid/b/w$b;
.super Ljava/lang/Object;
.source "SpamCallsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/w;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/w;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/w$b;->e:Lcom/allinone/callerid/b/w;

    iput-object p2, p0, Lcom/allinone/callerid/b/w$b;->d:Lcom/allinone/callerid/search/CallLogBean;

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
    iget-object v1, p0, Lcom/allinone/callerid/b/w$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    const-string v2, "contact_tony"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/b/w$b;->e:Lcom/allinone/callerid/b/w;

    invoke-static {v0}, Lcom/allinone/callerid/b/w;->a(Lcom/allinone/callerid/b/w;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/b/w$b;->e:Lcom/allinone/callerid/b/w;

    invoke-static {v0}, Lcom/allinone/callerid/b/w;->a(Lcom/allinone/callerid/b/w;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
