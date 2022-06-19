.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;
.super Lmc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public l:Landroid/view/LayoutInflater;

.field public final synthetic m:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;->m:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

    invoke-direct {p0, p2, p3, p4}, Lmc;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;->l:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic k(Landroid/view/View;Lk81;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a$a;

    invoke-direct {p3, p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;Lk81;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1}, Lmc;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    new-instance p2, Lk81;

    invoke-direct {p2}, Lk81;-><init>()V

    invoke-virtual {p2, p3}, Lk81;->F(Landroid/database/Cursor;)Lk81;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    const p3, 0x7f0a0099

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a009a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lk81;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, Lk81;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lr01;

    invoke-direct {v0, p0, p1, p2}, Lr01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;Landroid/view/View;Lk81;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;->l:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0029

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Landroid/view/View;Lk81;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;->k(Landroid/view/View;Lk81;Landroid/view/View;)V

    return-void
.end method
