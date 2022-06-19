.class public Lcom/unknownphone/callblocker/tutorial_main/c;
.super Landroidx/fragment/app/Fragment;
.source "MainTutorialPage3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroidx/appcompat/widget/AppCompatButton;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/unknownphone/callblocker/custom/a;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/c;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Landroidx/viewpager/widget/ViewPager;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/c;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_main/c;-><init>()V

    .line 30
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_main/c;->b:Landroidx/viewpager/widget/ViewPager;

    .line 31
    iput-object p1, v0, Lcom/unknownphone/callblocker/tutorial_main/c;->e:Lcom/unknownphone/callblocker/custom/a;

    .line 32
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_main/c;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->g:I

    return v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_main/c;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->f:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f0c0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->a:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->a:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->d:Landroid/widget/RelativeLayout;

    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->a:Landroid/view/View;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 40
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->f:I

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->g:I

    .line 47
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->c:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_main/c$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_main/c$1;-><init>(Lcom/unknownphone/callblocker/tutorial_main/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090074

    if-eq v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->e:Lcom/unknownphone/callblocker/custom/a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/c;->e:Lcom/unknownphone/callblocker/custom/a;

    invoke-interface {v0}, Lcom/unknownphone/callblocker/custom/a;->a()V

    goto :goto_0
.end method
