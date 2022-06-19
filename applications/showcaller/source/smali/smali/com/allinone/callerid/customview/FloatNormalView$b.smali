.class Lcom/allinone/callerid/customview/FloatNormalView$b;
.super Ljava/lang/Object;
.source "FloatNormalView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/FloatNormalView;->s(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/FloatNormalView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/FloatNormalView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$b;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->b()[Landroid/widget/ImageView;

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->b()[Landroid/widget/ImageView;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->b()[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v1

    const v3, 0x7f0801ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->b()[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v1

    const v3, 0x7f0801e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->g()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/customview/FloatNormalView$b;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v1}, Lcom/allinone/callerid/customview/FloatNormalView;->f(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 7
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->g()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/customview/FloatNormalView$b;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v1}, Lcom/allinone/callerid/customview/FloatNormalView;->f(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 8
    invoke-static {}, Lcom/allinone/callerid/customview/FloatNormalView;->g()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView$b;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v0}, Lcom/allinone/callerid/customview/FloatNormalView;->f(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
