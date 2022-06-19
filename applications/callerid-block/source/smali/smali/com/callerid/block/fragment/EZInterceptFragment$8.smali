.class Lcom/callerid/block/fragment/EZInterceptFragment$8;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->s2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$8;->n:Lcom/callerid/block/fragment/EZInterceptFragment;

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

    :try_start_0
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

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$8;->n:Lcom/callerid/block/fragment/EZInterceptFragment;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/callerid/block/fragment/EZInterceptFragment;->H1(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V
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

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$8;->n:Lcom/callerid/block/fragment/EZInterceptFragment;

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

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$8;->n:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->g2(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100045

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method
