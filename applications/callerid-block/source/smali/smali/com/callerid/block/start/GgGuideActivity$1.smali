.class Lcom/callerid/block/start/GgGuideActivity$1;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# instance fields
.field final synthetic n:Lcom/callerid/block/start/GgGuideActivity;


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const/high16 v1, -0x3e380000    # -25.0f

    invoke-static {v0, v1}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/rey/material/app/Dialog;->y(IIII)Lcom/rey/material/app/Dialog;

    const v0, 0x7f090212

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f09039a

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/start/GgGuideActivity$1;->n:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {v2}, Lcom/callerid/block/start/GgGuideActivity;->Q(Lcom/callerid/block/start/GgGuideActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09039b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/start/GgGuideActivity$1;->n:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {v2}, Lcom/callerid/block/start/GgGuideActivity;->Q(Lcom/callerid/block/start/GgGuideActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v1, Lcom/callerid/block/start/GgGuideActivity$1$a;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/start/GgGuideActivity$1$a;-><init>(Lcom/callerid/block/start/GgGuideActivity$1;Lcom/rey/material/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
