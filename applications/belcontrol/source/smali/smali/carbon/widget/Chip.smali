.class public Lcarbon/widget/Chip;
.super Lcarbon/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/Chip$a;
    }
.end annotation


# instance fields
.field public S:Lcarbon/widget/ImageView;

.field public T:Lcarbon/widget/TextView;

.field public U:Lcarbon/widget/ImageView;

.field public V:Lcarbon/widget/Chip$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lh80;->carbon_chipStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/Chip;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lh80;->carbon_chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, v0}, Lcarbon/widget/Chip;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/Chip;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcarbon/widget/Chip;->V:Lcarbon/widget/Chip$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcarbon/widget/Chip$a;->onDismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    return-object v0
.end method

.method public final s(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_chip:I

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Ll80;->carbon_chipText:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    sget v0, Ll80;->carbon_chipIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    sget v0, Ll80;->carbon_chipClose:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/Chip;->U:Lcarbon/widget/ImageView;

    new-instance v1, Lye0;

    invoke-direct {v1, p0}, Lye0;-><init>(Lcarbon/widget/Chip;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->Chip:[I

    sget v2, Lo80;->carbon_Chip:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->Chip_carbon_cornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/LinearLayout;->setCornerRadius(F)V

    sget p2, Lp80;->Chip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/Chip;->setText(Ljava/lang/String;)V

    sget p2, Lp80;->Chip_carbon_icon:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcarbon/widget/Chip;->setIcon(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcarbon/widget/Chip;->setIconVisible(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcarbon/widget/Chip;->setIconVisible(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcarbon/widget/Chip;->setIconVisible(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcarbon/widget/Chip;->setIconVisible(Z)V

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/Chip;->S:Lcarbon/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lj80;->carbon_chipPadding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setOnRemoveListener(Lcarbon/widget/Chip$a;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/Chip;->V:Lcarbon/widget/Chip$a;

    return-void
.end method

.method public setRemovable(Z)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/Chip;->U:Lcarbon/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lj80;->carbon_chipPadding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/Chip;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcarbon/widget/Chip;->T:Lcarbon/widget/TextView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/Chip;->t(Landroid/view/View;)V

    return-void
.end method
