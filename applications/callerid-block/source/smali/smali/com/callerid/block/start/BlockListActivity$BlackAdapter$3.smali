.class Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/bean/EZBlackList;

.field final synthetic o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iput-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->n:Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 5

    const-string v0, "-"

    const-string v1, ""

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/b;->G1()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f090103

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->n:Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callerid/block/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->n:Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callerid/block/bean/EZBlackList;->setFormat_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->n:Lcom/callerid/block/bean/EZBlackList;

    new-instance v1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3$a;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/c/b;->e(Lcom/callerid/block/bean/EZBlackList;Lcom/callerid/block/h/a/a;)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-static {v0}, Lcom/callerid/block/start/BlockListActivity;->T(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {v0}, Lcom/callerid/block/start/BlockListActivity;->U()V

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object p1, p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iput-object p1, v0, Lcom/callerid/block/start/BlockListActivity;->u:Lcom/rey/material/app/Dialog;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/DeletableEditText;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->o:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100045

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;->n:Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
