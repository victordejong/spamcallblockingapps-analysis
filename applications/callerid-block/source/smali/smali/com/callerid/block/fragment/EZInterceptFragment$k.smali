.class Lcom/callerid/block/fragment/EZInterceptFragment$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    const v0, 0x7f100188

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callerid/block/fragment/EZInterceptFragment;->t2(Landroid/app/Activity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/callerid/block/util/n0;->o0(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZInterceptFragment;->b2(Lcom/callerid/block/fragment/EZInterceptFragment;Z)Z

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZInterceptFragment;->c2(Lcom/callerid/block/fragment/EZInterceptFragment;I)I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    const v0, 0x7f10017d

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/util/n0;->o0(I)V

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->a2(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$k;->c:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
