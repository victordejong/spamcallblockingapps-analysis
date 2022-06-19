.class public Lcom/unknownphone/callblocker/b/b;
.super Landroidx/fragment/app/Fragment;
.source "UserTypePremiumFragment.java"


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatImageButton;

.field private ae:Landroidx/appcompat/widget/AppCompatTextView;

.field private af:Lcom/unknownphone/callblocker/custom/a;

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:Landroid/view/View;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Lcom/unknownphone/callblocker/custom/a;

.field private e:Lcom/unknownphone/callblocker/custom/a;

.field private f:Landroidx/appcompat/widget/AppCompatTextView;

.field private g:Landroidx/appcompat/widget/AppCompatTextView;

.field private h:Landroidx/appcompat/widget/AppCompatTextView;

.field private i:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/b/b;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/unknownphone/callblocker/b/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/b/b;-><init>()V

    .line 41
    iput-object p0, v0, Lcom/unknownphone/callblocker/b/b;->d:Lcom/unknownphone/callblocker/custom/a;

    .line 42
    iput-object p1, v0, Lcom/unknownphone/callblocker/b/b;->e:Lcom/unknownphone/callblocker/custom/a;

    .line 43
    iput-object p2, v0, Lcom/unknownphone/callblocker/b/b;->af:Lcom/unknownphone/callblocker/custom/a;

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/b/b;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->af:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/b/b;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->e:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/b/b;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->d:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0c0060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 51
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f0901cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f0901ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ag:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ah:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ae:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ai:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/b/b$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/b$1;-><init>(Lcom/unknownphone/callblocker/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001aa

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/b/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001ab

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/b/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001ac

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/b/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001b8

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/b/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ae:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001ad

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/b/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/b/b$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/b$2;-><init>(Lcom/unknownphone/callblocker/b/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ag:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/b/b$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/b$3;-><init>(Lcom/unknownphone/callblocker/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/b;->ah:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/b/b$4;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/b$4;-><init>(Lcom/unknownphone/callblocker/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/unknownphone/callblocker/b/b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/unknownphone/callblocker/b/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
