.class Lcom/callerid/block/fragment/EZCallLogFragment$15$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment$15;->d(Lcom/rey/material/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZCallLogFragment$15;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment$15;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->X1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->W1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->u2()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->g2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment$15;

    iget-object v1, v1, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
