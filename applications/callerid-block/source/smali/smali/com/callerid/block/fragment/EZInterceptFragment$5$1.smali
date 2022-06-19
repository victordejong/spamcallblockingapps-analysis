.class Lcom/callerid/block/fragment/EZInterceptFragment$5$1;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/bean/EZSimpleContact;

.field final synthetic o:Lcom/callerid/block/fragment/EZInterceptFragment$5;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment$5;ILcom/callerid/block/bean/EZSimpleContact;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->o:Lcom/callerid/block/fragment/EZInterceptFragment$5;

    iput-object p3, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->n:Lcom/callerid/block/bean/EZSimpleContact;

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
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->G1()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->G1()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->o:Lcom/callerid/block/fragment/EZInterceptFragment$5;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZInterceptFragment$5;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/callerid/block/fragment/EZInterceptFragment;->H1(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    :cond_0
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->o:Lcom/callerid/block/fragment/EZInterceptFragment$5;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$5;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->e2(Lcom/callerid/block/fragment/EZInterceptFragment;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;

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

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->o:Lcom/callerid/block/fragment/EZInterceptFragment$5;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZInterceptFragment$5;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->g2(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$5$1;->n:Lcom/callerid/block/bean/EZSimpleContact;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSimpleContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
