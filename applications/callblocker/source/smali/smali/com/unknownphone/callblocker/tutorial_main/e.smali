.class public Lcom/unknownphone/callblocker/tutorial_main/e;
.super Landroidx/fragment/app/Fragment;
.source "MainTutorialPage5Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private ae:I

.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Landroidx/appcompat/widget/AppCompatButton;

.field private f:Lcom/unknownphone/callblocker/custom/a;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/e;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_main/e;-><init>()V

    .line 36
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_main/e;->f:Lcom/unknownphone/callblocker/custom/a;

    .line 37
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_main/e;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->ae:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 92
    invoke-static {p1}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100250

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f1001c9

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10024f

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f10024a

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_main/e;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->i:I

    return v0
.end method


# virtual methods
.method public I()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->I()V

    .line 88
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/tutorial_main/e;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/tutorial_main/e;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/tutorial_main/e;->b(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    const v0, 0x7f0c0059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    const v0, 0x7f090166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->a:Landroid/widget/RelativeLayout;

    .line 44
    const v0, 0x7f0901c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    const v0, 0x7f0901c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    const v0, 0x7f0901c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    const v0, 0x7f090174

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->g:Landroid/view/View;

    .line 48
    const v0, 0x7f090175

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->h:Landroid/view/View;

    .line 49
    const v0, 0x7f090074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    .line 50
    return-object v1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->i:I

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->ae:I

    .line 57
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10024b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_main/e$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_main/e$1;-><init>(Lcom/unknownphone/callblocker/tutorial_main/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090074

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->f:Lcom/unknownphone/callblocker/custom/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e;->f:Lcom/unknownphone/callblocker/custom/a;

    invoke-interface {v0}, Lcom/unknownphone/callblocker/custom/a;->a()V

    .line 83
    :cond_0
    return-void
.end method
