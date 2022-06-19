.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/search/CallLogBean;

.field final synthetic c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;Lcom/callerid/block/search/CallLogBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->b:Lcom/callerid/block/search/CallLogBean;

    const-string v2, "contact_tony"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    const-class v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
