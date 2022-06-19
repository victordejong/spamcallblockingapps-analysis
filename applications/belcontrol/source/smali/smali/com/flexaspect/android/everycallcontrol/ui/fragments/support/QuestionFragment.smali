.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lj31;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Ltu0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->l:I

    return-void
.end method

.method public static synthetic K(Llq0;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private synthetic L(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ltu0;

    sget-object v1, Lc31;->a:Lc31;

    invoke-direct {v0, p1, v1}, Ltu0;-><init>(Ljava/util/List;Lst0;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->n:Ltu0;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->n:Ltu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lj31;

    iget-object v0, v0, Lj31;->g:Lve;

    new-instance v1, Ld31;

    invoke-direct {v1, p0}, Ld31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    const-string v0, "Question"

    return-object v0
.end method

.method public synthetic M(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->L(Ljava/util/List;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->l:I

    :cond_0
    const p2, 0x7f0a069f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->J()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, Lj31;

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->l:I

    invoke-virtual {p2, v0}, Lj31;->m(I)V

    const p2, 0x7f0a053b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public v(Lsb1;)V
    .locals 0

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0156

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lj31;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
