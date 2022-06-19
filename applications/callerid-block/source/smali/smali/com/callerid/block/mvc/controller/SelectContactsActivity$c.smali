.class Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SelectContactsActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->T(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wbb"

    invoke-static {p2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->T(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    const-class v1, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SmsNumber"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->T(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    const/high16 p2, 0x7f010000

    const p3, 0x7f010001

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$c;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
