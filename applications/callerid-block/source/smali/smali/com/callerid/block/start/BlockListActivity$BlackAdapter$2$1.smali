.class Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;->n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

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
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;->n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iput-object p1, v0, Lcom/callerid/block/start/BlockListActivity;->u:Lcom/rey/material/app/Dialog;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;->n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, -0x3e380000    # -25.0f

    invoke-static {v0, v1}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/rey/material/app/Dialog;->y(IIII)Lcom/rey/material/app/Dialog;

    const v0, 0x7f09006c

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/TextView;

    const v1, 0x7f09006b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;->n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;->n:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iget-object v2, v2, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1$a;

    invoke-direct {v2, p0, p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1$a;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;Lcom/rey/material/app/Dialog;)V

    invoke-virtual {v0, v2}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
