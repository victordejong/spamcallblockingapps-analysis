.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroidx/core/widget/NestedScrollView;

.field public o:Landroid/widget/ImageView;

.field public p:Ldu0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    new-instance v0, Ldu0;

    invoke-direct {v0}, Ldu0;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->p:Ldu0;

    return-void
.end method

.method public static K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;
    .locals 3

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public final J(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final L(Ltz0;)V
    .locals 2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f1103ba

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f1103bb

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080243

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f11009a

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f11009b

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080163

    :goto_0
    invoke-static {v0, v1}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f11073b

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f11073c

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->p:Ldu0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltz0;->b:Ltz0;

    invoke-virtual {p1, v0, v1}, Ldu0;->f([Ljava/lang/String;Ltz0;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f110596

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f110598

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->p:Ldu0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltz0;->d:Ltz0;

    invoke-virtual {p1, v0, v1}, Ldu0;->f([Ljava/lang/String;Ltz0;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f110593

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f110594

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->n:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f1101ec

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f1101ed

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->p:Ldu0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltz0;->c:Ltz0;

    invoke-virtual {p1, v0, v1}, Ldu0;->f([Ljava/lang/String;Ltz0;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ltz0;

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a069f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->l:Landroid/widget/TextView;

    const p2, 0x7f0a0682

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->m:Landroid/widget/TextView;

    const p2, 0x7f0a068b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->n:Landroidx/core/widget/NestedScrollView;

    const p2, 0x7f0a053d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0357

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->o:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->p:Ldu0;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->L(Ltz0;)V

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0154

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    return-void
.end method
