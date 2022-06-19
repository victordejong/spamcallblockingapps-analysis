.class public Lcom/callapp/contacts/widget/GdprButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d02fc

    .line 19
    iput v0, p0, Lcom/callapp/contacts/widget/GdprButton;->a:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/widget/GdprButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d02fc

    .line 19
    iput v0, p0, Lcom/callapp/contacts/widget/GdprButton;->a:I

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/GdprButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d02fc

    .line 19
    iput v0, p0, Lcom/callapp/contacts/widget/GdprButton;->a:I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/GdprButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/GdprButton;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a04dd

    .line 65
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/GdprButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/GdprButton;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a0a71

    .line 66
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/GdprButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/GdprButton;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0a70

    .line 67
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/GdprButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/GdprButton;->d:Landroid/widget/TextView;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 56
    sget-object v0, Lcom/callapp/contacts/R$styleable;->GdprButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f0d02fc

    .line 57
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/widget/GdprButton;->a:I

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/GdprButton;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setData(Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/GdprButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getImageDrawableResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 41
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getTitle()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/widget/GdprButton;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getTitle()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getText()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/widget/GdprButton;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getText()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a0aaa

    .line 47
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/GdprButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getOnClickCallback()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getBackgroundDrawable()I

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/GdprButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->getBackgroundDrawable()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method
