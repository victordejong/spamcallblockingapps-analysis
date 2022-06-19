.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;
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

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->F()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->F()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->T(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
