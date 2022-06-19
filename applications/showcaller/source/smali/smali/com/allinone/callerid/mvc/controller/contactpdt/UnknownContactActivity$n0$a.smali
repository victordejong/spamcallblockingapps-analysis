.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;->b(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->e:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allinone.callerid.RELOAD_DATA"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
