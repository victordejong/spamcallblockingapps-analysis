.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const-class v2, Lcom/callerid/block/mvc/controller/ReportContactActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_number"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    const-string v1, "format_number"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const/16 v2, 0x171

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const v1, 0x7f010036

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
