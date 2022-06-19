.class public Lcarbon/widget/Banner;
.super Lcarbon/widget/LinearLayout;
.source ""


# instance fields
.field public final S:Lcarbon/widget/LinearLayout;

.field public final T:Landroid/view/View;

.field public U:Z

.field public final V:Lcarbon/widget/ImageView;

.field public final W:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lm80;->carbon_banner:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/Banner;->U:Z

    sget p1, Ll80;->carbon_banner_buttons:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_banner_buttons)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/LinearLayout;

    iput-object p1, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    sget p1, Ll80;->carbon_banner_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_banner_content)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcarbon/widget/Banner;->T:Landroid/view/View;

    sget p1, Ll80;->carbon_bannerIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_bannerIcon)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/ImageView;

    iput-object p1, p0, Lcarbon/widget/Banner;->V:Lcarbon/widget/ImageView;

    sget p1, Ll80;->carbon_bannerText:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_bannerText)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/TextView;

    iput-object p1, p0, Lcarbon/widget/Banner;->W:Lcarbon/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lm80;->carbon_banner:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/Banner;->U:Z

    sget p1, Ll80;->carbon_banner_buttons:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_banner_buttons)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/LinearLayout;

    iput-object p1, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    sget p1, Ll80;->carbon_banner_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_banner_content)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcarbon/widget/Banner;->T:Landroid/view/View;

    sget p1, Ll80;->carbon_bannerIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_bannerIcon)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/ImageView;

    iput-object p1, p0, Lcarbon/widget/Banner;->V:Lcarbon/widget/ImageView;

    sget p1, Ll80;->carbon_bannerText:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.carbon_bannerText)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/TextView;

    iput-object p1, p0, Lcarbon/widget/Banner;->W:Lcarbon/widget/TextView;

    invoke-virtual {p0, p2}, Lcarbon/widget/Banner;->s(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lm80;->carbon_banner:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/Banner;->U:Z

    sget p1, Ll80;->carbon_banner_buttons:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.carbon_banner_buttons)"

    invoke-static {p1, p3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/LinearLayout;

    iput-object p1, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    sget p1, Ll80;->carbon_banner_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.carbon_banner_content)"

    invoke-static {p1, p3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcarbon/widget/Banner;->T:Landroid/view/View;

    sget p1, Ll80;->carbon_bannerIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.carbon_bannerIcon)"

    invoke-static {p1, p3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/ImageView;

    iput-object p1, p0, Lcarbon/widget/Banner;->V:Lcarbon/widget/ImageView;

    sget p1, Ll80;->carbon_bannerText:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.carbon_bannerText)"

    invoke-static {p1, p3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcarbon/widget/TextView;

    iput-object p1, p0, Lcarbon/widget/Banner;->W:Lcarbon/widget/TextView;

    invoke-virtual {p0, p2}, Lcarbon/widget/Banner;->s(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/Banner;->V:Lcarbon/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcarbon/widget/Banner;->V:Lcarbon/widget/ImageView;

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/Banner;->W:Lcarbon/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iget-boolean v0, p0, Lcarbon/widget/Banner;->U:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of p3, p1, Landroid/widget/Button;

    if-eqz p3, :cond_3

    new-instance p3, Lcarbon/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Lcarbon/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_2
    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcarbon/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/Banner;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-super {p0, p1, p2}, Lcarbon/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/Banner;->S:Lcarbon/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-super {p0, p1, p2}, Lcarbon/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public final s(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->Banner:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lp80;->Banner_carbon_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcarbon/widget/Banner;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lp80;->Banner_android_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcarbon/widget/Banner;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
