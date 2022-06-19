.class Lcom/callerid/block/fragment/EZInterceptFragment$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->r2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->d2(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    iget-object p1, p1, Lcom/callerid/block/fragment/EZInterceptFragment;->Y:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$6$1;

    const p3, 0x7f110159

    invoke-direct {p2, p0, p3, p1}, Lcom/callerid/block/fragment/EZInterceptFragment$6$1;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$6;ILcom/callerid/block/search/CallLogBean;)V

    const p1, 0x7f0c00d4

    invoke-virtual {p2, p1}, Lcom/rey/material/app/Dialog$Builder;->f(I)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100192

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100075

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100023

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {p2}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$6;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/j;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/b;->J1(Landroidx/fragment/app/j;Ljava/lang/String;)V

    return-void
.end method
