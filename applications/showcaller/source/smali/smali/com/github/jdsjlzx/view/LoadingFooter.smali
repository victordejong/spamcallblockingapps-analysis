.class public Lcom/github/jdsjlzx/view/LoadingFooter;
.super Landroid/widget/RelativeLayout;
.source "LoadingFooter.java"

# interfaces
.implements Lc/b/a/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jdsjlzx/view/LoadingFooter$State;
    }
.end annotation


# instance fields
.field protected d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    .line 3
    sget v0, Lc/b/a/a;->colorAccent:I

    iput v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget-object p2, Lcom/github/jdsjlzx/view/LoadingFooter$State;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    iput-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    .line 7
    sget p2, Lc/b/a/a;->colorAccent:I

    iput p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    sget-object p2, Lcom/github/jdsjlzx/view/LoadingFooter$State;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    iput-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    .line 11
    sget p2, Lc/b/a/a;->colorAccent:I

    iput p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->e(Landroid/content/Context;)V

    return-void
.end method

.method private f(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1
    new-instance p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010077

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lc/b/a/c;->layout_indicator_view:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 4
    iget p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->p:I

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/LoadingFooter;->setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->e:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/LoadingFooter;->setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->f:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/LoadingFooter;->setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/LoadingFooter;->a()V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lc/b/a/c;->layout_recyclerview_list_footer:I

    invoke-static {p1, v0, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/LoadingFooter;->d()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lc/b/a/a;->colorAccent:I

    invoke-static {p1, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->p:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->o:I

    return-void
.end method

.method public getFootView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getState()Lcom/github/jdsjlzx/view/LoadingFooter$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    return-object v0
.end method

.method public setHintTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->p:I

    return-void
.end method

.method public setLoadingHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->l:Ljava/lang/String;

    return-void
.end method

.method public setNoMoreHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->m:Ljava/lang/String;

    return-void
.end method

.method public setNoNetWorkHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->n:Ljava/lang/String;

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->o:I

    return-void
.end method

.method public setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/jdsjlzx/view/LoadingFooter;->setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;Z)V

    return-void
.end method

.method public setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    .line 4
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    if-nez p1, :cond_4

    .line 10
    sget p1, Lc/b/a/b;->network_error_viewstub:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    .line 12
    sget v0, Lc/b/a/b;->network_error_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->k:Landroid/widget/TextView;

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->k:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->n:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lc/b/a/d;->list_footer_network_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->n:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    invoke-static {p2, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 17
    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    if-nez p1, :cond_a

    .line 23
    sget p1, Lc/b/a/b;->end_viewstub:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    .line 25
    sget v0, Lc/b/a/b;->loading_end_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->j:Landroid/widget/TextView;

    goto :goto_2

    .line 26
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_2
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    if-eqz p2, :cond_b

    const/4 v2, 0x0

    :cond_b
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lc/b/a/d;->list_footer_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_c
    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->m:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    invoke-static {p2, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 30
    :cond_d
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_e
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    if-eqz p1, :cond_f

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_f
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    if-nez p1, :cond_10

    .line 36
    sget p1, Lc/b/a/b;->loading_viewstub:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    .line 38
    sget v0, Lc/b/a/b;->loading_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->h:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    .line 39
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    sget v0, Lc/b/a/b;->loading_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->i:Landroid/widget/TextView;

    .line 40
    :cond_10
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    if-eqz p2, :cond_11

    const/4 v2, 0x0

    :cond_11
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->h:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->h:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 43
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->h:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    iget p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->o:I

    invoke-direct {p0, p2}, Lcom/github/jdsjlzx/view/LoadingFooter;->f(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->l:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lc/b/a/d;->list_footer_loading:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_12
    iget-object p2, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->l:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->q:I

    invoke-static {p2, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 46
    :cond_13
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->e:Landroid/view/View;

    if-eqz p1, :cond_14

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_14
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->g:Landroid/view/View;

    if-eqz p1, :cond_15

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_15
    iget-object p1, p0, Lcom/github/jdsjlzx/view/LoadingFooter;->f:Landroid/view/View;

    if-eqz p1, :cond_16

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_5
    return-void
.end method

.method public setViewBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method
