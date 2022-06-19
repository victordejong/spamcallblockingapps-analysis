.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->p0()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->f0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setClickable(Z)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return p2

    :cond_3
    return p3
.end method
