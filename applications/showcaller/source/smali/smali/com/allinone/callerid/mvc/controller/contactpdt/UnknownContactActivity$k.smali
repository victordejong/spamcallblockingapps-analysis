.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/RadioButton;

.field final synthetic e:Landroid/widget/RadioButton;

.field final synthetic f:Landroid/widget/RadioButton;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->d:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->e:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->f:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "name"

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "wrong_info_name"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "spam"

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "wrong_info_spam"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "other"

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "wrong_info_location"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;->h:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000e9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
